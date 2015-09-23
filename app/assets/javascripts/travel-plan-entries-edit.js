$(document).ready(function() {
	console.log('travel-entries-edit-page linked');
		var entry = "";
	$('.travel-plan-page-update-button').on('click', function() {
		var entryid = $(this).attr('id');
		var url = '/travel_plan_entries/' + entryid;
		entry = $(this);
		var note = $(this).closest('tr').find('#entry-notes').val();
		var amt = $(this).closest('tr').find('#entry-estimated-amount').val();
		var exp = $(this).closest('tr').find('#entry-actual-expense').val();
		//sending AJAX request to update travel-plan-entries
		$.ajax({
			url: url,
			type: 'patch',
			data: {
				travel_plan_entry: {
					notes: note,
					estimated_amount: amt,
					actual_expense: exp
				}
			}
		//after updating database, parse to browser
		}).done(function(result) {
			entry.find('#entry-notes').val(result.notes);
			entry.find('#entry-estimated-amount').val(result.estimated_amount);
			entry.find('#entry-actual-expense').val(result.actual_expense);
			entry.find('#entry-expense-file').text(result.expense_file);
		})
	})

});