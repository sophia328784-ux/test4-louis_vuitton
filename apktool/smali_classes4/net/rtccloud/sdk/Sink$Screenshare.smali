.class public Lnet/rtccloud/sdk/Sink$Screenshare;
.super Lnet/rtccloud/sdk/Sink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Screenshare"
.end annotation


# static fields
.field public static final MAX_DIMENSION_HIGH:I = 0x780
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_DIMENSION_LOW:I = 0x438
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_RESOLUTION:I = 0x1fa400


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/rtccloud/sdk/Sink;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)V

    return-void
.end method


# virtual methods
.method public push(Landroid/graphics/Bitmap;)Z
    .locals 3

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureBackgroundThread()V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureCanSendMedia()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_4

    iget-object p0, p0, Lnet/rtccloud/sdk/Sink;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "[Call] is not ready to send screenshare"

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
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {p0, v0, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceShareSize(Lnet/rtccloud/sdk/util/OldLogger;II)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x3

    invoke-static {p1, v1, v1, p0}, Lnet/rtccloud/sdk/Jni;->nSendShareBitmap(Landroid/graphics/Bitmap;III)Z

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

    .line 84
    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureCanSendMedia()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 85
    iget-object p0, p0, Lnet/rtccloud/sdk/Sink;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result p0

    if-nez p0, :cond_1

    .line 86
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "[Call] is not ready to send screenshare"

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

    invoke-static {p0, v0, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceShareSize(Lnet/rtccloud/sdk/util/OldLogger;II)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    .line 90
    :cond_3
    invoke-static {p1, p2, p3, p4}, Lnet/rtccloud/sdk/Jni;->nSendShareBitmap(Landroid/graphics/Bitmap;III)Z

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

    .line 93
    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureCanSendMedia()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    .line 94
    iget-object p0, p0, Lnet/rtccloud/sdk/Sink;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result p0

    if-nez p0, :cond_1

    .line 95
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "[Call] is not ready to send screenshare"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return v1

    .line 96
    :cond_1
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceShareSize(Lnet/rtccloud/sdk/util/OldLogger;II)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    .line 97
    :cond_2
    invoke-static/range {p1 .. p6}, Lnet/rtccloud/sdk/Jni;->nSendShareByteBuffer(Ljava/nio/ByteBuffer;IIIII)Z

    move-result p0

    return p0

    .line 98
    :cond_3
    const-string p0, "[bitmap] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public push([BIIIII)Z
    .locals 2

    .line 99
    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureBackgroundThread()V

    .line 100
    invoke-virtual {p0}, Lnet/rtccloud/sdk/Sink;->ensureCanSendMedia()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    .line 101
    iget-object p0, p0, Lnet/rtccloud/sdk/Sink;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result p0

    if-nez p0, :cond_1

    .line 102
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "[Call] is not ready to send screenshare"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return v1

    .line 103
    :cond_1
    invoke-static {}, Lnet/rtccloud/sdk/Sink;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceShareSize(Lnet/rtccloud/sdk/util/OldLogger;II)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    .line 104
    :cond_2
    invoke-static/range {p1 .. p6}, Lnet/rtccloud/sdk/Jni;->nSendShareByteArray([BIIIII)Z

    move-result p0

    return p0

    .line 105
    :cond_3
    const-string p0, "[bitmap] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method
