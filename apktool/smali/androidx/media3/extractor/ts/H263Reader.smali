.class public final Landroidx/media3/extractor/ts/H263Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;,
        Landroidx/media3/extractor/ts/H263Reader$SampleReader;
    }
.end annotation


# static fields
.field public static final m:[F


# instance fields
.field public final a:Landroidx/media3/extractor/ts/UserDataReader;

.field public final b:Ljava/lang/String;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public final d:[Z

.field public final e:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

.field public final f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public g:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

.field public h:J

.field public i:Ljava/lang/String;

.field public j:Landroidx/media3/extractor/TrackOutput;

.field public k:Z

.field public l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/ts/H263Reader;->m:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroidx/media3/extractor/ts/UserDataReader;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->a:Landroidx/media3/extractor/ts/UserDataReader;

    iput-object p2, p0, Landroidx/media3/extractor/ts/H263Reader;->b:Ljava/lang/String;

    const/4 p2, 0x4

    new-array p2, p2, [Z

    iput-object p2, p0, Landroidx/media3/extractor/ts/H263Reader;->d:[Z

    new-instance p2, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;-><init>(I)V

    iput-object p2, p0, Landroidx/media3/extractor/ts/H263Reader;->e:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/extractor/ts/H263Reader;->l:J

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0xb2

    invoke-direct {p1, p2, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->c:Landroidx/media3/common/util/ParsableByteArray;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->c:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0, p1}, Landroidx/media3/extractor/ts/H263Reader;-><init>(Landroidx/media3/extractor/ts/UserDataReader;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ts/H263Reader;->g:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/extractor/ts/H263Reader;->j:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    iget-object v4, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget-wide v5, v0, Landroidx/media3/extractor/ts/H263Reader;->h:J

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Landroidx/media3/extractor/ts/H263Reader;->h:J

    iget-object v5, v0, Landroidx/media3/extractor/ts/H263Reader;->j:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v6

    invoke-interface {v5, v6, v1}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    :goto_0
    iget-object v5, v0, Landroidx/media3/extractor/ts/H263Reader;->d:[Z

    invoke-static {v4, v2, v3, v5}, Landroidx/media3/container/NalUnitUtil;->b([BII[Z)I

    move-result v5

    iget-object v6, v0, Landroidx/media3/extractor/ts/H263Reader;->e:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    iget-object v7, v0, Landroidx/media3/extractor/ts/H263Reader;->f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-ne v5, v3, :cond_2

    iget-boolean v1, v0, Landroidx/media3/extractor/ts/H263Reader;->k:Z

    if-nez v1, :cond_0

    invoke-virtual {v6, v2, v3, v4}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->a(II[B)V

    :cond_0
    iget-object v0, v0, Landroidx/media3/extractor/ts/H263Reader;->g:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->a(II[B)V

    if-eqz v7, :cond_1

    invoke-virtual {v7, v2, v3, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a(II[B)V

    :cond_1
    return-void

    :cond_2
    iget-object v8, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    add-int/lit8 v9, v5, 0x3

    aget-byte v8, v8, v9

    and-int/lit16 v10, v8, 0xff

    sub-int v11, v5, v2

    iget-boolean v12, v0, Landroidx/media3/extractor/ts/H263Reader;->k:Z

    const/4 v14, 0x1

    if-nez v12, :cond_19

    if-lez v11, :cond_3

    invoke-virtual {v6, v2, v5, v4}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->a(II[B)V

    :cond_3
    if-gez v11, :cond_4

    neg-int v12, v11

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    iget v15, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->b:I

    if-eqz v15, :cond_17

    const-string v17, "Unexpected start code value"

    if-eq v15, v14, :cond_15

    const/4 v14, 0x2

    if-eq v15, v14, :cond_13

    const/4 v14, 0x4

    const/4 v13, 0x3

    if-eq v15, v13, :cond_11

    if-ne v15, v14, :cond_10

    const/16 v8, 0xb3

    if-eq v10, v8, :cond_6

    const/16 v8, 0xb5

    if-ne v10, v8, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v18, v3

    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_6
    :goto_2
    iget v8, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->c:I

    sub-int/2addr v8, v12

    iput v8, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->c:I

    const/4 v8, 0x0

    iput-boolean v8, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->a:Z

    iget-object v8, v0, Landroidx/media3/extractor/ts/H263Reader;->j:Landroidx/media3/extractor/TrackOutput;

    iget v12, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->d:I

    iget-object v13, v0, Landroidx/media3/extractor/ts/H263Reader;->i:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->e:[B

    iget v6, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->c:I

    invoke-static {v15, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    new-instance v15, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v15, v6}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    invoke-virtual {v15, v12}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    invoke-virtual {v15, v14}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    const/16 v12, 0x8

    invoke-virtual {v15, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v15, v14}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/4 v12, 0x3

    invoke-virtual {v15, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_7
    invoke-virtual {v15, v14}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v12

    const-string v18, "Invalid aspect ratio"

    const/16 v14, 0xf

    if-ne v12, v14, :cond_9

    const/16 v14, 0x8

    invoke-virtual {v15, v14}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v12

    invoke-virtual {v15, v14}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v14

    if-nez v14, :cond_8

    invoke-static/range {v18 .. v18}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    int-to-float v12, v12

    int-to-float v14, v14

    div-float v14, v12, v14

    goto :goto_4

    :cond_9
    const/4 v14, 0x7

    if-ge v12, v14, :cond_a

    sget-object v14, Landroidx/media3/extractor/ts/H263Reader;->m:[F

    aget v14, v14, v12

    goto :goto_4

    :cond_a
    invoke-static/range {v18 .. v18}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :goto_3
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x2

    invoke-virtual {v15, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/4 v12, 0x1

    invoke-virtual {v15, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0xf

    invoke-virtual {v15, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    invoke-virtual {v15, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    invoke-virtual {v15, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    const/4 v12, 0x3

    invoke-virtual {v15, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/16 v12, 0xb

    invoke-virtual {v15, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    const/16 v12, 0xf

    invoke-virtual {v15, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    :cond_b
    const/4 v12, 0x2

    invoke-virtual {v15, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v12

    if-eqz v12, :cond_c

    const-string v12, "Unhandled video object layer shape"

    invoke-static {v12}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    const/16 v12, 0x10

    invoke-virtual {v15, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v12

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v16

    if-eqz v16, :cond_d

    if-nez v12, :cond_e

    const-string v12, "Invalid vop_increment_time_resolution"

    invoke-static {v12}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_d
    move/from16 v18, v3

    goto :goto_6

    :cond_e
    add-int/lit8 v12, v12, -0x1

    move/from16 v18, v3

    const/4 v3, 0x0

    :goto_5
    if-lez v12, :cond_f

    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_f
    invoke-virtual {v15, v3}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :goto_6
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    const/16 v3, 0xd

    invoke-virtual {v15, v3}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v12

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    invoke-virtual {v15, v3}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v3

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    new-instance v15, Landroidx/media3/common/Format$Builder;

    invoke-direct {v15}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v13, v15, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget-object v13, v0, Landroidx/media3/extractor/ts/H263Reader;->b:Ljava/lang/String;

    invoke-static {v13}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v15, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    const-string v13, "video/mp4v-es"

    invoke-static {v13}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v15, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput v12, v15, Landroidx/media3/common/Format$Builder;->u:I

    iput v3, v15, Landroidx/media3/common/Format$Builder;->v:I

    iput v14, v15, Landroidx/media3/common/Format$Builder;->A:F

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v15, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    invoke-static {v15, v8}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    const/4 v12, 0x1

    iput-boolean v12, v0, Landroidx/media3/extractor/ts/H263Reader;->k:Z

    goto :goto_8

    :cond_10
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_11
    move/from16 v18, v3

    and-int/lit16 v3, v8, 0xf0

    const/16 v8, 0x20

    if-eq v3, v8, :cond_12

    invoke-static/range {v17 .. v17}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    const/4 v8, 0x0

    iput-boolean v8, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->a:Z

    iput v8, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->c:I

    iput v8, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->b:I

    goto :goto_7

    :cond_12
    const/4 v8, 0x0

    iget v3, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->c:I

    iput v3, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->d:I

    iput v14, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->b:I

    goto :goto_7

    :cond_13
    move/from16 v18, v3

    const/4 v8, 0x0

    const/16 v3, 0x1f

    if-le v10, v3, :cond_14

    invoke-static/range {v17 .. v17}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    iput-boolean v8, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->a:Z

    iput v8, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->c:I

    iput v8, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->b:I

    goto :goto_7

    :cond_14
    const/4 v12, 0x3

    iput v12, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->b:I

    goto :goto_7

    :cond_15
    move/from16 v18, v3

    const/16 v3, 0xb5

    const/4 v8, 0x0

    if-eq v10, v3, :cond_16

    invoke-static/range {v17 .. v17}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    iput-boolean v8, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->a:Z

    iput v8, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->c:I

    iput v8, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->b:I

    goto :goto_7

    :cond_16
    const/4 v12, 0x2

    iput v12, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->b:I

    goto :goto_7

    :cond_17
    move/from16 v18, v3

    const/4 v8, 0x0

    const/16 v3, 0xb0

    if-ne v10, v3, :cond_18

    const/4 v12, 0x1

    iput v12, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->b:I

    iput-boolean v12, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->a:Z

    :cond_18
    :goto_7
    sget-object v3, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->f:[B

    const/4 v12, 0x3

    invoke-virtual {v6, v8, v12, v3}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->a(II[B)V

    goto :goto_8

    :cond_19
    move/from16 v18, v3

    :goto_8
    iget-object v3, v0, Landroidx/media3/extractor/ts/H263Reader;->g:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {v3, v2, v5, v4}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->a(II[B)V

    if-eqz v7, :cond_1c

    if-lez v11, :cond_1a

    invoke-virtual {v7, v2, v5, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a(II[B)V

    const/4 v2, 0x0

    goto :goto_9

    :cond_1a
    neg-int v2, v11

    :goto_9
    invoke-virtual {v7, v2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    iget v3, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    invoke-static {v3, v2}, Landroidx/media3/container/NalUnitUtil;->m(I[B)I

    move-result v2

    sget-object v3, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget-object v3, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    iget-object v6, v0, Landroidx/media3/extractor/ts/H263Reader;->c:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    iget-object v2, v0, Landroidx/media3/extractor/ts/H263Reader;->a:Landroidx/media3/extractor/ts/UserDataReader;

    iget-wide v11, v0, Landroidx/media3/extractor/ts/H263Reader;->l:J

    invoke-virtual {v2, v11, v12, v6}, Landroidx/media3/extractor/ts/UserDataReader;->a(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_1b
    const/16 v2, 0xb2

    if-ne v10, v2, :cond_1c

    iget-object v2, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    add-int/lit8 v3, v5, 0x2

    aget-byte v2, v2, v3

    const/4 v12, 0x1

    if-ne v2, v12, :cond_1d

    invoke-virtual {v7, v10}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d(I)V

    goto :goto_a

    :cond_1c
    const/4 v12, 0x1

    :cond_1d
    :goto_a
    sub-int v3, v18, v5

    iget-wide v5, v0, Landroidx/media3/extractor/ts/H263Reader;->h:J

    int-to-long v7, v3

    sub-long/2addr v5, v7

    iget-object v2, v0, Landroidx/media3/extractor/ts/H263Reader;->g:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iget-boolean v7, v0, Landroidx/media3/extractor/ts/H263Reader;->k:Z

    invoke-virtual {v2, v5, v6, v3, v7}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->b(JIZ)V

    iget-object v2, v0, Landroidx/media3/extractor/ts/H263Reader;->g:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iget-wide v5, v0, Landroidx/media3/extractor/ts/H263Reader;->l:J

    iput v10, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->e:I

    const/4 v8, 0x0

    iput-boolean v8, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->d:Z

    const/16 v3, 0xb6

    if-eq v10, v3, :cond_1f

    const/16 v8, 0xb3

    if-ne v10, v8, :cond_1e

    goto :goto_b

    :cond_1e
    const/4 v8, 0x0

    goto :goto_c

    :cond_1f
    :goto_b
    move v8, v12

    :goto_c
    iput-boolean v8, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->b:Z

    if-ne v10, v3, :cond_20

    move v14, v12

    goto :goto_d

    :cond_20
    const/4 v14, 0x0

    :goto_d
    iput-boolean v14, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->c:Z

    const/4 v8, 0x0

    iput v8, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->f:I

    iput-wide v5, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->h:J

    move v2, v9

    move/from16 v3, v18

    goto/16 :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->d:[Z

    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->a([Z)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->e:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->a:Z

    iput v1, v0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->c:I

    iput v1, v0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->b:I

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->g:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->b:Z

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->c:Z

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->d:Z

    const/4 v1, -0x1

    iput v1, v0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->e:I

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H263Reader;->h:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H263Reader;->l:J

    return-void
.end method

.method public final d(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->g:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->g:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iget-wide v0, p0, Landroidx/media3/extractor/ts/H263Reader;->h:J

    iget-boolean v2, p0, Landroidx/media3/extractor/ts/H263Reader;->k:Z

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->b(JIZ)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H263Reader;->g:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iput-boolean v3, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->b:Z

    iput-boolean v3, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->c:Z

    iput-boolean v3, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->d:Z

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->e:I

    :cond_0
    return-void
.end method

.method public final e(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->i:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->j:Landroidx/media3/extractor/TrackOutput;

    new-instance v1, Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    invoke-direct {v1, v0}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/H263Reader;->g:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H263Reader;->a:Landroidx/media3/extractor/ts/UserDataReader;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/ts/UserDataReader;->b(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    :cond_0
    return-void
.end method

.method public final f(IJ)V
    .locals 0

    iput-wide p2, p0, Landroidx/media3/extractor/ts/H263Reader;->l:J

    return-void
.end method
