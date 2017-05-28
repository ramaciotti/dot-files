module Main (main) where

import qualified Data.Map as M
import           System.IO
import           XMonad
import           XMonad.Hooks.DynamicLog
import           XMonad.Hooks.ManageDocks
import           XMonad.Util.Run (spawnPipe)
import           XMonad.Util.EZConfig (additionalKeysP)

borderWidth'        = 2
normalBorderColor'  = "#222222"
focusedBorderColor' = "#666666"

modMask'    = mod4Mask
terminal'   = "urxvt"

handleEventHook' = docksEventHook <+> handleEventHook defaultConfig

layoutHook' = avoidStruts $ layoutHook defaultConfig

logHook' xmobarProc = dynamicLogWithPP xmobarPP
                      { ppOutput = hPutStrLn xmobarProc
                      , ppCurrent = wrap "[" "]"
                      , ppTitle = shorten 50
                      , ppUrgent = xmobarColor "#cccccc" ""
                      }

manageHook' = manageHook defaultConfig <+> manageDocks

additionalKeys' =
    [ ("M-r", spawn "rofi -show drun")
    ]

main :: IO ()
main = do
  xmobarProc <- spawnPipe "xmobar"
  xmonad $ defaultConfig
    { terminal           = terminal'
    , modMask            = modMask'
    , borderWidth        = borderWidth'
    , normalBorderColor  = normalBorderColor'
    , focusedBorderColor = focusedBorderColor'
    , layoutHook         = layoutHook'
    , manageHook         = manageHook'
    , logHook            = logHook' xmobarProc
    , handleEventHook    = handleEventHook'
    } `additionalKeysP` additionalKeys'
