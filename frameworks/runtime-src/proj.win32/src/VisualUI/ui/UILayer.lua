local UILayer=class("UILayer", function(data, parent)
    local info = GetCurJsonData(data)
    dump(info)
    return cc.Node:create()
end)
cc.exports.UILayer=UILayer

function UILayer:ctor(data, parent)

    CocosGenBaseNodeByData(GetCurJsonData(data), self, true, self)
    -- EventManager:regster(self)
    self:SetNodeAttrib(jsonData, parent)
    -- self:onInited()
end

function UILayer:SetNodeAttrib(data, parent) 
    if not data then
        return
    end

    self:setPositionX(tonumber(data.x) or 100)
    self:setPositionY(tonumber(data.y) or 100)
    -- data.id and (self:setTag(data.id))
    -- data.x and (self:setPositionX(tonumber(data.x)))
    -- data.y and (self:setPositionY(tonumber(data.y)))
--     (!isNull(data.x)) && (node.x = parseFloat(data.x));
--     (!isNull(data.y)) && (node.y = parseFloat(data.y));

    return node
end

function UILayer:eventListener(event)
    dump(event)
end

--     node._name = "";

--     node.uuid = data.uuid || gen_uuid();

--     (data.id) && (node._name = data.id);
--     if(!isNull(data.width) || !isNull(data.height)) {
--         let setFn = node.setPreferredSize ? node.setPreferredSize : node.setContentSize;
--         let width = !isNull(data.width) ? parseFloat(data.width) : node.width;
--         let height = !isNull(data.height) ? parseFloat(data.height) : node.height;
--         setFn.call(node, width, height);
--     }
--     // (!isNull(data.width)) && (node.width = parseFloat(data.width));
--     // (!isNull(data.height)) && (node.height = parseFloat(data.height));
--     (!isNull(data.x)) && (node.x = parseFloat(data.x));
--     (!isNull(data.y)) && (node.y = parseFloat(data.y));

--     (!isNull(data.left)) && (node.x = parseFloat(data.left), node.left = data.left);
--     (!isNull(data.right) && parent) && (node.x = parent.width - parseFloat(data.right), node.right = data.right );

--     (!isNull(data.bottom)) && (node.y = parseFloat(data.bottom), node.bottom = data.bottom );
--     (!isNull(data.top) && parent) && (node.y = parent.height - parseFloat(data.top), node.top = data.top );

--     (!isNull(data.anchorX)) && (node.anchorX = parseFloat(data.anchorX));
--     (!isNull(data.anchorY)) && (node.anchorY = parseFloat(data.anchorY));

--     (!isNull(data.scaleX)) && (node.scaleX = parseFloat(data.scaleX));
--     (!isNull(data.scaleY)) && (node.scaleY = parseFloat(data.scaleY));

--     (!isNull(data.opacity)) && (node.opacity = parseFloat(data.opacity));
--     (!isNull(data.rotation)) && (node.rotation = parseFloat(data.rotation));

--     (!isNull(data.visible)) && node.setVisible(data.visible);

--     (covertToColor(data.color)) && (node.color = covertToColor(data.color));

