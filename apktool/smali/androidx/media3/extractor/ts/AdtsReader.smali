.class public final Landroidx/media3/extractor/ts/AdtsReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# static fields
.field public static final x:[B


# instance fields
.field public final a:Z

.field public final b:Landroidx/media3/common/util/ParsableBitArray;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Landroidx/media3/extractor/TrackOutput;

.field public i:Landroidx/media3/extractor/TrackOutput;

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:J

.field public t:I

.field public u:J

.field public v:Landroidx/media3/extractor/TrackOutput;

.field public w:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/ts/AdtsReader;->x:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/media3/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->b:Landroidx/media3/common/util/ParsableBitArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v1, Landroidx/media3/extractor/ts/AdtsReader;->x:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->c:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->o:I

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->p:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->s:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->u:J

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->a:Z

    iput-object p2, p0, Landroidx/media3/extractor/ts/AdtsReader;->d:Ljava/lang/String;

    iput p3, p0, Landroidx/media3/extractor/ts/AdtsReader;->e:I

    iput-object p4, p0, Landroidx/media3/extractor/ts/AdtsReader;->f:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    iput p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    const/16 p1, 0x100

    iput p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->h:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v2

    if-lez v2, :cond_27

    iget v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    const/16 v3, 0x100

    const/4 v4, -0x1

    const/16 v5, 0xd

    iget-object v6, v0, Landroidx/media3/extractor/ts/AdtsReader;->c:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v7, 0x7

    const/4 v8, 0x3

    iget-object v9, v0, Landroidx/media3/extractor/ts/AdtsReader;->b:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v2, :cond_d

    if-eq v2, v13, :cond_9

    const/16 v4, 0xa

    if-eq v2, v12, :cond_8

    if-eq v2, v8, :cond_3

    if-ne v2, v11, :cond_2

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v2

    iget v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->t:I

    iget v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->v:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v4, v2, v1}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    add-int/2addr v4, v2

    iput v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    iget v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->t:I

    if-ne v4, v2, :cond_0

    iget-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->u:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v13, v10

    :goto_1
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v14, v0, Landroidx/media3/extractor/ts/AdtsReader;->v:Landroidx/media3/extractor/TrackOutput;

    iget-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->u:J

    iget v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->t:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x1

    move/from16 v18, v2

    move-wide v15, v4

    invoke-interface/range {v14 .. v20}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->u:J

    iget-wide v6, v0, Landroidx/media3/extractor/ts/AdtsReader;->w:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->u:J

    iput v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    iput v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    iput v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_3
    iget-boolean v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->m:Z

    const/4 v3, 0x5

    if-eqz v2, :cond_4

    move v2, v7

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iget-object v6, v9, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v14

    iget v15, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    sub-int v15, v2, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget v15, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    invoke-virtual {v1, v15, v14, v6}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    iget v6, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    add-int/2addr v6, v14

    iput v6, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    if-ne v6, v2, :cond_0

    invoke-virtual {v9, v10}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    iget-boolean v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->r:Z

    if-nez v2, :cond_6

    invoke-virtual {v9, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v2

    add-int/2addr v2, v13

    if-eq v2, v12, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Detected audio object type: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but assuming AAC LC."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    move v2, v12

    :cond_5
    invoke-virtual {v9, v3}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v9, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v3

    iget v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->p:I

    shl-int/2addr v2, v8

    and-int/lit16 v2, v2, 0xf8

    shr-int/lit8 v6, v4, 0x1

    and-int/2addr v6, v7

    or-int/2addr v2, v6

    int-to-byte v2, v2

    shl-int/2addr v4, v7

    and-int/lit16 v4, v4, 0x80

    shl-int/2addr v3, v8

    and-int/lit8 v3, v3, 0x78

    or-int/2addr v3, v4

    int-to-byte v3, v3

    new-array v4, v12, [B

    aput-byte v2, v4, v10

    aput-byte v3, v4, v13

    new-instance v2, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v2, v4}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    invoke-static {v2, v10}, Landroidx/media3/extractor/AacUtil;->b(Landroidx/media3/common/util/ParsableBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v2

    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v6, v0, Landroidx/media3/extractor/ts/AdtsReader;->g:Ljava/lang/String;

    iput-object v6, v3, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget-object v6, v0, Landroidx/media3/extractor/ts/AdtsReader;->f:Ljava/lang/String;

    invoke-static {v6}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    const-string v6, "audio/mp4a-latm"

    invoke-static {v6}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iget-object v6, v2, Landroidx/media3/extractor/AacUtil$Config;->c:Ljava/lang/String;

    iput-object v6, v3, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    iget v6, v2, Landroidx/media3/extractor/AacUtil$Config;->b:I

    iput v6, v3, Landroidx/media3/common/Format$Builder;->F:I

    iget v2, v2, Landroidx/media3/extractor/AacUtil$Config;->a:I

    iput v2, v3, Landroidx/media3/common/Format$Builder;->G:I

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v3, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->d:Ljava/lang/String;

    iput-object v2, v3, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    iget v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->e:I

    iput v2, v3, Landroidx/media3/common/Format$Builder;->f:I

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget v3, v2, Landroidx/media3/common/Format;->H:I

    int-to-long v3, v3

    const-wide/32 v6, 0x3d090000

    div-long/2addr v6, v3

    iput-wide v6, v0, Landroidx/media3/extractor/ts/AdtsReader;->s:J

    iget-object v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->h:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v3, v2}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    iput-boolean v13, v0, Landroidx/media3/extractor/ts/AdtsReader;->r:Z

    goto :goto_3

    :cond_6
    invoke-virtual {v9, v4}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :goto_3
    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v9, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v2

    add-int/lit8 v3, v2, -0x7

    iget-boolean v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->m:Z

    if-eqz v4, :cond_7

    add-int/lit8 v3, v2, -0x9

    :cond_7
    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->h:Landroidx/media3/extractor/TrackOutput;

    iget-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->s:J

    iput v11, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    iput v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    iput-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->v:Landroidx/media3/extractor/TrackOutput;

    iput-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->w:J

    iput v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->t:I

    goto/16 :goto_0

    :cond_8
    iget-object v2, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v3

    iget v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    rsub-int/lit8 v5, v5, 0xa

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    invoke-virtual {v1, v5, v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    iget v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->i:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v2, v4, v6}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    const/4 v2, 0x6

    invoke-virtual {v6, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->i:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    move-result v3

    add-int/2addr v3, v4

    iput v11, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    iput v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    iput-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->v:Landroidx/media3/extractor/TrackOutput;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->w:J

    iput v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->t:I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    iget-object v2, v9, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    iget-object v5, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v6, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    aget-byte v5, v5, v6

    aput-byte v5, v2, v10

    invoke-virtual {v9, v12}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v2

    iget v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->p:I

    if-eq v5, v4, :cond_b

    if-eq v2, v5, :cond_b

    iput-boolean v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->n:Z

    iput v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    iput v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    iput v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    goto/16 :goto_0

    :cond_b
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->n:Z

    if-nez v3, :cond_c

    iput-boolean v13, v0, Landroidx/media3/extractor/ts/AdtsReader;->n:Z

    iget v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->q:I

    iput v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->o:I

    iput v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->p:I

    :cond_c
    iput v8, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    iput v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    goto/16 :goto_0

    :cond_d
    iget-object v2, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v14, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    iget v15, v1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    :goto_4
    if-ge v14, v15, :cond_26

    add-int/lit8 v3, v14, 0x1

    move/from16 v17, v8

    aget-byte v8, v2, v14

    and-int/lit16 v7, v8, 0xff

    iget v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    const/16 v12, 0x200

    if-ne v5, v12, :cond_20

    int-to-byte v5, v7

    and-int/lit16 v5, v5, 0xff

    const v21, 0xff00

    or-int v5, v21, v5

    const v22, 0xfff6

    and-int v5, v5, v22

    const v12, 0xfff0

    if-ne v5, v12, :cond_20

    iget-boolean v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->n:Z

    if-nez v5, :cond_1d

    add-int/lit8 v5, v14, -0x1

    invoke-virtual {v1, v14}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v12, v9, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v4

    if-ge v4, v13, :cond_e

    :goto_5
    const/4 v10, -0x1

    goto/16 :goto_7

    :cond_e
    invoke-virtual {v1, v10, v13, v12}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    invoke-virtual {v9, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v4

    iget v12, v0, Landroidx/media3/extractor/ts/AdtsReader;->o:I

    const/4 v11, -0x1

    if-eq v12, v11, :cond_f

    if-eq v4, v12, :cond_f

    move v10, v11

    goto/16 :goto_7

    :cond_f
    iget v12, v0, Landroidx/media3/extractor/ts/AdtsReader;->p:I

    if-eq v12, v11, :cond_12

    iget-object v11, v9, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v12

    if-ge v12, v13, :cond_10

    goto/16 :goto_8

    :cond_10
    invoke-virtual {v1, v10, v13, v11}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    const/4 v11, 0x4

    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v12

    iget v13, v0, Landroidx/media3/extractor/ts/AdtsReader;->p:I

    if-eq v12, v13, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto :goto_6

    :cond_12
    const/4 v11, 0x4

    :goto_6
    iget-object v12, v9, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v13

    if-ge v13, v11, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {v1, v10, v11, v12}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    const/16 v12, 0xe

    invoke-virtual {v9, v12}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    const/16 v12, 0xd

    invoke-virtual {v9, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v13

    const/4 v11, 0x7

    if-ge v13, v11, :cond_14

    goto :goto_5

    :cond_14
    iget-object v11, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v12, v1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    add-int/2addr v5, v13

    if-lt v5, v12, :cond_15

    goto :goto_8

    :cond_15
    aget-byte v13, v11, v5

    const/4 v10, -0x1

    if-ne v13, v10, :cond_17

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v12, :cond_16

    goto :goto_8

    :cond_16
    aget-byte v5, v11, v5

    and-int/lit16 v11, v5, 0xff

    or-int v11, v21, v11

    and-int v11, v11, v22

    const v12, 0xfff0

    if-ne v11, v12, :cond_1c

    and-int/lit8 v5, v5, 0x8

    shr-int/lit8 v5, v5, 0x3

    if-ne v5, v4, :cond_1c

    goto :goto_8

    :cond_17
    const/16 v4, 0x49

    if-eq v13, v4, :cond_18

    goto :goto_7

    :cond_18
    add-int/lit8 v4, v5, 0x1

    if-ne v4, v12, :cond_19

    goto :goto_8

    :cond_19
    aget-byte v4, v11, v4

    const/16 v13, 0x44

    if-eq v4, v13, :cond_1a

    goto :goto_7

    :cond_1a
    add-int/lit8 v5, v5, 0x2

    if-ne v5, v12, :cond_1b

    goto :goto_8

    :cond_1b
    aget-byte v4, v11, v5

    const/16 v5, 0x33

    if-ne v4, v5, :cond_1c

    goto :goto_8

    :cond_1c
    :goto_7
    const/4 v4, 0x1

    goto :goto_b

    :cond_1d
    :goto_8
    and-int/lit8 v2, v8, 0x8

    shr-int/lit8 v2, v2, 0x3

    iput v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->q:I

    and-int/lit8 v2, v8, 0x1

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_9

    :cond_1e
    const/4 v2, 0x0

    :goto_9
    iput-boolean v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->m:Z

    iget-boolean v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->n:Z

    if-nez v2, :cond_1f

    const/4 v4, 0x1

    iput v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    const/4 v2, 0x0

    iput v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    goto :goto_a

    :cond_1f
    move/from16 v4, v17

    const/4 v2, 0x0

    iput v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    iput v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    :goto_a
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto/16 :goto_0

    :cond_20
    move v10, v4

    move v4, v13

    :goto_b
    iget v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    or-int/2addr v7, v5

    const/16 v8, 0x149

    if-eq v7, v8, :cond_25

    const/16 v8, 0x1ff

    if-eq v7, v8, :cond_24

    const/16 v8, 0x344

    if-eq v7, v8, :cond_23

    const/16 v8, 0x433

    if-eq v7, v8, :cond_22

    const/16 v7, 0x100

    if-eq v5, v7, :cond_21

    iput v7, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    const/4 v5, 0x3

    const/4 v8, 0x0

    const/4 v11, 0x2

    goto :goto_d

    :cond_21
    const/4 v5, 0x3

    const/4 v8, 0x0

    const/4 v11, 0x2

    goto :goto_c

    :cond_22
    const/4 v11, 0x2

    iput v11, v0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    const/4 v5, 0x3

    iput v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    const/4 v8, 0x0

    iput v8, v0, Landroidx/media3/extractor/ts/AdtsReader;->t:I

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto/16 :goto_0

    :cond_23
    const/4 v5, 0x3

    const/16 v7, 0x100

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/16 v12, 0x400

    iput v12, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    goto :goto_c

    :cond_24
    const/4 v5, 0x3

    const/16 v7, 0x100

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/16 v12, 0x200

    iput v12, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    goto :goto_c

    :cond_25
    const/4 v5, 0x3

    const/16 v7, 0x100

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/16 v12, 0x300

    iput v12, v0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    :goto_c
    move v14, v3

    :goto_d
    move v13, v4

    move v3, v7

    move v4, v10

    move v12, v11

    const/4 v7, 0x7

    const/4 v11, 0x4

    move v10, v8

    move v8, v5

    const/16 v5, 0xd

    goto/16 :goto_4

    :cond_26
    invoke-virtual {v1, v14}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto/16 :goto_0

    :cond_27
    return-void
.end method

.method public final c()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->u:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->n:Z

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->j:I

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->k:I

    const/16 v0, 0x100

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->l:I

    return-void
.end method

.method public final d(Z)V
    .locals 0

    return-void
.end method

.method public final e(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->g:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->h:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->v:Landroidx/media3/extractor/TrackOutput;

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->i:Landroidx/media3/extractor/TrackOutput;

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget-object p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    iput-object p2, v0, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/extractor/ts/AdtsReader;->f:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    const-string p0, "application/id3"

    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    invoke-static {v0, p1}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    return-void

    :cond_0
    new-instance p1, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {p1}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->i:Landroidx/media3/extractor/TrackOutput;

    return-void
.end method

.method public final f(IJ)V
    .locals 0

    iput-wide p2, p0, Landroidx/media3/extractor/ts/AdtsReader;->u:J

    return-void
.end method
