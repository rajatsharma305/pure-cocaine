module ConvertSass (sassify) where
--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll

--------------------------------------------------------------------------------
sassify :: Item String -> Compiler (Item String)
sassify item = withItemBody (unixFilter "sass" ["-s", "--scss", "--load-path", "css"]) item
               >>= return . fmap compressCss
