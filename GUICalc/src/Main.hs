import Control.Monad (void)
import Control.Monad.IO.Class (liftIO)
import GI.Gtk as Gtk

main :: IO ()
main = do
  Gtk.init Nothing
  win <- Gtk.windowNew
  Gtk.setContainerBorderWidth win 10
  Gtk.setWindowResizable False
  Gtk.setWindowDefaultWidth win 300
  Gtk.setWindowDefaultHeight win 500
  Gtk.setWindowWindowPosition win Gtk.WindowPositionCenter
  Gtk.windowSetDecorated win False
  set window [windowTitle := "GTK Haskell Window"]
  Gtk.onWidgetDestroy win Gtk.mainQuit
  #showAll win
  widgetShowAll window
  Gtk.main