--     if(data.type == "LabelTTF") {
--         data.string && (node.string = data.string);
--         data.textAlign && (node.textAlign = data.textAlign);
--         data.textAlign && (node.textAlign = data.textAlign);
--         data.verticalAlign && (node.verticalAlign = data.verticalAlign);
--         data.fontSize && (node.fontSize = data.fontSize);
--         data.fontName && (node.fontName = data.fontName);
--         (covertToColor(data.fillStyle)) && (node.fillStyle = covertToColor(data.fillStyle));
--         (covertToColor(data.strokeStyle)) && (node.strokeStyle = covertToColor(data.strokeStyle));
--     } else if(data.type == "Input") {
--         data.string && (node.string = data.string);
--         data.fontSize && (node.fontSize = data.fontSize);
--         data.fontName && (node.fontName = data.fontName);
--         (covertToColor(data.fontColor)) && (node.fontColor = covertToColor(data.fontColor));
--         data.maxLength && (node.maxLength = data.maxLength);
--         data.placeHolder && (node.placeHolder = data.placeHolder);
--         data.placeHolderFontName && (node.placeHolderFontName = data.placeHolderFontName);
--         data.placeHolderFontSize && (node.placeHolderFontSize = data.placeHolderFontSize);
--         (covertToColor(data.placeholderFontColor)) && (node.placeholderFontColor = covertToColor(data.placeholderFontColor));
--         data.inputFlag && (node.inputFlag = data.inputFlag);
--         data.inputMode && (node.inputMode = data.inputMode);
--         data.returnType && (node.returnType = data.returnType);

--         if(data.spriteBg && getFullPathForName(data.spriteBg)) {
--             let fullpath = getFullPathForName(data.spriteBg);
--             node.initWithBackgroundSprite(new cc.Scale9Sprite(fullpath));
--             node._spriteBg = data.spriteBg;
--         }

--     } else if(data.type == "Sprite") {
--         if(data.spriteFrame && getFullPathForName(data.spriteFrame)) {
--             let fullpath = getFullPathForName(data.spriteFrame);
--             node.init(fullpath);
--             node._spriteFrame = data.spriteFrame;
--         }
--         data.blendSrc && (node.setBlendFunc(parseInt(data.blendSrc), node.getBlendFunc().dst));
--         data.blendDst && (node.getBlendFunc().src, node.setBlendFunc(parseInt(data.blendDst)));
--     } else if(data.type == "Scale9") {
--         let size = node.getContentSize();

--         if(data.spriteFrame && getFullPathForName(data.spriteFrame)) {
--             let fullpath = getFullPathForName(data.spriteFrame);
--             node.initWithFile(fullpath);
--             node._spriteFrame = data.spriteFrame;
--         }

--         if(!cc.sizeEqualToSize(size, cc.size(0, 0))) {
--             node.setPreferredSize(size);
--         }

--         data.insetLeft && (node.insetLeft = data.insetLeft);
--         data.insetTop && (node.insetTop = data.insetTop);
--         data.insetRight && (node.insetRight = data.insetRight);
--         data.insetBottom && (node.insetBottom = data.insetBottom);
--     } else if(data.type == "Slider") {
--         (data["percent"]) && (node.percent = data["percent"]);
--         setNodeSpriteFrame("barBg", data["barBg"], node, node.loadBarTexture);
--         setNodeSpriteFrame("barProgress", data["barProgress"], node, node.loadProgressBarTexture);
--         setNodeSpriteFrame("barNormalBall", data["barNormalBall"], node, node.loadSlidBallTextureNormal);
--         setNodeSpriteFrame("barSelectBall", data["barSelectBall"], node, node.loadSlidBallTexturePressed);
--         setNodeSpriteFrame("barDisableBall", data["barDisableBall"], node, node.loadSlidBallTextureDisabled);
--     } else if(data.type == "Button") {
--         (data["percent"]) && (node.percent = data["percent"]);
--         setNodeSpriteFrame("bgNormal", data["bgNormal"], node, node.loadTextureNormal);
--         setNodeSpriteFrame("bgSelect", data["bgSelect"], node, node.loadTexturePressed);
--         setNodeSpriteFrame("bgDisable", data["bgDisable"], node, node.loadTextureDisabled);
        
--         (data["titleText"]) && (node.setTitleText(data["titleText"]));
--         (data["fontName"]) && (node.setTitleFontName(data["fontName"]));
--         (data["fontSize"]) && (node.setTitleFontSize(data["fontSize"]));
--         (data["fontColor"]) && (node.setTitleColor(covertToColor(data["fontColor"])));
--     } else if(node._className == "CheckBox") {
--         setNodeSpriteFrame("back", data["back"], node, node.loadTextureBackGround);
--         setNodeSpriteFrame("backSelect", data["backSelect"], node, node.loadTextureBackGroundSelected);
--         setNodeSpriteFrame("active", data["active"], node, node.loadTextureFrontCross);
--         setNodeSpriteFrame("backDisable", data["backDisable"], node, node.loadTextureBackGroundDisabled);
--         setNodeSpriteFrame("activeDisable", data["activeDisable"], node, node.loadTextureFrontCrossDisabled);

--         (data["select"]) && (node.setSelected(data["select"]));
--         (data["enable"]) && (node.setTouchEnabled(data["enable"]));
--     } else if(node._className == "Layout") {
--         setNodeSpriteFrame("backGroundImageFileName", data["bkImg"], node, node.setBackGroundImage);
--         (data["bkScaleEnable"]) && (node.setBackGroundImageScale9Enabled(data["bkScaleEnable"]));
        
--         (data["bkColorType"]) && (node.setBackGroundColorType(data["bkColorType"]));
--         (covertToColor(data.bkColor)) && (node.setBackGroundColor(covertToColor(data.bkColor)));
--         if(covertToColor(data.bkStartColor) && covertToColor(data.bkEndColor)) {
--             node.setBackGroundColor(covertToColor(data.bkStartColor), covertToColor(data.bkEndColor));
--         }

--         (data["layoutType"]) && (node.setLayoutType(data["layoutType"]));
--         (data["clippingEnabled"]) && (node.setClippingEnabled(data["clippingEnabled"]));
--         (data["clippingType"]) && (node.setClippingType(data["clippingType"]));

--     }

--     data.children = data.children || [];
--     for(var i = 0; i < data.children.length; i++) {
--         let child = cocosGenNodeByData(data.children[i], node);
--         if(node) {
--             node.addChild(child);
--         }
--     } 

--     return node;
-- }

