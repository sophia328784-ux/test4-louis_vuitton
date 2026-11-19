.class public Lcom/linkplay/lpmdpkit/utils/ConversionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static playConvert2PlayMeadiaData(Lcom/linkplay/lpmdpkit/bean/LPAccount;Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;Ljava/util/List;I)Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linkplay/lpmdpkit/bean/LPAccount;",
            "Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/bean/LPPlayItem;",
            ">;I)",
            "Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;"
        }
    .end annotation

    new-instance v0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;

    invoke-direct {v0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getMediaSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->setMediaSource(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getSearchUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    if-eqz p2, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x64

    if-gt v6, v7, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v3

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    if-lt v8, p3, :cond_1

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p2, p3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v7, :cond_4

    invoke-interface {v6, v3, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v7, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-interface {p2, v3, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v6, 0x1

    if-ne p2, v6, :cond_7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v6, :cond_8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x2

    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p2, v6, :cond_8

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    new-instance p2, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

    invoke-direct {p2}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;-><init>()V

    invoke-virtual {p2, v4}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->setList(Ljava/util/List;)V

    invoke-virtual {p2, p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->setHeader(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;)V

    invoke-virtual {p2, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->setAccount(Lcom/linkplay/lpmdpkit/bean/LPAccount;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    new-instance v2, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

    invoke-direct {v2}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;-><init>()V

    invoke-virtual {v2, v5}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->setList(Ljava/util/List;)V

    invoke-virtual {v2, p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->setHeader(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;)V

    invoke-virtual {v2, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->setAccount(Lcom/linkplay/lpmdpkit/bean/LPAccount;)V

    invoke-static {v2}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->createXml4SingleSourceQueue(Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->setTailData(Ljava/util/List;)V

    :cond_9
    invoke-static {p2}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->createXml4SingleSourceQueue(Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->setPlayData(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->setPlayIndex(I)V

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getHeadTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->setQueueName(Ljava/lang/String;)V

    :cond_a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    new-instance p2, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;

    invoke-direct {p2}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->setList(Ljava/util/List;)V

    invoke-virtual {p2, p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->setHeader(Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;)V

    invoke-virtual {p2, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;->setAccount(Lcom/linkplay/lpmdpkit/bean/LPAccount;)V

    invoke-static {p2}, Lcom/linkplay/lpmdpkit/utils/LPQueueXmlCreator;->createXml4SingleSourceQueue(Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->setPlayData(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->setPlayIndex(I)V

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->getHeadTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->setQueueName(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0, v3}, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->setAppendCount(I)V

    :cond_c
    return-object v0
.end method
