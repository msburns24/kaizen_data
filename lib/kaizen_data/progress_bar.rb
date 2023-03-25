module KaizenData::ProgressBar
  def initialize(total_entries)
    @total_entries = total_entries
    @start_time = Time.now
    @current_entry = 0
  end

  def print_progress(current_entry)
    @current_entry = current_entry
    @perc_complete = (@current_entry.to_f / @total_entries.to_f) * 100
    
  end
end