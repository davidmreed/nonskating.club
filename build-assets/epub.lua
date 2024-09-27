function Div(el)
    -- Discard the internal Div representing the header.
    if el.classes[2] == "header" then
        return {}
    end

    -- Find a Plain with content "Table of Contents"
    -- followed by a BulletList, and drop them both if found.
    local filteredBlocks = {}
    if el.content then
        for i, v in ipairs(el.content) do
            if v.tag == "BulletList" and i > 1 then
                previousTag = el.content[i-1]
                if pandoc.utils.stringify(previousTag.content) == "Table of Contents" then
                    -- Omit the previous tag and this tag
                    table.remove(filteredBlocks)
                else
                    table.insert(filteredBlocks, v)
                end
            else
                table.insert(filteredBlocks, v)
            end
        end

        el.content = filteredBlocks
    end

    return el
end

function Pandoc(el)
    -- Retain only the Div that has the role `main`.
    -- Discard all other top-level elements, which
    -- are HTML-only.

    -- Promote this Div's own contents to top-level
    -- This prevents Pandoc from getting confused
    -- and adding an extra H1 to our doc.
    -- See https://github.com/jgm/pandoc/blob/main/src/Text/Pandoc/Writers/EPUB.hs#L556

    for i, v in ipairs(el.blocks) do
        if v.tag == "Div" and v.attributes["role"] == "main" then
            newEl = el:clone()
            newEl.blocks = v.content
            return newEl
        end
    end

    return el
end
