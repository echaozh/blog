#!/bin/bash

cat <<EOF
{-# LANGUAGE OverloadedStrings #-}

import Text.Blaze.Html5
import qualified Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes
import qualified Text.Blaze.Html5.Attributes as A
import Text.Blaze.Html.Renderer.Pretty

a' link = a ! href link
divId id_ = H.div ! A.id id_
divClass cl = H.div ! class_ cl

main = putStrLn . renderHtml . docTypeHtml $ do
EOF

sed 's/^/  /' $1
