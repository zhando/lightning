# derived from http://github.com/ryanb/dotfiles/tree/master/bash/completion_scripts/project_completion
#This class handles completions given a path key and the text already typed.
class Lightning
  class Completion
    def self.complete(text_to_complete, path_key)
      new(text_to_complete, path_key).matches
    end
      
    def initialize(text_typed, path_key)
      @text_typed = text_typed
      @path_key = path_key
    end
  
    def matches
      possible_completions.select do |e|
        e[0, typed.length] == typed
      end
    end
  
    def typed
      # @text_typed[/\s(.+?)$/, 1] || ''
      text = @text_typed[/^(\S+)\s+(#{Lightning::TEST_FLAG})?\s*(.+?)$/, 3] || ''
      text.strip
    end
  
    def possible_completions
      Lightning.path_map.completions(@path_key)
    end    
  end
end