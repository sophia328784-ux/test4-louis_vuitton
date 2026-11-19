.class public Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/lpmdpkit/bean/LPPlayHeader$LPLoopModeType;,
        Lcom/linkplay/lpmdpkit/bean/LPPlayHeader$LPPlayMediaType;,
        Lcom/linkplay/lpmdpkit/bean/LPPlayHeader$LPHeaderType;
    }
.end annotation


# instance fields
.field private creator:Ljava/lang/String;

.field private currentPage:I

.field private describe:Ljava/lang/String;

.field private headId:Ljava/lang/String;

.field private headTitle:Ljava/lang/String;

.field private headType:I

.field private imageUrl:Ljava/lang/String;

.field private loopMode:I

.field private mediaSource:Ljava/lang/String;

.field private mediaType:Ljava/lang/String;

.field private perPage:I

.field private quality:Ljava/lang/String;

.field private searchUrl:Ljava/lang/String;

.field private totalPage:I

.field private totalTracks:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->loopMode:I

    return-void
.end method


# virtual methods
.method public getCreator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->creator:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentPage()I
    .locals 0

    iget p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->currentPage:I

    return p0
.end method

.method public getDescribe()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->describe:Ljava/lang/String;

    return-object p0
.end method

.method public getHeadId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->headId:Ljava/lang/String;

    return-object p0
.end method

.method public getHeadTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->headTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getHeadType()I
    .locals 0

    iget p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->headType:I

    return p0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getLoopMode()I
    .locals 0

    iget p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->loopMode:I

    return p0
.end method

.method public getMediaSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->mediaSource:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->mediaType:Ljava/lang/String;

    return-object p0
.end method

.method public getPerPage()I
    .locals 0

    iget p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->perPage:I

    return p0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->quality:Ljava/lang/String;

    return-object p0
.end method

.method public getSearchUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->searchUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalPage()I
    .locals 0

    iget p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->totalPage:I

    return p0
.end method

.method public getTotalTracks()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->totalTracks:Ljava/lang/String;

    return-object p0
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->creator:Ljava/lang/String;

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->currentPage:I

    return-void
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->describe:Ljava/lang/String;

    return-void
.end method

.method public setHeadId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->headId:Ljava/lang/String;

    return-void
.end method

.method public setHeadTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->headTitle:Ljava/lang/String;

    return-void
.end method

.method public setHeadType(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->headType:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLoopMode(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->loopMode:I

    return-void
.end method

.method public setMediaSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->mediaSource:Ljava/lang/String;

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->mediaType:Ljava/lang/String;

    return-void
.end method

.method public setPerPage(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->perPage:I

    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->quality:Ljava/lang/String;

    return-void
.end method

.method public setSearchUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->searchUrl:Ljava/lang/String;

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->totalPage:I

    return-void
.end method

.method public setTotalTracks(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader;->totalTracks:Ljava/lang/String;

    return-void
.end method
