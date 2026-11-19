.class public Lcom/linkplay/lpmdpkit/bean/LPPlayItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/lpmdpkit/bean/LPPlayItem$ItemStepType;
    }
.end annotation


# instance fields
.field private albumId:Ljava/lang/String;

.field private albumName:Ljava/lang/String;

.field private artistId:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private itemType:I

.field private playCount:I

.field private stepType:I

.field private trackArtist:Ljava/lang/String;

.field private trackDuration:J

.field private trackId:Ljava/lang/String;

.field private trackImage:Ljava/lang/String;

.field private trackName:Ljava/lang/String;

.field private trackSize:I

.field private trackUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->albumId:Ljava/lang/String;

    return-object p0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->albumName:Ljava/lang/String;

    return-object p0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->artistId:Ljava/lang/String;

    return-object p0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->createTime:Ljava/lang/String;

    return-object p0
.end method

.method public getItemType()I
    .locals 0

    iget p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->itemType:I

    return p0
.end method

.method public getPlayCount()I
    .locals 0

    iget p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->playCount:I

    return p0
.end method

.method public getStepType()I
    .locals 0

    iget p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->stepType:I

    return p0
.end method

.method public getTrackArtist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->trackArtist:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->trackDuration:J

    return-wide v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->trackId:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackImage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->trackImage:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->trackName:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackSize()I
    .locals 0

    iget p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->trackSize:I

    return p0
.end method

.method public getTrackUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->trackUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->albumName:Ljava/lang/String;

    return-void
.end method

.method public setArtistId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->artistId:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->itemType:I

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->playCount:I

    return-void
.end method

.method public setStepType(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->stepType:I

    return-void
.end method

.method public setTrackArtist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->trackArtist:Ljava/lang/String;

    return-void
.end method

.method public setTrackDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->trackDuration:J

    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->trackId:Ljava/lang/String;

    return-void
.end method

.method public setTrackImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->trackImage:Ljava/lang/String;

    return-void
.end method

.method public setTrackName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->trackName:Ljava/lang/String;

    return-void
.end method

.method public setTrackSize(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->trackSize:I

    return-void
.end method

.method public setTrackUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPPlayItem;->trackUrl:Ljava/lang/String;

    return-void
.end method
