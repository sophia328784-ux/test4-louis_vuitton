.class public Lcom/sightcall/universal/internal/util/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IMAGE_FILE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TMP_DIR:Ljava/lang/String; = "universal/tmp/"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sightcall/universal/internal/util/Utils;->IMAGE_FILE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canMainVideoConsumerGoThumbnail(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/util/Utils;->videoConsumerToFullscreen(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static createCameraTmpFile(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "universal/tmp/"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance p0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sightcall/universal/internal/util/Utils;->IMAGE_FILE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sightcall/universal/internal/util/Utils;->fixTmpFilePermission(Ljava/io/File;)V

    return-object p0
.end method

.method private static fixTmpFilePermission(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    return-void
.end method

.method public static getResizedBitmap(Landroid/graphics/Bitmap;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, p1}, Lcom/sightcall/universal/internal/util/Utils;->getSizeThatFit(Landroid/util/Size;Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getRotationAngleFromExif(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {p1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->e(ILjava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/16 p1, 0x5a

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/16 p1, 0xb4

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const/16 p1, 0x10e

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_3

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static getSizeThatFit(Landroid/util/Size;Landroid/util/Size;)Landroid/util/Size;
    .locals 5

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v0, v0

    int-to-float p0, p0

    div-float v2, v0, p0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    cmpl-float v4, v1, v3

    if-gtz v4, :cond_1

    :cond_0
    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p0

    invoke-static {v1, p1}, Ljava/lang/Float;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p0

    invoke-static {v1, p1}, Ljava/lang/Float;->min(FF)F

    move-result p1

    :goto_0
    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public static isScreenCasting(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z
    .locals 1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ScreenshareModule;->producer()Lnet/rtccloud/sdk/ScreenshareProducer;

    move-result-object p1

    instance-of p1, p1, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object p0, p0, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    sget-object p1, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->SCREEN:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isScreenshare(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/ScreenshareModule;)Z
    .locals 1

    invoke-virtual {p2}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/util/Utils;->isSendingScreencast(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isSendingScreencast(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z
    .locals 0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object p0, p0, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    sget-object p1, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->SCREEN:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static loadBitmapFromFile(Landroid/content/Context;Landroid/net/Uri;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/util/Utils;->getRotationAngleFromExif(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-static {v7, p2}, Lcom/sightcall/universal/internal/util/Utils;->getSizeThatFit(Landroid/util/Size;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    div-int/2addr v4, v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    div-int/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/sightcall/universal/internal/util/Utils;->getResizedBitmap(Landroid/graphics/Bitmap;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eq p2, v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eq p2, p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p2
.end method

.method public static readFileAsByteArray(Ljava/io/File;)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lokio/Okio;->e(Ljava/io/File;)Lokio/Source;

    move-result-object p0

    new-instance v1, Lokio/RealBufferedSource;

    invoke-direct {v1, p0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Lokio/RealBufferedSource;->V0()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v0}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :catch_1
    :goto_1
    invoke-static {v1}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static readFileAsString(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lokio/Okio;->e(Ljava/io/File;)Lokio/Source;

    move-result-object p0

    new-instance v1, Lokio/RealBufferedSource;

    invoke-direct {v1, p0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, v1, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    iget-object v2, v1, Lokio/RealBufferedSource;->b:Lokio/Source;

    invoke-virtual {p0, v2}, Lokio/Buffer;->u0(Lokio/Source;)J

    invoke-virtual {p0}, Lokio/Buffer;->H()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v0}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :catch_1
    :goto_1
    invoke-static {v1}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static requestProgressivexWithOrWithoutVideo(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/internal/view/ProgressivexImageView;)Z
    .locals 2

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p1

    iget-object p2, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p2, v0}, Lcom/sightcall/universal/agent/Usecase;->videoOutWhilePicture(Lcom/sightcall/universal/model/Config;)Z

    move-result p2

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v1, p2, Lcom/sightcall/universal/model/CallParameters;->restartVideoAfterPicture:Z

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->releaseProducer()V

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v1, p0, Lcom/sightcall/universal/model/CallParameters;->videoStopPending:Z

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->stop()V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public static requestScreenshareWithOrWithoutVideo(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z
    .locals 7

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->releaseProducer()V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v1

    iget-object v3, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object v4, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v3, v4}, Lcom/sightcall/universal/agent/Usecase;->videoOutWhilePicture(Lcom/sightcall/universal/model/Config;)Z

    move-result v3

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v4

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v3, :cond_2

    if-eqz v4, :cond_2

    if-nez v5, :cond_1

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v3, Lcom/sightcall/universal/internal/util/DelayedStopVideoRestartShare;

    invoke-direct {v3, p1}, Lcom/sightcall/universal/internal/util/DelayedStopVideoRestartShare;-><init>(Lnet/rtccloud/sdk/Call;)V

    invoke-virtual {v0, v3}, Lnet/rtccloud/sdk/event/EventBus;->register(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v6, p1, Lcom/sightcall/universal/model/CallParameters;->restartVideoAfterPicture:Z

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->releaseProducer()V

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v6, p0, Lcom/sightcall/universal/model/CallParameters;->videoStopPending:Z

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->stop()V

    return v2

    :cond_2
    if-nez v5, :cond_3

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->start()V

    return v2

    :cond_3
    return v6
.end method

.method public static requestUsbCameraIfNeeded(Landroid/content/Context;Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/CallParameters;)V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "USBCamerarequestUsbCameraIfNeeded() called with: context = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstantApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-boolean p1, p2, Lcom/sightcall/universal/model/CallParameters;->allowUsbCamera:Z

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/sightcall/uvc/DeviceManager;->instance(Landroid/content/Context;)Lcom/sightcall/uvc/DeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/uvc/DeviceManager;->getDevice()Lcom/sightcall/uvc/Device;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/sightcall/uvc/Device;->hasPermission()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "USBCamerarequestUsbCameraIfNeeded: requestPermission"

    invoke-virtual {v0, p1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/sightcall/uvc/Device;->requestPermission()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rotateImageIfRequired(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/sightcall/universal/internal/util/Utils;->getRotationAngleFromExif(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p1

    if-lez p1, :cond_0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/util/Utils;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static toastCallReport(Lnet/rtccloud/sdk/event/call/StatusEvent;Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->endReason()Lnet/rtccloud/sdk/Call$EndReason;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->activeDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sightcall/universal/internal/util/Utils$1;->$SwitchMap$net$rtccloud$sdk$Call$EndReason:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    if-eq p0, v1, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    return-void

    :cond_1
    sget p0, Lcom/sightcall/universal/R$string;->universal_call_report_ended_unexpected:I

    invoke-static {p1, v1, p0}, Lcom/sightcall/universal/util/Utils;->safeToast(Landroid/content/Context;II)V

    return-void

    :cond_2
    sget p0, Lcom/sightcall/universal/R$string;->universal_call_report_remotely_ended:I

    invoke-static {p1, v1, p0}, Lcom/sightcall/universal/util/Utils;->safeToast(Landroid/content/Context;II)V

    return-void

    :cond_3
    sget p0, Lcom/sightcall/universal/R$string;->universal_call_report_locally_ended:I

    invoke-static {p1, v1, p0}, Lcom/sightcall/universal/util/Utils;->safeToast(Landroid/content/Context;II)V

    return-void

    :cond_4
    :goto_0
    sget p0, Lcom/sightcall/universal/R$string;->universal_call_report_error:I

    invoke-static {p1, v1, p0}, Lcom/sightcall/universal/util/Utils;->safeToast(Landroid/content/Context;II)V

    return-void
.end method

.method public static videoConsumerToFullscreen(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/sightcall/universal/internal/util/Utils;->isScreenshare(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/ScreenshareModule;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->isReceiving()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->isBack()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    :goto_0
    return v0
.end method

.method public static videoProducerToFullscreen(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/sightcall/universal/internal/util/Utils;->isScreenshare(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/ScreenshareModule;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->isReceiving()Z

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->isBack()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2

    :cond_5
    :goto_1
    return v0
.end method
