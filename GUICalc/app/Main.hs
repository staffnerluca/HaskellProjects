{-# LANGUAGE  OverloadedLabels#-}
{-# LANGUAGE OverloadedStrings #-}
module Main (main) where

import Data.GI.Base
import qualified GI.Gtk as Gtk

main :: IO ()
main = do
  Gtk.init Nothing

  win <- new Gtk.Window [#title := "Introduction"]
  on win #destroy Gtk.mainQuit
  #resize win 640 480

  lbl <- new Gtk.Label [#label := "Hello"]
  #add win lbl
  #showAll win
  Gtk.main
