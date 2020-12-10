#!/usr/bin/osascript

-- ryan mott 
-- forked from bradchoate http://snipplr.com/view/8645/gather-windows/

tell application "Finder"
    -- get desktop dimensions (dw = desktop width; dh = desktop height)
    set db to bounds of window of desktop

    -- min width and height can be less than zero when multiple monitors arranged
    -- such that the primary is not top-left (coordinate origin offset)
    set {minw, minh} to {item 1 of db, item 2 of db}
    set {maxw, maxh} to {item 3 of db, item 4 of db}

    set {dw, dh} to {maxw - minw, maxh - minh}

    -- assuming menu bar 22 pixels tall
    set barheight to 22
    set topbarclear to minh + barheight
end tell
 
tell application "System Events"
    repeat with proc in application processes
        tell proc
            repeat with win in windows
                -- get window dimensions (w = width; h = height)
                set {w, h} to size of win
 
                -- get window postion (l = left of window; t = top of window)
                set {l, t} to position of win
 
                -- nh = new window height; nw = new window width
                set {nh, nw} to {h, w}
 
                -- window width is bigger than desktop size,
                -- so set new window width to match the desktop
                if (w > dw) then ¬
                    set nw to dw
 
                -- window height is bigger than the desktop size (minus menu bar),
                -- so set new window height to be desktop height minus menu height
                if (h > dh - barheight) then ¬
                    set nh to dh - barheight
 
                -- r = right coordinate of window; b = bottom coordinate of window
                set {r, b} to {l + nw, t + nh}
 
                -- nl = new left coordinate; nt = new top coordinate
                set {nl, nt} to {l, t}
 
                -- left coordinate is off screen, so set new left coordinate
                -- to be at the left edge of the desktop
                if (l < minw) then ¬
                    set nl to minw
 
                -- top coordinate is above bottom of menu bar,
                -- so set new top coordinate to clear it
                if (t < topbarclear) then ¬
                    set nt to topbarclear
 
                -- right coordinate extends beyond desktop width,
                -- so set new left coordinate to be desktop width - window width
                -- plus origin offset
                if (r > maxw) then ¬
                    set nl to dw - nw + minw
 
                -- bottom coordinate extends beyond desktop height,
                -- so set new top coordinate to be desktop height - window height
                -- plus origin offset
                if (b > dh) then ¬
                    set nt to dh - nh + minh
 
                -- if we have calculated a new top or left coordinate, reposition window
                if (l ≠ nl or t ≠ nt) then ¬
                    set position of win to {nl, nt}
 
                -- if we have calculated a new height or width, resize window
                if (h ≠ nh or w ≠ nw) then ¬
                    set size of win to {nw, nh}
            end repeat
        end tell
    end repeat
end tell
