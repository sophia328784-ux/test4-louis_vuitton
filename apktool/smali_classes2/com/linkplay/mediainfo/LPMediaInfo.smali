.class public Lcom/linkplay/mediainfo/LPMediaInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private actualQuality:Ljava/lang/String;

.field private album:Ljava/lang/String;

.field private albumArtURI:Ljava/lang/String;

.field private album_id:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private artist_id:Ljava/lang/String;

.field public atmos:Ljava/lang/String;

.field public behavior:Lcom/linkplay/core/model/GuiBehavior;

.field private bitrate:I

.field public bitrate_s:Ljava/lang/String;

.field public coding_f:Ljava/lang/String;

.field private controlHex:I

.field private creator:Ljava/lang/String;

.field private duration:J

.field public format_s:Ljava/lang/String;

.field public freemium:Ljava/lang/String;

.field public isLive:Ljava/lang/String;

.field private mediaType:Ljava/lang/String;

.field private playUri:Ljava/lang/String;

.field private quality:I

.field public rate_hz:Ljava/lang/String;

.field private singer_id:Ljava/lang/String;

.field private skiplimit:I

.field private song_id:Ljava/lang/String;

.field private subTitle:Ljava/lang/String;

.field private subid:Ljava/lang/String;

.field private tickTime:J

.field private title:Ljava/lang/String;

.field private totalTime:J

.field private trackMetaData:Ljava/lang/String;

.field private trackSource:Ljava/lang/String;

.field private typeDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->creator:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->artist:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->album:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->song_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->album_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->artist_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->singer_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->trackSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->mediaType:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->playUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->albumArtURI:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->bitrate:I

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->subid:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->subTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->typeDescription:Ljava/lang/String;

    iput v1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->quality:I

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->actualQuality:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->trackMetaData:Ljava/lang/String;

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->duration:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->totalTime:J

    iput-wide v2, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->tickTime:J

    iput v1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->skiplimit:I

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->freemium:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->rate_hz:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->format_s:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->bitrate_s:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->coding_f:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->atmos:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->isLive:Ljava/lang/String;

    return-void
.end method

.method private copyMediaInfo(Lcom/linkplay/mediainfo/LPMediaInfo;)V
    .locals 2

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->creator:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->creator:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->artist:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->artist:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->album:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->album:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->title:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->song_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->song_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->album_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->album_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->artist_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->artist_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->singer_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->singer_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->trackSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->trackSource:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->mediaType:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->mediaType:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->playUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->playUri:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->albumArtURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->albumArtURI:Ljava/lang/String;

    iget v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->bitrate:I

    iput v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->bitrate:I

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->subid:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->subid:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->subTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->subTitle:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->typeDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->typeDescription:Ljava/lang/String;

    iget v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->quality:I

    iput v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->quality:I

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->actualQuality:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->actualQuality:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTrackMetaData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->trackMetaData:Ljava/lang/String;

    iget-wide v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->totalTime:J

    iput-wide v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->totalTime:J

    iget-wide v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->duration:J

    iput-wide v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->duration:J

    iget-wide v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->tickTime:J

    iput-wide v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->tickTime:J

    iget v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->skiplimit:I

    iput v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->skiplimit:I

    iget v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->controlHex:I

    iput v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->controlHex:I

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->freemium:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->freemium:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->bitrate_s:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->bitrate_s:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->format_s:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->format_s:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->rate_hz:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->rate_hz:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->atmos:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->atmos:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->coding_f:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->coding_f:Ljava/lang/String;

    iget-object v0, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->behavior:Lcom/linkplay/core/model/GuiBehavior;

    iput-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->behavior:Lcom/linkplay/core/model/GuiBehavior;

    iget-object p1, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->isLive:Ljava/lang/String;

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->isLive:Ljava/lang/String;

    return-void
.end method

