
import java.awt.CardLayout;
import java.util.HashMap;
import javax.swing.JFrame;
import javax.swing.JPanel;


/** 
 * Purpose: Main view class that holds all the screens via a JPanel CardLayout.
*/
public class MainView extends JFrame {
    private CardLayout cardLayout;
    private JPanel mainPanel;
    private HashMap<String, JPanel> panels;
    private String curScreenName;
    private static final int WIDTH = 1001;
    private static final int HEIGHT = 657;

    public MainView(String name) {
        super(name);
        this.cardLayout = new CardLayout();
        this.mainPanel = new JPanel(cardLayout);
        this.panels = new HashMap<>();
        this.curScreenName = null;

        //Configures the frame 
        setContentPane(mainPanel);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(WIDTH, HEIGHT);
        setLocationRelativeTo(null);
        setResizable(true);
        requestFocusInWindow();
    }

    public void addScreen(String name, JPanel screen) {
        panels.put(name, screen);
        mainPanel.add(screen, name);
    }

    public void showScreen(String name) {

        cardLayout.show(mainPanel, name);
        curScreenName = name;
        mainPanel.revalidate();
        mainPanel.repaint();
    }

    public JPanel getScreen(String name) {
        return this.panels.getOrDefault(name,null);
    }
}

/** //ignore this hehe
 * JFrame = new JFrame() is the frame
 * frame.setTitle(String) the title on the frame
 * frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE) actually x the application
 * frame.setResizable() if you want to resize or not
 * frame.setSize(x,y) by pixels
 * frame.setVisible(true)
 * 
 * ImageIcon - for the icon on the top left of the frame
 * frame.setIconImage(image.getImage())
 * 
 * frame.getContentPane().setBackground(new Color)
 * 
 * class can extend JFrame
 * 
 * JPanel - a GUI component that functions as a container to hold other components
 * Can also be extended (which means the class is a specific panel or component that can be used in multiple frames)
 * 
 * 
 * 
 * 
 * Idea for the project
 * create JPanel classes that will be instantiated to create the different components per screen
 * Screen classes will be instantiated to represent each screen (will extend from a abstract screen class)
 * 
 * Overall View class will initialize all the screens at the start of the program and will hold a hashMap of them (will be the object in the JavaSQL file)
*/