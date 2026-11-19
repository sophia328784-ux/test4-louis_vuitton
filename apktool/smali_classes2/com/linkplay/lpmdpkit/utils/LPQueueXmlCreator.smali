.class public Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LPQueueXmlCreator"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static convert2Xml(Ljava/lang/String;Lcom/linkplay/lpmdpkit/bean/LPPlayItem;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->getMetadata(Ljava/lang/String;Lcom/linkplay/lpmdpkit/bean/LPPlayItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createXml4SingleSourceQueue(Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getHeader()Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    move-result-object v1

    invoke-virtual {p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getAccount()Lcom/linkplay/lpmdpkit/bean/LPAccount;

    move-result-object v3

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "<?xml version=\"1.0\" ?>"

    invoke-static {v0, v4}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v4, "<PlayList>"

    invoke-static {v0, v4}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<ListName>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getHeadTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->getCommonStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</ListName>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v4, "<ListInfo>"

    invoke-static {v0, v4}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getMediaType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "STATION-NETWORK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "<Radio>"

    const-string v6, "</Radio>"

    invoke-static {v4, v5, v6}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez v2, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getSearchUrl()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<SourceName>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getMediaSource()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->getCommonStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "</SourceName>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<SearchUrl>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->getCommonStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</SearchUrl>"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v5, "<TrackNumber>"

    const-string v6, "</TrackNumber>"

    invoke-static {v4, v5, v6}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getQuality()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Lcom/linkplay/lpmdpkit/utils/LPMSUtil;->isNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, "<requestQuality>"

    const-string v6, "</requestQuality>"

    invoke-static {v5, v4, v6}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<Quality>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "0"

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getQuality()Ljava/lang/String;

    move-result-object v4

    :goto_2
    const-string v6, "</Quality>"

    invoke-static {v4, v6, v5}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/linkplay/lpmdpkit/bean/LPAccount;->getSource()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Prime"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<Login_username>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/linkplay/lpmdpkit/bean/LPAccount;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->getCommonStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</Login_username>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_6
    const-string v3, "<UpdateTime>0</UpdateTime>"

    invoke-static {v0, v3}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<LastPlayIndex>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</LastPlayIndex>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v3, "<SwitchPageMode>0</SwitchPageMode>"

    invoke-static {v0, v3}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<CurrentPage>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getCurrentPage()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</CurrentPage>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<TotalPages>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getTotalPage()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "</TotalPages>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v1, "</ListInfo>"

    invoke-static {v0, v1}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-static {v0, p0}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->getTracks(Ljava/lang/StringBuffer;Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Ljava/lang/StringBuffer;

    :cond_7
    const-string p0, "</PlayList>"

    invoke-static {v0, p0}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTracks(Ljava/lang/StringBuffer;Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Ljava/lang/StringBuffer;
    .locals 8

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getHeader()Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getCreator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getHeader()Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getMediaSource()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "<Tracks>"

    invoke-static {p0, v2}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<Track"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "<URL>"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getTrackUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->getCommonStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "</URL>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "<Metadata>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    invoke-static {v1, v3}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->convert2Xml(Ljava/lang/String;Lcom/linkplay/lpmdpkit/bean/LPPlayItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v5, "</Metadata>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "<Id>"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</Id>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "<Source>"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->getCommonStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</Source>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "</Track"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "</Tracks>"

    invoke-static {p0, p1}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->appendContextQueue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object p0
.end method
