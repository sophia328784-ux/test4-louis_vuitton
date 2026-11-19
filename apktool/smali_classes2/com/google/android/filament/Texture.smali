.class public Lcom/google/android/filament/Texture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Texture$InternalFormat;,
        Lcom/google/android/filament/Texture$Format;,
        Lcom/google/android/filament/Texture$Type;,
        Lcom/google/android/filament/Texture$Sampler;,
        Lcom/google/android/filament/Texture$PixelBufferDescriptor;,
        Lcom/google/android/filament/Texture$CompressedFormat;,
        Lcom/google/android/filament/Texture$Builder;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "android.hardware.HardwareBuffer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/google/android/filament/Texture$Sampler;->values()[Lcom/google/android/filament/Texture$Sampler;

    invoke-static {}, Lcom/google/android/filament/Texture$InternalFormat;->values()[Lcom/google/android/filament/Texture$InternalFormat;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/Texture;->a:J

    return-void
.end method

.method public static bridge synthetic a(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Texture;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(IJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/Texture;->nBuilderFormat(JI)V

    return-void
.end method

.method public static bridge synthetic c(IJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/Texture;->nBuilderHeight(JI)V

    return-void
.end method

.method public static bridge synthetic d(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Texture;->nBuilderImportTexture(JJ)V

    return-void
.end method

.method public static bridge synthetic e(IJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/Texture;->nBuilderLevels(JI)V

    return-void
.end method

.method public static bridge synthetic f(IJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/Texture;->nBuilderSampler(JI)V

    return-void
.end method

.method public static bridge synthetic g(J)V
    .locals 1

    const/16 v0, 0x218

    invoke-static {p0, p1, v0}, Lcom/google/android/filament/Texture;->nBuilderUsage(JI)V

    return-void
.end method

.method public static bridge synthetic h(IJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/google/android/filament/Texture;->nBuilderWidth(JI)V

    return-void
.end method

.method public static bridge synthetic i()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/Texture;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic j(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/Texture;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderFormat(JI)V
.end method

.method private static native nBuilderHeight(JI)V
.end method

.method private static native nBuilderImportTexture(JJ)V
.end method

.method private static native nBuilderLevels(JI)V
.end method

.method private static native nBuilderSampler(JI)V
.end method

.method private static native nBuilderUsage(JI)V
.end method

.method private static native nBuilderWidth(JI)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGenerateMipmaps(JJ)V
.end method

.method private static native nGetHeight(JI)I
.end method

.method private static native nGetLevels(J)I
.end method

.method private static native nGetWidth(JI)I
.end method

.method private static native nSetImage3D(JJIIIIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nSetImage3DCompressed(JJIIIIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nSetImageCubemap(JJILjava/nio/Buffer;IIIIIII[ILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nSetImageCubemapCompressed(JJILjava/nio/Buffer;IIIIIII[ILjava/lang/Object;Ljava/lang/Runnable;)I
.end method


# virtual methods
.method public getNativeObject()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Texture;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    const-string p0, "Calling method on destroyed Texture"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final k(Lcom/google/android/filament/Engine;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/Texture;->nGenerateMipmaps(JJ)V

    return-void
.end method

.method public final l(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Texture;->nGetHeight(JI)I

    move-result p0

    return p0
.end method

.method public final m()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Texture;->nGetLevels(J)I

    move-result p0

    return p0
.end method

.method public final n(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Texture;->nGetWidth(JI)I

    move-result p0

    return p0
.end method

.method public final o(Lcom/google/android/filament/Engine;ILcom/google/android/filament/Texture$PixelBufferDescriptor;[I)V
    .locals 17

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->a:Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->b:Lcom/google/android/filament/Texture$Type;

    sget-object v2, Lcom/google/android/filament/Texture$Type;->COMPRESSED:Lcom/google/android/filament/Texture$Type;

    if-ne v1, v2, :cond_0

    move-object v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v1

    move-object v5, v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v3

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    iget v8, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->d:I

    iget v9, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->e:I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    iget v11, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->c:I

    iget v12, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->h:I

    iget-object v5, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->i:Lcom/google/android/filament/Texture$CompressedFormat;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    iget-object v15, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->j:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->k:Ljava/lang/Runnable;

    move/from16 v5, p2

    move-object/from16 v14, p4

    move-object/from16 v16, v0

    invoke-static/range {v1 .. v16}, Lcom/google/android/filament/Texture;->nSetImageCubemapCompressed(JJILjava/nio/Buffer;IIIIIII[ILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v3

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    iget v8, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->d:I

    iget v9, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->e:I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    iget v11, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->c:I

    iget v12, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->f:I

    iget-object v5, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->g:Lcom/google/android/filament/Texture$Format;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    iget-object v15, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->j:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->k:Ljava/lang/Runnable;

    move/from16 v5, p2

    move-object/from16 v14, p4

    move-object/from16 v16, v0

    invoke-static/range {v1 .. v16}, Lcom/google/android/filament/Texture;->nSetImageCubemap(JJILjava/nio/Buffer;IIIIIII[ILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public final p(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture$PixelBufferDescriptor;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/google/android/filament/Texture;->n(I)I

    move-result v9

    invoke-virtual {v0, v5}, Lcom/google/android/filament/Texture;->l(I)I

    move-result v10

    iget-object v2, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->b:Lcom/google/android/filament/Texture$Type;

    iget-object v12, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->a:Ljava/nio/Buffer;

    sget-object v3, Lcom/google/android/filament/Texture$Type;->COMPRESSED:Lcom/google/android/filament/Texture$Type;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v3

    move-wide v13, v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v3

    move-wide v14, v13

    invoke-virtual {v12}, Ljava/nio/Buffer;->remaining()I

    move-result v13

    move-wide v15, v14

    iget v14, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->d:I

    move-wide/from16 v16, v15

    iget v15, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->e:I

    move-wide/from16 v17, v16

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    iget v0, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->c:I

    iget v2, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->h:I

    iget-object v5, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->i:Lcom/google/android/filament/Texture$CompressedFormat;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    iget-object v6, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->j:Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->k:Ljava/lang/Runnable;

    move-object/from16 v21, v1

    move/from16 v19, v5

    move-object/from16 v20, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v22, v17

    move/from16 v17, v0

    move/from16 v18, v2

    move-wide/from16 v1, v22

    invoke-static/range {v1 .. v21}, Lcom/google/android/filament/Texture;->nSetImage3DCompressed(JJIIIIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v13

    move-wide/from16 v22, v13

    move-wide v14, v3

    move-wide/from16 v3, v22

    invoke-virtual {v12}, Ljava/nio/Buffer;->remaining()I

    move-result v13

    move-wide v15, v14

    iget v14, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->d:I

    move-wide/from16 v16, v15

    iget v15, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->e:I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget v2, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->c:I

    iget v5, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->f:I

    iget-object v6, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->g:Lcom/google/android/filament/Texture$Format;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    iget-object v7, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->j:Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->k:Ljava/lang/Runnable;

    move-object/from16 v21, v1

    move/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide/from16 v22, v16

    move/from16 v16, v0

    move/from16 v17, v2

    move-wide/from16 v1, v22

    invoke-static/range {v1 .. v21}, Lcom/google/android/filament/Texture;->nSetImage3D(JJIIIIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method
