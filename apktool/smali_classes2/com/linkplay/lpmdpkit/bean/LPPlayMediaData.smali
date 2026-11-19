.class public Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appendCount:I

.field private headData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mediaSource:Ljava/lang/String;

.field private playData:Ljava/lang/String;

.field private playIndex:I

.field private queueName:Ljava/lang/String;

.field private tailData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->queueName:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->playData:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->headData:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->tailData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAppendCount()I
    .locals 0

    iget p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->appendCount:I

    return p0
.end method

.method public getHeadData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->headData:Ljava/util/List;

    return-object p0
.end method

.method public getMediaSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->mediaSource:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->playData:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayIndex()I
    .locals 0

    iget p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->playIndex:I

    return p0
.end method

.method public getQueueName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->queueName:Ljava/lang/String;

    return-object p0
.end method

.method public getTailData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->tailData:Ljava/util/List;

    return-object p0
.end method

.method public setAppendCount(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->appendCount:I

    return-void
.end method

.method public setHeadData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->headData:Ljava/util/List;

    return-void
.end method

.method public setMediaSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->mediaSource:Ljava/lang/String;

    return-void
.end method

.method public setPlayData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->playData:Ljava/lang/String;

    return-void
.end method

.method public setPlayIndex(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->playIndex:I

    return-void
.end method

.method public setQueueName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->queueName:Ljava/lang/String;

    return-void
.end method

.method public setTailData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;->tailData:Ljava/util/List;

    return-void
.end method
