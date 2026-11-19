.class public Lnet/rtccloud/sdk/Sink$Video;
.super Lnet/rtccloud/sdk/Sink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation


# static fields
.field public static final MAX_DIMENSION_HIGH:I = 0x500
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_DIMENSION_LOW:I = 0x2d0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_RESOLUTION:I = 0xe1000


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/rtccloud/sdk/Sink;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)V

    return-void
.end method

.method private compressJpeg(Landroid/graphics/Bitmap;)[B
    .locals 4

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const v0, 0x8000

    const/16 v1, 0x50

    move v2, v0

    :goto_0
    const/4 v3, 0x5

    if-le v1, v3, :cond_0

    if-lt v2, v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v2

    const-string v3, "[thumbnail] error compressing jpeg"

    invoke-virtual {v2, v3}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    :goto_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v2, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    add-int/lit8 v1, v1, -0xa

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public push(Landroid/graphics/Bitmap;)Z
    .locals 3

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureBackgroundThread()V

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureCanSendMedia()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/Sink;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "[Call] is not ready to send video"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "[bitmap] must not be recycled"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v2

    invoke-static {v2, p0, v0}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceVideoSize(Lnet/rtccloud/sdk/util/OldLogger;II)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x3

    invoke-static {p1, v1, v1, p0}, Lnet/rtccloud/sdk/Jni;->nSendVideoBitmap(Landroid/graphics/Bitmap;III)Z

    move-result p0

    return p0

    :cond_4
    const-string p0, "[bitmap] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public push(Landroid/graphics/Bitmap;III)Z
    .locals 3

    .line 83
    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureBackgroundThread()V

    if-eqz p1, :cond_4

    .line 84
    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureCanSendMedia()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 85
    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/Sink;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p0

    if-nez p0, :cond_1

    .line 86
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "[Call] is not ready to send video"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return v1

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 88
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "[bitmap] must not be recycled"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return v1

    .line 89
    :cond_2
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {p0, v0, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceVideoSize(Lnet/rtccloud/sdk/util/OldLogger;II)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    .line 90
    :cond_3
    invoke-static {p1, p2, p3, p4}, Lnet/rtccloud/sdk/Jni;->nSendVideoBitmap(Landroid/graphics/Bitmap;III)Z

    move-result p0

    return p0

    .line 91
    :cond_4
    const-string p0, "[bitmap] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public push(Ljava/nio/ByteBuffer;IIIII)Z
    .locals 2

    .line 92
    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureBackgroundThread()V

    if-eqz p1, :cond_5

    .line 93
    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureCanSendMedia()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 94
    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/Sink;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p0

    if-nez p0, :cond_1

    .line 95
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "[Call] is not ready to send video"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return v1

    .line 96
    :cond_1
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceVideoSize(Lnet/rtccloud/sdk/util/OldLogger;II)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    if-ltz p5, :cond_4

    const/16 p0, 0x168

    if-le p5, p0, :cond_3

    goto :goto_0

    .line 97
    :cond_3
    invoke-static/range {p1 .. p6}, Lnet/rtccloud/sdk/Jni;->nSendVideoByteBuffer(Ljava/nio/ByteBuffer;IIIII)Z

    move-result p0

    return p0

    .line 98
    :cond_4
    :goto_0
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[orientation] must be in range [0 - 360] but is [%d]"

    invoke-virtual {p0, p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 99
    :cond_5
    const-string p0, "[data] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public push([BIII)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 108
    invoke-virtual/range {v0 .. v6}, Lnet/rtccloud/sdk/Sink$Video;->push([BIIIII)Z

    move-result p0

    return p0
.end method

.method public push([BIIIII)Z
    .locals 2

    .line 100
    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureBackgroundThread()V

    if-eqz p1, :cond_5

    .line 101
    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureCanSendMedia()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/Sink;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p0

    if-nez p0, :cond_1

    .line 103
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "[Call] is not ready to send video"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return v1

    .line 104
    :cond_1
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceVideoSize(Lnet/rtccloud/sdk/util/OldLogger;II)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    if-ltz p5, :cond_4

    const/16 p0, 0x168

    if-le p5, p0, :cond_3

    goto :goto_0

    .line 105
    :cond_3
    invoke-static/range {p1 .. p6}, Lnet/rtccloud/sdk/Jni;->nSendVideoByteArray([BIIIII)Z

    move-result p0

    return p0

    .line 106
    :cond_4
    :goto_0
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[orientation] must be in range [0 - 360] but is [%d]"

    invoke-virtual {p0, p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 107
    :cond_5
    const-string p0, "[data] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public pushBGR(Landroid/graphics/Bitmap;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Sink$Video;->push(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public pushThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureBackgroundThread()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureCanSendMedia()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Sink;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "[Call] is not ready to send video"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/Sink$Video;->compressJpeg(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    array-length p1, p0

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Lnet/rtccloud/sdk/Jni;->nDCThumbnailSend([BIILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const-string p0, "[bitmap] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method
