.class public Lcom/linkplay/medialib/LPMSLibraryProtocol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/lpmdpkit/LPStreamServiceProtocol;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createXml(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/bean/LPPlayItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p0, ""

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\" ?><PlayList><ListName>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->getCommonStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</ListName><ListInfo><Radio>0</Radio><Quality>0</Quality>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "<SourceName>"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/linkplay/lpmdpkit/LPPlaySourceType;->LP_LOCALMUSIC:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</SourceName>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "<TrackNumber>"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "</TrackNumber>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "<SearchUrl></SearchUrl></ListInfo><Tracks>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<Track"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "><URL>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getTrackUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</URL><Source>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/linkplay/lpmdpkit/LPPlaySourceType;->LP_LOCALMUSIC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</Source>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getTrackName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v3, p0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://so.ard.iyyin.com/s/song_with_out?q="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &size=50&page=1"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "%20"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<Key>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</Key><Id>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</Id><Metadata>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_1
    invoke-static {v1}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->convert2Xml(Lcom/linkplay/lpmdpkit/bean/LPPlayItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, "</Metadata>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "</Track"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_0
    const-string p0, "</Tracks></PlayList>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getSource()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/linkplay/lpmdpkit/LPPlaySourceType;->LP_LOCALMUSIC:Ljava/lang/String;

    return-object p0
.end method

.method public playXMLForMusicList(Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;
    .locals 7

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getHeader()Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getHeader()Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getHeadTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->getIndex()I

    move-result p1

    new-instance v2, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;

    invoke-direct {v2}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;-><init>()V

    sget-object v3, Lcom/linkplay/lpmdpkit/LPPlaySourceType;->LP_LOCALMUSIC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->setMediaSource(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->setPlayIndex(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x0

    if-gez v3, :cond_0

    move v3, v4

    :cond_0
    const/16 v5, 0x32

    if-ge v3, v5, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    rsub-int/lit8 v3, v3, 0x64

    sub-int v3, p1, v3

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    if-ge p1, v5, :cond_3

    rsub-int/lit8 v3, p1, 0x64

    add-int/2addr v3, p1

    add-int/lit8 v5, v3, 0x2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v5, v3, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_3
    add-int/lit8 v4, p1, -0x32

    add-int/lit8 v5, p1, 0x34

    :cond_4
    :goto_0
    const-string v3, ""

    if-lez p1, :cond_5

    invoke-interface {v1, v4, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/linkplay/medialib/LPMSLibraryProtocol;->createXml(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    move-object v4, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-ge p1, v6, :cond_6

    add-int/lit8 v3, p1, 0x2

    invoke-interface {v1, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/linkplay/medialib/LPMSLibraryProtocol;->createXml(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    add-int/lit8 v5, p1, 0x2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v5, v6, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :cond_7
    invoke-interface {v1, p1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/linkplay/medialib/LPMSLibraryProtocol;->createXml(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->setPlayData(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->setTailData(Ljava/util/List;)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->setHeadData(Ljava/util/List;)V

    invoke-static {v0}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->getCommonStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->setQueueName(Ljava/lang/String;)V

    return-object v2

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method
