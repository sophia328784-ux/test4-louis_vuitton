.class public final Lnet/rtccloud/sdk/util/CameraUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FOCUS_MODE_OFF:[Ljava/lang/String;

.field private static final FOCUS_MODE_ON:[Ljava/lang/String;

.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->CAMERA:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "continuous-picture"

    const-string v1, "continuous-video"

    const-string v2, "auto"

    const-string v3, "fixed"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/util/CameraUtils;->FOCUS_MODE_ON:[Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/util/CameraUtils;->FOCUS_MODE_OFF:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAutoFocus(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.hardware.camera.autofocus"

    invoke-static {p0, v0}, Lnet/rtccloud/sdk/util/Utils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkCamera(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.hardware.camera"

    invoke-static {p0, v0}, Lnet/rtccloud/sdk/util/Utils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkFlash(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.hardware.camera.flash"

    invoke-static {p0, v0}, Lnet/rtccloud/sdk/util/Utils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkFront(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.hardware.camera.front"

    invoke-static {p0, v0}, Lnet/rtccloud/sdk/util/Utils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static createYuvBuffer(II)[B
    .locals 0

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->createYuvByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static createYuvByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2

    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    const/16 v1, 0x11

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    mul-int/2addr p0, p1

    iget p1, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr p0, p1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static displayRotationToDegree(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0
.end method

.method public static dump(Landroid/hardware/Camera;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p0

    const-string v0, ";"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static extractCameraSource(Lnet/rtccloud/sdk/Call$Parameters;)Lnet/rtccloud/sdk/VideoModule$CameraSource;
    .locals 1

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->getFirstAvailable()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)Lnet/rtccloud/sdk/Call$Parameters;

    :cond_1
    return-object v0
.end method

.method private static findBestPictureSize(Landroid/hardware/Camera$Size;Landroid/util/Size;Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Size;",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v0, v0

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v1, p0

    sget-object p0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result p0

    const/16 v2, 0x20

    const/16 v3, 0x78

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-float v7, v7

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    div-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "%.2f"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v4, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v5, p1, v6, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "findBestPictureSize(%d:%d@%f, [%s])"

    invoke-virtual {v4, p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/4 p1, 0x0

    move v4, p1

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-float v6, v6

    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v6, v0, v6

    if-nez v6, :cond_2

    invoke-virtual {p0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    sget-object p2, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    sget-object v0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "findBestPictureSize() -> candidates: [%s]"

    invoke-virtual {v0, v2, p2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    move v0, p1

    move-object v2, p2

    move-object v3, v2

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    if-lt v5, v1, :cond_8

    if-eqz v2, :cond_7

    if-gt v5, p1, :cond_8

    :cond_7
    move-object v2, v4

    move p1, v5

    :cond_8
    if-eqz v3, :cond_9

    if-le v5, v0, :cond_6

    :cond_9
    move-object v3, v4

    move v0, v5

    goto :goto_3

    :cond_a
    if-nez v2, :cond_b

    move-object v2, v3

    :cond_b
    sget-object p0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "findBestPictureSize() -> "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_c

    goto :goto_4

    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    return-object v2
.end method

.method private static findBestPreviewFps(ILjava/util/List;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[I>;)[I"
        }
    .end annotation

    mul-int/lit16 p0, p0, 0x3e8

    sget-object v0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    aget v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v4, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "findBestPreviewFps(%d, %s)"

    invoke-virtual {v4, v5, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v4, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    aget v6, v5, v2

    if-ne v6, p0, :cond_2

    aget v7, v5, v3

    if-ne v7, p0, :cond_2

    return-object v5

    :cond_2
    if-ne v6, p0, :cond_3

    aget v6, v5, v3

    if-le v6, p0, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    sget-object p0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v5, v4, v2

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x78

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v4, v4, v3

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    sget-object p1, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "findBestPreviewFps() -> candidates: [%s]"

    invoke-virtual {p1, v1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    const v0, 0x7fffffff

    move-object v1, p1

    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v5, v4, v3

    if-ge v5, v0, :cond_7

    move-object v1, v4

    move v0, v5

    goto :goto_3

    :cond_8
    sget-object p0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "findBestPreviewFps() -> "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    return-object v1
.end method

.method private static findBestPreviewSize(IILjava/util/List;)Landroid/hardware/Camera$Size;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    sget-object v0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0x78

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v3, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v4, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "findBestPreviewSize(%d, %d, [%s])"

    invoke-virtual {v3, v4, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    if-ne p0, v5, :cond_2

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    if-eq p1, v6, :cond_3

    :cond_2
    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    if-ne p0, v6, :cond_4

    if-ne p1, v5, :cond_4

    :cond_3
    return-object v4

    :cond_4
    if-eq v5, p0, :cond_5

    if-ne v6, p1, :cond_6

    :cond_5
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    sget-object p2, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    sget-object v1, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "findBestPreviewSize() -> candidates: [%s]"

    invoke-virtual {v1, v2, p2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    mul-int/2addr p0, p1

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x7fffffff

    move-object v1, p2

    :cond_a
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v4

    sub-int v3, p0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v0, :cond_a

    move-object v1, v2

    move v0, v3

    goto :goto_3

    :cond_b
    sget-object p0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "findBestPreviewSize() -> "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_c

    goto :goto_4

    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    return-object v1
.end method

.method private static getDisplayPreviewCorrection(Lnet/rtccloud/sdk/VideoModule$CameraSource;Landroid/view/Display;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-static {p1}, Lnet/rtccloud/sdk/util/CameraUtils;->displayRotationToDegree(I)I

    move-result p1

    iget v0, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->facing:I

    iget p0, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0x168

    rsub-int p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    return p0

    :cond_0
    sub-int/2addr p0, p1

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method private static getEffect(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEffect(Landroid/hardware/Camera;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getEffect(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInternalPreviewCorrection(Lnet/rtccloud/sdk/VideoModule$CameraSource;Landroid/view/Display;)I
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-static {p1}, Lnet/rtccloud/sdk/util/CameraUtils;->displayRotationToDegree(I)I

    move-result p1

    iget v0, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->facing:I

    iget p0, p0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    add-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0x168

    return p0

    :cond_1
    sub-int/2addr p0, p1

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private static getZoom(Landroid/hardware/Camera$Parameters;)F
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result p0

    int-to-float p0, p0

    if-nez v1, :cond_1

    return v0

    :cond_1
    int-to-float v0, v1

    div-float/2addr p0, v0

    return p0
.end method

.method public static getZoom(Landroid/hardware/Camera;)F
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 19
    :cond_0
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getZoom(Landroid/hardware/Camera$Parameters;)F

    move-result p0

    return p0
.end method

.method public static initCamera(Lnet/rtccloud/sdk/Call$Parameters;Landroid/util/Size;Landroid/view/Display;)Landroid/hardware/Camera;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->extractCameraSource(Lnet/rtccloud/sdk/Call$Parameters;)Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v1, v0, Lnet/rtccloud/sdk/VideoModule$CameraSource;->id:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lnet/rtccloud/sdk/util/CameraUtils;->setPreviewOrientation(Landroid/hardware/Camera;Lnet/rtccloud/sdk/VideoModule$CameraSource;Landroid/view/Display;)V

    invoke-static {v1}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile()Lnet/rtccloud/sdk/VideoModule$Profile;

    move-result-object v0

    invoke-static {p2, v0}, Lnet/rtccloud/sdk/util/CameraUtils;->setPreviewProfile(Landroid/hardware/Camera$Parameters;Lnet/rtccloud/sdk/VideoModule$Profile;)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->videoFramerate()I

    move-result v0

    invoke-static {p2, v0}, Lnet/rtccloud/sdk/util/CameraUtils;->setPreviewFps(Landroid/hardware/Camera$Parameters;I)V

    invoke-static {p2, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setPictureProfile(Landroid/hardware/Camera$Parameters;Landroid/util/Size;)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->cameraAutofocus()Z

    move-result p1

    invoke-static {p2, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setAutoFocusEnabled(Landroid/hardware/Camera$Parameters;Z)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->cameraFlash()Z

    move-result p1

    invoke-static {p2, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setFlashEnabled(Landroid/hardware/Camera$Parameters;Z)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->cameraStabilization()Z

    move-result p1

    invoke-static {p2, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setStabilizationEnabled(Landroid/hardware/Camera$Parameters;Z)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->cameraEffect()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setEffect(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->cameraZoom()F

    move-result p0

    invoke-static {p2, p0}, Lnet/rtccloud/sdk/util/CameraUtils;->setZoom(Landroid/hardware/Camera$Parameters;F)V

    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    invoke-virtual {v1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private static isAutoFocusEnabled(Landroid/hardware/Camera$Parameters;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "continuous-video"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAutoFocusEnabled(Landroid/hardware/Camera;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 18
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isAutoFocusEnabled(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isAutofocusAvailable(Landroid/hardware/Camera$Parameters;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->nonNullList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, "continuous-video"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isAutofocusAvailable(Landroid/hardware/Camera;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 19
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isAutofocusAvailable(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isEffectAvailable(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->nonNullList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isEffectAvailable(Landroid/hardware/Camera;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 17
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->isEffectAvailable(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isFlashAvailable(Landroid/hardware/Camera$Parameters;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->nonNullList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, "torch"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFlashAvailable(Landroid/hardware/Camera;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 19
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isFlashAvailable(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isFlashEnabled(Landroid/hardware/Camera$Parameters;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "torch"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFlashEnabled(Landroid/hardware/Camera;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 18
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isFlashEnabled(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isFocusModeAvailable(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->nonNullList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFocusModeAvailable(Landroid/hardware/Camera;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 17
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->isFocusModeAvailable(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isStabilizationAvailable(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isStabilizationAvailable(Landroid/hardware/Camera;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isStabilizationAvailable(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isStabilizationEnabled(Landroid/hardware/Camera$Parameters;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isStabilizationAvailable(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isStabilizationEnabled(Landroid/hardware/Camera;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 18
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isStabilizationEnabled(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isZoomAvailable(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isZoomAvailable(Landroid/hardware/Camera;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isZoomAvailable(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static nonNullList(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method private static setAutoFocusEnabled(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 19
    sget-object p1, Lnet/rtccloud/sdk/util/CameraUtils;->FOCUS_MODE_ON:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/rtccloud/sdk/util/CameraUtils;->FOCUS_MODE_OFF:[Ljava/lang/String;

    :goto_0
    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setFocusMode(Landroid/hardware/Camera$Parameters;[Ljava/lang/String;)V

    return-void
.end method

.method public static setAutoFocusEnabled(Landroid/hardware/Camera;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setAutoFocusEnabled(Landroid/hardware/Camera$Parameters;Z)V

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static setEffect(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->isEffectAvailable(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setEffect(Landroid/hardware/Camera;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setEffect(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static setFlashEnabled(Landroid/hardware/Camera$Parameters;Z)V
    .locals 1

    .line 19
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isFlashAvailable(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 20
    const-string p1, "torch"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setFlashEnabled(Landroid/hardware/Camera;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setFlashEnabled(Landroid/hardware/Camera$Parameters;Z)V

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2

    .line 127
    invoke-static {p0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->isFocusModeAvailable(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "setFocusMode() -> "

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 129
    sget-object p0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    sget-object p0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not available"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static setFocusMode(Landroid/hardware/Camera$Parameters;[Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lnet/rtccloud/sdk/util/CameraUtils;->nonNullList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "supported focus modes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setFocusMode() -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    :cond_1
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    sget-object p0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setFocusMode() <- "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-object p0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string p1, "setFocusMode() <- failed"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static setFocusMode(Landroid/hardware/Camera;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 124
    invoke-static {v0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 125
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static setPictureProfile(Landroid/hardware/Camera$Parameters;Landroid/util/Size;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    :goto_0
    sget-object v0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setPictureProfile([%d,%d])"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lnet/rtccloud/sdk/util/CameraUtils;->findBestPictureSize(Landroid/hardware/Camera$Size;Landroid/util/Size;Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object p1

    if-eqz p1, :cond_2

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, v1, p1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto :goto_1

    :cond_2
    sget-object p1, Lnet/rtccloud/sdk/Call$Parameters;->DEFAULT_VIDEO_PROFILE:Lnet/rtccloud/sdk/VideoModule$Profile;

    iget v1, p1, Lnet/rtccloud/sdk/VideoModule$Profile;->high:I

    iget p1, p1, Lnet/rtccloud/sdk/VideoModule$Profile;->low:I

    invoke-virtual {p0, v1, p1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :goto_1
    const/16 p1, 0x100

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    const-string p1, "jpeg-quality"

    const/16 v1, 0x64

    invoke-virtual {p0, p1, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    iget p1, p0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-float p0, p0

    div-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p1, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "setPictureProfile() -> %dx%d %f"

    invoke-virtual {v0, p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static setPreviewFps(Landroid/hardware/Camera$Parameters;I)V
    .locals 4

    sget-object v0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setPreviewFps(%d)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lnet/rtccloud/sdk/util/CameraUtils;->findBestPreviewFps(ILjava/util/List;)[I

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    aget v3, p1, v2

    aget p1, p1, v1

    invoke-virtual {p0, v3, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    aget p0, p1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "setPreviewFps() -> %d:%d"

    invoke-virtual {v0, p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setPreviewFps(Landroid/hardware/Camera;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 66
    invoke-static {v0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setPreviewFps(Landroid/hardware/Camera$Parameters;I)V

    .line 67
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static setPreviewOrientation(Landroid/hardware/Camera;Lnet/rtccloud/sdk/VideoModule$CameraSource;Landroid/view/Display;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lnet/rtccloud/sdk/util/CameraUtils;->getDisplayPreviewCorrection(Lnet/rtccloud/sdk/VideoModule$CameraSource;Landroid/view/Display;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void
.end method

.method private static setPreviewProfile(Landroid/hardware/Camera$Parameters;Lnet/rtccloud/sdk/VideoModule$Profile;)V
    .locals 4

    sget-object v0, Lnet/rtccloud/sdk/util/CameraUtils;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lnet/rtccloud/sdk/VideoModule$Profile;->high:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lnet/rtccloud/sdk/VideoModule$Profile;->low:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setPreviewProfile(%s: [%d,%d])"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Lnet/rtccloud/sdk/VideoModule$Profile;->high:I

    iget p1, p1, Lnet/rtccloud/sdk/VideoModule$Profile;->low:I

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lnet/rtccloud/sdk/util/CameraUtils;->findBestPreviewSize(IILjava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, v1, p1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto :goto_0

    :cond_1
    sget-object p1, Lnet/rtccloud/sdk/Call$Parameters;->DEFAULT_VIDEO_PROFILE:Lnet/rtccloud/sdk/VideoModule$Profile;

    iget v1, p1, Lnet/rtccloud/sdk/VideoModule$Profile;->high:I

    iget p1, p1, Lnet/rtccloud/sdk/VideoModule$Profile;->low:I

    invoke-virtual {p0, v1, p1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    iget p1, p0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "setPreviewProfile() -> %dx%d"

    invoke-virtual {v0, p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static setStabilizationEnabled(Landroid/hardware/Camera$Parameters;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    :cond_0
    return-void
.end method

.method public static setStabilizationEnabled(Landroid/hardware/Camera;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setStabilizationEnabled(Landroid/hardware/Camera$Parameters;Z)V

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static setZoom(Landroid/hardware/Camera$Parameters;F)V
    .locals 1

    .line 19
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->isZoomAvailable(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    :cond_0
    return-void
.end method

.method public static setZoom(Landroid/hardware/Camera;F)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/rtccloud/sdk/util/CameraUtils;->setZoom(Landroid/hardware/Camera$Parameters;F)V

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
