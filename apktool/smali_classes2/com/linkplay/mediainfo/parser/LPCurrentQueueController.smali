.class public Lcom/linkplay/mediainfo/parser/LPCurrentQueueController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ListRoot:Ljava/lang/String; = "ListRoot"

.field static final ListRootEnd:Ljava/lang/String; = "</ListRoot>"

.field static final ListRootStart:Ljava/lang/String; = "<ListRoot>"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert2CurrentQueueItem(Ljava/lang/String;)Lcom/linkplay/mediainfo/parser/LPSourceCurrentQueueItem;
    .locals 9

    new-instance v0, Lcom/linkplay/mediainfo/parser/LPSourceCurrentQueueItem;

    invoke-direct {v0}, Lcom/linkplay/mediainfo/parser/LPSourceCurrentQueueItem;-><init>()V

    const-string v1, "<PlayList>\r?\n?<ListName>(.*)</ListName>\r?\n?<ListInfo>"

    const/16 v2, 0x28

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->Name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "<LastPlayIndex>(.*)</LastPlayIndex>"

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wiimu/model/cling_callback/playqueue/browsequeue/f;->LastPlayIndex:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "<Track[0-9]+>"

    const-string v3, "<ListRoot>"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "</Track[0-9]+>"

    const-string v3, "</ListRoot>"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "^<Tracks>(.*)</Tracks>$"

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "<Source>qplay"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    :cond_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_2

    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v2, v6

    invoke-static {v8, v3, v7}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    if-eqz p0, :cond_3

    invoke-static {v7}, Lcom/linkplay/mediainfo/parser/LPCurrentQueueController;->parseQplayMetaData(Ljava/lang/String;)Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v8, v0, Lcom/linkplay/mediainfo/parser/LPSourceCurrentQueueItem;->tracksList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    new-instance v8, Lcom/linkplay/mediainfo/parser/LPAlbumHandler;

    invoke-direct {v8, v7}, Lcom/linkplay/mediainfo/parser/LPAlbumHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/linkplay/mediainfo/parser/LPAlbumHandler;->parse()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/linkplay/mediainfo/LPMediaInfo;->getPlayUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    iget-object v8, v0, Lcom/linkplay/mediainfo/parser/LPSourceCurrentQueueItem;->tracksList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public static parseQplayMetaData(Ljava/lang/String;)Lcom/linkplay/mediainfo/LPMediaInfo;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "<Metadata>\r?\n?(.*)\r?\n?</Metadata>\r?\n?"

    const/16 v2, 0x29

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "<Source>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    const-string v3, "</Source>"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/linkplay/mediainfo/LPMediaInfoParser;->convertQplayMeta2AlbumInfo(Ljava/lang/String;)Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTrackSource(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/linkplay/mediainfo/LPMediaInfo;->getPlayUri()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_1

    return-object v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v0
.end method
