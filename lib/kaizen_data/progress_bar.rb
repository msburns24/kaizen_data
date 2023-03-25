require 'number_format'

module KaizenData::ProgressBar
  def initialize(total_entries)
    @total_entries = total_entries
    @start_time = Time.now
  end

  def print_progress(current_entry)
    @current_entry = current_entry
    @perc_complete = (@current_entry.to_f / @total_entries.to_f) * 100
    print "\r#{progress_bar} #{progress_of_entries} (#{progress_percentage}) | #{progress_time}"
  end

  def progress_bar
    # 20 characters in progress bar
    char_complete = "=" * (@perc_complete / 5).to_i
    char_remain = " " * (20 - char_complete.length)
    return "[#{char_complete}#{char_remain}]"
  end

  def progress_of_entries
    current_entry_formatted = NumberFormat.with_delimiter(@current_entry)
    total_entries_formatted = NumberFormat.with_delimiter(@total_entries)
    current_entry_spaces = total_entries_formatted.length - current_entry_formatted.length
    return "#{current_entry_spaces > 0 ? " " * current_entry_spaces : ""}#{current_entry_formatted}/#{total_entries_formatted}"
  end

  def progress_percentage
    @perc_complete.round(1).to_s + "%"
  end

  def progress_time
    seconds_remaining = Time.now - @start_time
    return (seconds_remaining < 10 ? "Calculating..." : "Time remaining: #{format_time(seconds_remaining)}")
  end

  def format_time(seconds)
    # Format to show either seconds, minutes and seconeds, or hours and minutes.
    if seconds < 60
      return "#{seconds}s"
    elsif seconds < 3600
      mintues = seconds / 60
      seconds = seconds % 60
      return "#{minutes}m #{seconds}s"
    else
      hours = seconds / 3600
      minutes = (seconds % 3600) / 60
      return "#{hours}h #{minutes}m"
    end
  end
end