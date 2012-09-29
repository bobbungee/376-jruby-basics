require "java"

java_import javax.swing.JFrame
java_import javax.swing.JButton
java_import javax.swing.JOptionPane
java_import javax.swing.SwingUtilities

class HelloWorld < JFrame
  def initialize
    super "Example"

    setSize(150, 100)
    setDefaultCloseOperation(JFrame::EXIT_ON_CLOSE)
    setLocationRelativeTo(nil)

    button = JButton.new("Say Hello")
    add(button)

    button.addActionListener do |e|
      JOptionPane.showMessageDialog(nil, "Hello World")
    end

    setVisible(true)
  end
end

SwingUtilities.invokeLater do
  HelloWorld.new
end
