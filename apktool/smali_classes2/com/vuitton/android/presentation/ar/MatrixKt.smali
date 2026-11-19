.class public abstract Lcom/vuitton/android/presentation/ar/MatrixKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vuitton/android/presentation/ar/V3;

.field public static final b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Lcom/vuitton/android/presentation/ar/MatrixKt;->k(FFF)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/ar/MatrixKt;->a:Lcom/vuitton/android/presentation/ar/V3;

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vuitton/android/presentation/ar/MatrixKt;->b:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e906ec1
        -0x41593943
        0x3ea6c6bd
        -0x41593943
        0x3e8bd89d
        -0x41742763
        0x3da17b0f
        -0x41742763
        0x3e0bd8be
    .end array-data
.end method

.method public static final a(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)F
    .locals 3

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    const/4 v0, 0x0

    aget v1, p0, v0

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    aget v0, p1, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p0, v0

    aget v0, p1, v0

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    const/4 v0, 0x2

    aget p0, p0, v0

    aget p1, p1, v0

    mul-float/2addr p0, p1

    add-float/2addr p0, v2

    return p0
.end method

.method public static final b(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    const/4 v0, 0x0

    aget v1, p0, v0

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    aget v2, p1, v0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget v2, p0, v1

    aget v3, p1, v1

    cmpg-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x2

    aget p0, p0, v2

    aget p1, p1, v2

    cmpg-float p0, p0, p1

    if-nez p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static final c()Lcom/vuitton/android/presentation/ar/M4;
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-instance v1, Lcom/vuitton/android/presentation/ar/M4;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/ar/M4;-><init>([F)V

    return-object v1
.end method

.method public static final d(Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;
    .locals 4

    invoke-static {p0, p0}, Lcom/vuitton/android/presentation/ar/MatrixKt;->a(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    const/4 v0, 0x0

    aget v0, p0, v0

    mul-float/2addr v0, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    mul-float/2addr v2, v1

    const/4 v3, 0x2

    aget p0, p0, v3

    mul-float/2addr p0, v1

    invoke-static {v0, v2, p0}, Lcom/vuitton/android/presentation/ar/MatrixKt;->k(FFF)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-interface {p1}, Ljava/nio/channels/Channel;->close()V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final f(Lcom/vuitton/android/presentation/ar/M4;FFF)Lcom/vuitton/android/presentation/ar/M4;
    .locals 9

    const/16 v0, 0x10

    new-array v1, v0, [F

    iget-object v3, p0, Lcom/vuitton/android/presentation/ar/M4;->a:[F

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v5, p1

    move v7, p2

    move v8, p3

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->rotateM([FI[FIFFFF)V

    new-instance p0, Lcom/vuitton/android/presentation/ar/M4;

    invoke-direct {p0, v1}, Lcom/vuitton/android/presentation/ar/M4;-><init>([F)V

    return-object p0
.end method

.method public static final g(Lcom/vuitton/android/presentation/ar/V2A;IFF)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/V2A;->a:[F

    mul-int/lit8 p1, p1, 0x2

    aput p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    aput p3, p0, p1

    return-void
.end method

.method public static final h(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    const/4 v0, 0x0

    aget v1, p0, v0

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    aget v0, p1, v0

    sub-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p0, v0

    aget v0, p1, v0

    sub-float/2addr v2, v0

    const/4 v0, 0x2

    aget p0, p0, v0

    aget p1, p1, v0

    sub-float/2addr p0, p1

    invoke-static {v1, v2, p0}, Lcom/vuitton/android/presentation/ar/MatrixKt;->k(FFF)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p0

    return-object p0
.end method

.method public static final i([F)Ljava/nio/FloatBuffer;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static final j(Lcom/vuitton/android/presentation/ar/M4;FFF)Lcom/vuitton/android/presentation/ar/M4;
    .locals 8

    const/16 v0, 0x10

    new-array v1, v0, [F

    iget-object v3, p0, Lcom/vuitton/android/presentation/ar/M4;->a:[F

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    new-instance p0, Lcom/vuitton/android/presentation/ar/M4;

    invoke-direct {p0, v1}, Lcom/vuitton/android/presentation/ar/M4;-><init>([F)V

    return-object p0
.end method

.method public static final k(FFF)Lcom/vuitton/android/presentation/ar/V3;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/ar/V3;

    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/ar/V3;-><init>([F)V

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    aput p0, v2, v1

    const/4 p0, 0x1

    aput p1, v2, p0

    const/4 p0, 0x2

    aput p2, v2, p0

    return-object v0
.end method
