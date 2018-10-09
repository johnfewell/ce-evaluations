function addEventHandler() {
  $(".js-next").on("click", function(event) {
    let nextId = parseInt($(".js-next").attr("data-id"));
    if (isNaN(nextId)) {
      $(".flash-messages").html(`
        <div class="flash flash-warn">
          <p id="alert">End of Records</p>
        </div>
        `);
    } else {
      $.get("/evaluations/" + nextId + ".json", function(evaluation) {
        $(".flash-messages").empty();
        addEvalToDom(evaluation);
        history.pushState(
          { urlPath: "/evaluations/" + nextId },
          "",
          "/evaluations/" + nextId
        );
        addEventHandler();
      });
      event.preventDefault();
    }
  });
  $(".js-prev").on("click", function(event) {
    let prevId = parseInt($(".js-prev").attr("data-id"));
    if (isNaN(prevId)) {
      $(".flash-messages").html(`
        <div class="flash flash-warn">
          <p id="alert">No Previous Record</p>
        </div>
        `);
    } else {
      $.get("/evaluations/" + prevId + ".json", function(evaluation) {
        $(".flash-messages").empty();
        addEvalToDom(evaluation);
        history.pushState(
          { urlPath: "/evaluations/" + prevId },
          "",
          "/evaluations/" + prevId
        );
        addEventHandler();
      });
    }
    event.preventDefault();
  });

  $(".js-copy").on("click", function(event) {
    let copyId = parseInt($(".js-copy").attr("data-id"));
    console.log(copyId);
    if (isNaN(copyId)) {
      $(".flash-messages").html(`
      <div class="flash flash-warn">
        <p id="alert">It didn't copy!</p>
      </div>
      `);
    } else {
      $.get("/evaluations/" + copyId + "/copy", function(evaluation) {
        $(".flash-messages").empty();
        window.location.href = "/evaluations/" + evaluation.id + "/edit";
      });
    }
    event.preventDefault();
  });

  // $(".js-delete").on("click", function(event) {
    // const deleteId = parseInt($(".js-delete").attr("data-id"));
    // if (isNaN(deleteId)) {
    //   $(".flash-messages").html(`
    //   <div class="flash flash-warn">
    //     <p id="alert">It didn't get deleted</p>
    //   </div>
    //   `);
    // } else {
    //   $.ajax({
    //     url: "/evaluations/" + deleteId,
    //     method: 'DELETE',
    //   })
    //     .done(function() {
    //       $(".flash-messages").empty();
    //     });
    // }
  //   event.preventDefault();
  // });

  $(".ui.modal")
    .modal({
      closable: false,
      onDeny: function() {
        window.alert("Wait not yet!");
        return false;
      },
      onApprove: function() {
        const deleteId = parseInt($(".js-delete").attr("data-id"));
        if (isNaN(deleteId)) {
          $(".flash-messages").html(`
          <div class="flash flash-warn">
            <p id="alert">It didn't get deleted</p>
          </div>
          `);
        } else {
          $.ajax({
            url: "/evaluations/" + deleteId,
            method: 'DELETE',
          })
            .done(function() {
              $(".flash-messages").empty();
            });
        }
      }
    })
    .modal("attach events", ".js-delete", "show");
}

function addEvalToDom(eval) {
  eval.course = eval.course || {};
  eval.next = eval.next || {};
  eval.previous = eval.previous || {};
  let newEval = new Evaluation(
    eval.id,
    eval.name,
    eval.course.title,
    eval.course.start_date,
    eval.questions,
    eval.next.id,
    eval.previous.id
  );
  $("#evaluation-main").html(newEval.renderEval());
}

function Evaluation(
  id,
  name,
  course,
  startDate,
  questions,
  next,
  previous,
  copy
) {
  this.id = id;
  this.name = name;
  this.course = course;
  this.startDate = startDate;
  this.questions = questions;
  this.next = next;
  this.previous = previous;
  this.copy = copy;
}

Evaluation.prototype.renderEval = function() {
  let questionList = this.questions.reduce((questionString, question) => {
    return questionString + `<li>${question.content}</li>`;
  }, "");

  return `
  <div class="ui small basic test modal">
    <div class="ui icon header">
      <i class="trash icon"></i>
      Delete Evaluation?
    </div>
    <div class="content centered">
      <p>You will not be able to undo this</p>
    </div>
    <div class="actions">
      <div class="ui basic cancel inverted button">
        <i class="remove icon"></i>
        Cancel
      </div>
      <div class="ui red ok inverted button">
        <i class="checkmark icon"></i>
        Delete
      </div>
    </div>
  </div>
  <div class="mini ui buttons">
  <button class="ui left labeled icon button js-prev" data-id="${
    this.previous
  }">
  <i class="left arrow icon"></i>
  Previous
  </button>

  <button class="ui right labeled icon button js-next" data-id="${
    this.next
  }">
      <i class="right arrow icon"></i>
      Next
      </button>
</div>
       <div class="d-inline-block mb-1">
         <h2>
            ${this.name}
         </h2>
       </div>
       <div class="f4 text-gray mt-2">
             <span class="mr-3" itemprop="programmingLanguage">
               Class: ${this.course || "Not assigned"}
             </span>
           Date: ${this.startDate || "Not assigned"}
       </div>
       <div class="mt-3"></div>
       <div>
        <h4>Questions</h4>
        <ul id="questions" class="f6 text-gray mt-2 mx-5">
          ${questionList}
        </ul>
       </div>
       <div class="mt-3">

       </div>

    <button class="ui positive basic button js-copy" data-id="${
      this.id
    }">Duplicate</button>

    <button class="ui negative basic button js-delete" data-id="${
      this.id
    }">Delete</button>
       
   `;
};