.method private parseMetaData(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->trackMetaData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->trackMetaData:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/linkplay/mediainfo/LPMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPLAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->trackMetaData:Ljava/lang/String;

    if-eqz p1, :cond_1

    :try_start_1
    invoke-static {v0}, Lcom/linkplay/mediainfo/LPMediaInfoParser;->convertQplayMeta2AlbumInfo(Ljava/lang/String;)Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/linkplay/mediainfo/LPMediaInfoParser;->convert2MediaInfo(Ljava/lang/String;)Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/linkplay/mediainfo/LPMediaInfo;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->totalTime:J

    invoke-virtual {p1, v2, v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTotalTime(J)V

    iget-wide v2, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->tickTime:J

    invoke-virtual {p1, v2, v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTickTime(J)V

    invoke-virtual {p0}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTrackSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTrackSource(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/linkplay/mediainfo/LPMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/linkplay/mediainfo/LPMediaInfo;->setMediaType(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/linkplay/mediainfo/LPMediaInfo;->copyMediaInfo(Lcom/linkplay/mediainfo/LPMediaInfo;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->tickTime:J

    iput-wide v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->totalTime:J

    :cond_2
    return-void
.end method


# virtual methods
.method public clone()Lcom/linkplay/mediainfo/LPMediaInfo;
    .locals 0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/linkplay/mediainfo/LPMediaInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/linkplay/mediainfo/LPMediaInfo;->clone()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object p0

    return-object p0
.end method

.method public getActualQuality()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->actualQuality:Ljava/lang/String;

    return-object p0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->album:Ljava/lang/String;

    return-object p0
.end method

.method public getAlbumArtURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->albumArtURI:Ljava/lang/String;

    return-object p0
.end method

.method public getAlbum_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->album_id:Ljava/lang/String;

    return-object p0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public getArtist_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->artist_id:Ljava/lang/String;

    return-object p0
.end method

.method public getAtmos()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->atmos:Ljava/lang/String;

    return-object p0
.end method

.method public getBitrate()I
    .locals 0

    iget p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->bitrate:I

    return p0
.end method

.method public getBitrate_s()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->bitrate_s:Ljava/lang/String;

    return-object p0
.end method

.method public getCoding_f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->coding_f:Ljava/lang/String;

    return-object p0
.end method

.method public getControlHex()I
    .locals 0

    iget p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->controlHex:I

    return p0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->creator:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->duration:J

    return-wide v0
.end method

.method public getFormat_s()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->format_s:Ljava/lang/String;

    return-object p0
.end method

.method public getFreemium()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->freemium:Ljava/lang/String;

    return-object p0
.end method

.method public getIsLive()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->isLive:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->mediaType:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->playUri:Ljava/lang/String;

    return-object p0
.end method

.method public getQuality()I
    .locals 0

    iget p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->quality:I

    return p0
.end method

.method public getRate_hz()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->rate_hz:Ljava/lang/String;

    return-object p0
.end method

.method public getSinger_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->singer_id:Ljava/lang/String;

    return-object p0
.end method

.method public getSkiplimit()I
    .locals 0

    iget p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->skiplimit:I

    return p0
.end method

.method public getSong_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->song_id:Ljava/lang/String;

    return-object p0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getSubid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->subid:Ljava/lang/String;

    return-object p0
.end method

.method public getTickTime()J
    .locals 2

    iget-wide v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->tickTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalTime()J
    .locals 2

    iget-wide v0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->totalTime:J

    return-wide v0
.end method

.method public getTrackMetaData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->trackMetaData:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->trackSource:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->typeDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setActualQuality(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->actualQuality:Ljava/lang/String;

    return-void
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->album:Ljava/lang/String;

    return-void
.end method

.method public setAlbumArtURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->albumArtURI:Ljava/lang/String;

    return-void
.end method

.method public setAlbum_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->album_id:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->artist:Ljava/lang/String;

    return-void
.end method

.method public setArtist_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->artist_id:Ljava/lang/String;

    return-void
.end method

.method public setAtmos(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->atmos:Ljava/lang/String;

    return-void
.end method

.method public setBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->bitrate:I

    return-void
.end method

.method public setBitrate_s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->bitrate_s:Ljava/lang/String;

    return-void
.end method

.method public setCoding_f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->coding_f:Ljava/lang/String;

    return-void
.end method

.method public setControlHex(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->controlHex:I

    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->creator:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->duration:J

    return-void
.end method

.method public setFormat_s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->format_s:Ljava/lang/String;

    return-void
.end method

.method public setFreemium(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->freemium:Ljava/lang/String;

    return-void
.end method

.method public setIsLive(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->isLive:Ljava/lang/String;

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->mediaType:Ljava/lang/String;

    return-void
.end method

.method public setPlayUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->playUri:Ljava/lang/String;

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->quality:I

    return-void
.end method

.method public setRate_hz(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->rate_hz:Ljava/lang/String;

    return-void
.end method

.method public setSinger_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->singer_id:Ljava/lang/String;

    return-void
.end method

.method public setSkiplimit(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->skiplimit:I

    return-void
.end method

.method public setSong_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->song_id:Ljava/lang/String;

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setSubid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->subid:Ljava/lang/String;

    return-void
.end method

.method public setTickTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->tickTime:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotalTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->totalTime:J

    return-void
.end method

.method public setTrackMetaData(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/mediainfo/LPMediaInfo;->parseMetaData(Ljava/lang/String;)V

    return-void
.end method

.method public setTrackSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->trackSource:Ljava/lang/String;

    return-void
.end method

.method public setTypeDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/mediainfo/LPMediaInfo;->typeDescription:Ljava/lang/String;

    return-void
.end method
