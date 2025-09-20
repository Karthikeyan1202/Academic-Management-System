<?php for($i = 1; $i <= $number_of_options; $i++): ?>
    <div class="form-group options">
		<label class="col-md-12" for="example-text"><?php echo get_phrase('option_').$i;?></label>

        <div class="col-sm-12">
            <div class="input-group">
              <input type="text" class="form-control" name = "options[]" id="option_<?php echo $i; ?>" placeholder="<?php echo get_phrase('option_').$i; ?>" required>
              <div class="input-group-addon"><input type = 'checkbox' name = "correct_answers[]" value = <?php echo $i; ?>></div>
            </div>
        </div>
    </div>
<?php endfor; ?>
