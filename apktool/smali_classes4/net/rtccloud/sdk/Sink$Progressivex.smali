.class public Lnet/rtccloud/sdk/Sink$Progressivex;
.super Lnet/rtccloud/sdk/Sink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Progressivex"
.end annotation


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/rtccloud/sdk/Sink;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)V

    return-void
.end method


# virtual methods
.method public push(Landroid/graphics/Bitmap;)Z
    .locals 6

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureBackgroundThread()V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureCanSendMedia()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "[bitmap] must not be recycled"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    mul-int/lit8 v3, p0, 0x4

    const/4 v4, 0x3

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lnet/rtccloud/sdk/Jni;->nDCShareSend([BIIIII)Z

    move-result p0

    return p0

    :cond_2
    const-string p0, "[bitmap] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public stop()V
    .locals 0

    const/4 p0, -0x1

    invoke-static {p0}, Lnet/rtccloud/sdk/Jni;->nDCShareSendStop(I)V

    return-void
.end method

.method public stopDecoder()V
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nDCShareDecoderStop()V

    return-void
.end method
