.class Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/lpmdpkit/utils/LPPresetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultHandlerKeyItem"
.end annotation


# instance fields
.field keyItem:Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

.field keyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;",
            ">;"
        }
    .end annotation
.end field

.field playHeader:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

.field playItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/bean/LPPlayItem;",
            ">;"
        }
    .end annotation
.end field

.field qName:Ljava/lang/String;

.field sbMeta:Ljava/lang/StringBuffer;

.field sbName:Ljava/lang/StringBuffer;

.field sbPicUrl:Ljava/lang/StringBuffer;

.field sbSource:Ljava/lang/StringBuffer;

.field sbUrl:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->keyItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->playItems:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbName:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbUrl:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbPicUrl:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbMeta:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbSource:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->qName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->qName:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->qName:Ljava/lang/String;

    const-string p2, "Key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->qName:Ljava/lang/String;

    const-string p2, "Name"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbName:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->qName:Ljava/lang/String;

    const-string p2, "Url"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbUrl:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_2
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->qName:Ljava/lang/String;

    const-string p2, "Metadata"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbMeta:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_3
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->qName:Ljava/lang/String;

    const-string p2, "PicUrl"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbPicUrl:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_4
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->qName:Ljava/lang/String;

    const-string p2, "Source"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbSource:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_0
    return-void
.end method

.method public endDocument()V
    .locals 0

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->keyItem:Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

    if-eqz p1, :cond_5

    const-string p1, "Key"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->keyItem:Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

    iget-object p2, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->playHeader:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    invoke-virtual {p1, p2}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->setHeader(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;)V

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->keyItems:Ljava/util/List;

    iget-object p2, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->keyItem:Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->keyItem:Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->playHeader:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    return-void

    :cond_0
    const-string p1, "Name"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->playHeader:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbName:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setHeadTitle(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "Url"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->playHeader:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbUrl:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setSearchUrl(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "Metadata"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->playItems:Ljava/util/List;

    iget-object p2, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbMeta:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil;->access$000(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->keyItem:Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->playItems:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->setList(Ljava/util/List;)V

    return-void

    :cond_3
    const-string p1, "PicUrl"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->playHeader:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbPicUrl:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setImageUrl(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p1, "Source"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->playHeader:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbSource:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->setMediaSource(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public getKeyItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->keyItems:Ljava/util/List;

    return-object p0
.end method

.method public startDocument()V
    .locals 0

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iput-object p3, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->qName:Ljava/lang/String;

    if-eqz p3, :cond_5

    const-string p1, "Key"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

    invoke-direct {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;-><init>()V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->keyItem:Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

    new-instance p1, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    invoke-direct {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;-><init>()V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->playHeader:Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    return-void

    :cond_0
    const-string p1, "Name"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbName:Ljava/lang/StringBuffer;

    return-void

    :cond_1
    const-string p1, "Url"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbUrl:Ljava/lang/StringBuffer;

    return-void

    :cond_2
    const-string p1, "Metadata"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbMeta:Ljava/lang/StringBuffer;

    return-void

    :cond_3
    const-string p1, "PicUrl"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbPicUrl:Ljava/lang/StringBuffer;

    return-void

    :cond_4
    const-string p1, "Source"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LPPresetUtil$DefaultHandlerKeyItem;->sbSource:Ljava/lang/StringBuffer;

    :cond_5
    return-void
.end method
