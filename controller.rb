# This is a wrapper class for local store


class Controller

  attr :status

  def initialize
    #
    #setup_nodewebkit
    # # now trigger the interactive UI

    setup_ui_listener

  end


  # this registers the listeners to ui-elements.
  def setup_ui_listener
    # key events in editor
    puts "listener running"

    if Object.const_defined?('React')
      puts "have react"
      @status = "react active"
      Element['.status'].html = "react is active"
      Element['.react-status-clock'].each {|i|i.render{ Clock()}}
    else
      puts "no react"
      Element['.status'].html = "react not active"
      @status = "react not active"
    end



    $window.on :keydown do |e|
      if (e.meta_key || e.ctrl_key) # Ctrl/Cmd
        case (e.key_code)
          when 'K'.ord #p
            alert "you pressed cmd K"
        end
      end
    end

  end

end


%x{
$( document ).ready(function() {
  console.log( "document ready!" );
   #{Controller.new}
});
}


# Document.ready? do
#   a = Controller.new
# end

