.class public Lcom/iceteck/silicompressorr/videocompression/MediaController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Ljava/io/File;

.field public static c:Landroid/content/Context;

.field public static volatile d:Lcom/iceteck/silicompressorr/videocompression/MediaController;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iceteck/silicompressorr/videocompression/MediaController;->a:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/iceteck/silicompressorr/videocompression/MediaController;->c:Landroid/content/Context;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/media/MediaExtractor;Lcom/iceteck/silicompressorr/videocompression/MP4Builder;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 9

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/iceteck/silicompressorr/videocompression/MediaController;->c(Landroid/media/MediaExtractor;Z)I

    move-result v1

    if-ltz v1, :cond_5

    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->a(Landroid/media/MediaFormat;Z)I

    move-result v3

    const-string v4, "max-input-size"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move v4, v6

    :cond_0
    :goto_0
    if-nez v4, :cond_4

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v5

    if-ne v5, v1, :cond_3

    invoke-virtual {p0, v2, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    iput v5, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v5, :cond_1

    iput v6, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    :goto_1
    move v5, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    iput-wide v7, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput v6, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v5

    iput v5, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {p1, v3, v2, p2, v0}, Lcom/iceteck/silicompressorr/videocompression/MP4Builder;->g(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->advance()Z

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    const/4 v7, -0x1

    if-ne v5, v7, :cond_2

    goto :goto_1

    :goto_2
    if-eqz v5, :cond_0

    move v4, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_5
    return-void
.end method

.method public static c(Landroid/media/MediaExtractor;Z)I
    .locals 4

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v3, "audio/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_0
    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x5

    return p0
.end method
