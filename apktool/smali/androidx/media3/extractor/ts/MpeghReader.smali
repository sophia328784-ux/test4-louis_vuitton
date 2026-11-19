.class public final Landroidx/media3/extractor/ts/MpeghReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Landroidx/media3/common/util/ParsableBitArray;

.field public final d:Landroidx/media3/common/util/ParsableByteArray;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Landroidx/media3/extractor/TrackOutput;

.field public h:D

.field public i:D

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:Z

.field public o:I

.field public p:I

.field public final q:Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;

.field public r:I

.field public s:I

.field public t:I

.field public u:J

.field public v:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->e:I

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0xf

    new-array v0, v0, [B

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->b:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->c:Landroidx/media3/common/util/ParsableBitArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->d:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;

    invoke-direct {p1}, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->q:Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;

    const p1, -0x7fffffff

    iput p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->r:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->s:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/ts/MpeghReader;->u:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->k:Z

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->n:Z

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    iput-wide v0, p0, Landroidx/media3/extractor/ts/MpeghReader;->h:D

    iput-wide v0, p0, Landroidx/media3/extractor/ts/MpeghReader;->i:D

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ts/MpeghReader;->g:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v2

    if-lez v2, :cond_43

    iget v2, v0, Landroidx/media3/extractor/ts/MpeghReader;->e:I

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v6, 0x1

    if-eqz v2, :cond_3f

    const/16 v8, 0x18

    const/16 v10, 0x11

    iget-object v11, v0, Landroidx/media3/extractor/ts/MpeghReader;->d:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v12, v0, Landroidx/media3/extractor/ts/MpeghReader;->q:Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;

    const/4 v13, 0x2

    if-eq v2, v6, :cond_2e

    if-ne v2, v13, :cond_2d

    iget v2, v12, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->a:I

    if-eq v2, v6, :cond_1

    if-ne v2, v10, :cond_2

    :cond_1
    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v14

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget-object v15, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v9, v11, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-virtual {v1, v9, v14, v15}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-virtual {v11, v14}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    :cond_2
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v2

    iget v9, v12, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->c:I

    iget v14, v0, Landroidx/media3/extractor/ts/MpeghReader;->o:I

    sub-int/2addr v9, v14

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v9, v0, Landroidx/media3/extractor/ts/MpeghReader;->g:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v9, v2, v1}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v9, v0, Landroidx/media3/extractor/ts/MpeghReader;->o:I

    add-int/2addr v9, v2

    iput v9, v0, Landroidx/media3/extractor/ts/MpeghReader;->o:I

    iget v2, v12, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->c:I

    if-ne v9, v2, :cond_0

    iget v2, v12, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->a:I

    if-ne v2, v6, :cond_27

    new-instance v2, Landroidx/media3/common/util/ParsableBitArray;

    iget-object v10, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-direct {v2, v10}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v10

    const/4 v11, 0x5

    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v14

    const/16 v15, 0x1f

    if-ne v14, v15, :cond_3

    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v8

    goto/16 :goto_1

    :cond_3
    packed-switch v14, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported sampling rate index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1
    const/16 v8, 0x2580

    goto/16 :goto_1

    :pswitch_2
    const/16 v8, 0x3200

    goto/16 :goto_1

    :pswitch_3
    const/16 v8, 0x3840

    goto :goto_1

    :pswitch_4
    const/16 v8, 0x42b3

    goto :goto_1

    :pswitch_5
    const/16 v8, 0x4b00

    goto :goto_1

    :pswitch_6
    const/16 v8, 0x4e20

    goto :goto_1

    :pswitch_7
    const/16 v8, 0x6400

    goto :goto_1

    :pswitch_8
    const/16 v8, 0x7080

    goto :goto_1

    :pswitch_9
    const v8, 0x8566

    goto :goto_1

    :pswitch_a
    const v8, 0x9600

    goto :goto_1

    :pswitch_b
    const v8, 0x9c40

    goto :goto_1

    :pswitch_c
    const v8, 0xc800

    goto :goto_1

    :pswitch_d
    const v8, 0xe100

    goto :goto_1

    :pswitch_e
    const/16 v8, 0x1cb6

    goto :goto_1

    :pswitch_f
    const/16 v8, 0x1f40

    goto :goto_1

    :pswitch_10
    const/16 v8, 0x2b11

    goto :goto_1

    :pswitch_11
    const/16 v8, 0x2ee0

    goto :goto_1

    :pswitch_12
    const/16 v8, 0x3e80

    goto :goto_1

    :pswitch_13
    const/16 v8, 0x5622

    goto :goto_1

    :pswitch_14
    const/16 v8, 0x5dc0

    goto :goto_1

    :pswitch_15
    const/16 v8, 0x7d00

    goto :goto_1

    :pswitch_16
    const v8, 0xac44

    goto :goto_1

    :pswitch_17
    const v8, 0xbb80

    goto :goto_1

    :pswitch_18
    const v8, 0xfa00

    goto :goto_1

    :pswitch_19
    const v8, 0x15888

    goto :goto_1

    :pswitch_1a
    const v8, 0x17700

    :goto_1
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v14

    const/4 v15, 0x4

    const-string v7, "Unsupported coreSbrFrameLengthIndex "

    if-eqz v14, :cond_7

    if-eq v14, v6, :cond_6

    if-eq v14, v13, :cond_5

    if-eq v14, v4, :cond_5

    if-ne v14, v15, :cond_4

    const/16 v16, 0x1000

    :goto_2
    move/from16 v17, v16

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_5
    const/16 v16, 0x800

    goto :goto_2

    :cond_6
    const/16 v16, 0x400

    goto :goto_2

    :cond_7
    const/16 v16, 0x300

    goto :goto_2

    :goto_3
    if-eqz v14, :cond_b

    if-eq v14, v6, :cond_b

    if-eq v14, v13, :cond_a

    if-eq v14, v4, :cond_9

    if-ne v14, v15, :cond_8

    move v7, v6

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_9
    move v7, v4

    goto :goto_4

    :cond_a
    move v7, v13

    goto :goto_4

    :cond_b
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-static {v2}, Landroidx/media3/extractor/ts/MpeghUtil;->c(Landroidx/media3/common/util/ParsableBitArray;)V

    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v14

    const/4 v9, 0x0

    const/16 v18, 0x0

    :goto_5
    add-int/lit8 v5, v14, 0x1

    move/from16 v19, v6

    const/16 v6, 0x10

    if-ge v9, v5, :cond_e

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v5

    invoke-static {v2, v11, v3, v6}, Landroidx/media3/extractor/ts/MpeghUtil;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int v18, v6, v18

    if-eqz v5, :cond_c

    if-ne v5, v13, :cond_d

    :cond_c
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v2}, Landroidx/media3/extractor/ts/MpeghUtil;->c(Landroidx/media3/common/util/ParsableBitArray;)V

    :cond_d
    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v19

    goto :goto_5

    :cond_e
    invoke-static {v2, v15, v3, v6}, Landroidx/media3/extractor/ts/MpeghUtil;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    const/4 v9, 0x0

    :goto_6
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    if-ge v9, v5, :cond_1f

    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v14

    if-eqz v14, :cond_1c

    move/from16 v11, v19

    if-eq v14, v11, :cond_11

    if-eq v14, v4, :cond_f

    goto/16 :goto_9

    :cond_f
    invoke-static {v2, v15, v3, v6}, Landroidx/media3/extractor/ts/MpeghUtil;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    invoke-static {v2, v15, v3, v6}, Landroidx/media3/extractor/ts/MpeghUtil;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v11

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v14

    if-eqz v14, :cond_10

    const/4 v14, 0x0

    invoke-static {v2, v3, v6, v14}, Landroidx/media3/extractor/ts/MpeghUtil;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    :cond_10
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    if-lez v11, :cond_1e

    mul-int/lit8 v11, v11, 0x8

    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    goto/16 :goto_9

    :cond_11
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v11

    if-eqz v11, :cond_12

    const/16 v14, 0xd

    invoke-virtual {v2, v14}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_12
    if-eqz v11, :cond_13

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    :cond_13
    if-lez v7, :cond_14

    invoke-static {v2}, Landroidx/media3/extractor/ts/MpeghUtil;->b(Landroidx/media3/common/util/ParsableBitArray;)V

    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v11

    goto :goto_7

    :cond_14
    const/4 v11, 0x0

    :goto_7
    if-lez v11, :cond_18

    const/4 v14, 0x6

    invoke-virtual {v2, v14}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v6

    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v22

    const/4 v3, 0x5

    if-eqz v22, :cond_15

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_15
    if-eq v11, v13, :cond_16

    if-ne v11, v4, :cond_17

    :cond_16
    invoke-virtual {v2, v14}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_17
    if-ne v6, v13, :cond_19

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    goto :goto_8

    :cond_18
    const/4 v3, 0x5

    :cond_19
    :goto_8
    add-int/lit8 v6, v18, -0x1

    int-to-double v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->log(D)D

    move-result-wide v20

    div-double v3, v3, v20

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/16 v19, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v4

    if-lez v4, :cond_1a

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_1a
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_1b
    if-nez v7, :cond_1e

    if-nez v4, :cond_1e

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    goto :goto_9

    :cond_1c
    move v14, v4

    invoke-virtual {v2, v14}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_1d
    if-lez v7, :cond_1e

    invoke-static {v2}, Landroidx/media3/extractor/ts/MpeghUtil;->b(Landroidx/media3/common/util/ParsableBitArray;)V

    :cond_1e
    :goto_9
    add-int/lit8 v9, v9, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/16 v6, 0x10

    const/4 v11, 0x5

    const/16 v19, 0x1

    goto/16 :goto_6

    :cond_1f
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v3

    if-eqz v3, :cond_22

    const/16 v3, 0x8

    invoke-static {v2, v13, v15, v3}, Landroidx/media3/extractor/ts/MpeghUtil;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v4

    const/16 v19, 0x1

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_a
    if-ge v5, v4, :cond_23

    const/16 v7, 0x10

    invoke-static {v2, v15, v3, v7}, Landroidx/media3/extractor/ts/MpeghUtil;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v9

    invoke-static {v2, v15, v3, v7}, Landroidx/media3/extractor/ts/MpeghUtil;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v11

    const/4 v13, 0x7

    if-ne v9, v13, :cond_21

    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    new-array v9, v6, [B

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v6, :cond_20

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_20
    move-object v6, v9

    goto :goto_c

    :cond_21
    mul-int/2addr v11, v3

    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :goto_c
    add-int/lit8 v5, v5, 0x1

    const/16 v3, 0x8

    const/16 v19, 0x1

    goto :goto_a

    :cond_22
    const/4 v6, 0x0

    :cond_23
    sparse-switch v8, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported sampling rate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :sswitch_0
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    goto :goto_d

    :sswitch_1
    const-wide/high16 v20, 0x3ff8000000000000L    # 1.5

    goto :goto_d

    :sswitch_2
    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    :goto_d
    :sswitch_3
    int-to-double v2, v8

    mul-double v2, v2, v20

    double-to-int v2, v2

    move/from16 v3, v17

    int-to-double v3, v3

    mul-double v3, v3, v20

    double-to-int v3, v3

    iput v2, v0, Landroidx/media3/extractor/ts/MpeghReader;->r:I

    iput v3, v0, Landroidx/media3/extractor/ts/MpeghReader;->s:I

    iget-wide v2, v0, Landroidx/media3/extractor/ts/MpeghReader;->u:J

    iget-wide v4, v12, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_26

    iput-wide v4, v0, Landroidx/media3/extractor/ts/MpeghReader;->u:J

    const-string v2, "mhm1"

    const/4 v3, -0x1

    if-eq v10, v3, :cond_24

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, ".%02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_24
    if-eqz v6, :cond_25

    array-length v3, v6

    if-lez v3, :cond_25

    sget-object v3, Landroidx/media3/common/util/Util;->b:[B

    invoke-static {v3, v6}, Lcom/google/common/collect/ImmutableList;->D(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    goto :goto_e

    :cond_25
    const/4 v9, 0x0

    :goto_e
    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v4, v0, Landroidx/media3/extractor/ts/MpeghReader;->f:Ljava/lang/String;

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget-object v4, v0, Landroidx/media3/extractor/ts/MpeghReader;->a:Ljava/lang/String;

    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    const-string v4, "audio/mhm1"

    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iget v4, v0, Landroidx/media3/extractor/ts/MpeghReader;->r:I

    iput v4, v3, Landroidx/media3/common/Format$Builder;->G:I

    iput-object v2, v3, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    iput-object v9, v3, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget-object v3, v0, Landroidx/media3/extractor/ts/MpeghReader;->g:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v3, v2}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    :cond_26
    const/4 v11, 0x1

    iput-boolean v11, v0, Landroidx/media3/extractor/ts/MpeghReader;->v:Z

    goto :goto_13

    :cond_27
    if-ne v2, v10, :cond_2a

    new-instance v2, Landroidx/media3/common/util/ParsableBitArray;

    iget-object v3, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/16 v14, 0xd

    invoke-virtual {v2, v14}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v5

    goto :goto_f

    :cond_28
    const/4 v5, 0x0

    :goto_f
    iput v5, v0, Landroidx/media3/extractor/ts/MpeghReader;->t:I

    :cond_29
    :goto_10
    const/4 v11, 0x1

    goto :goto_13

    :cond_2a
    if-ne v2, v13, :cond_29

    iget-boolean v2, v0, Landroidx/media3/extractor/ts/MpeghReader;->v:Z

    if-eqz v2, :cond_2b

    const/4 v14, 0x0

    iput-boolean v14, v0, Landroidx/media3/extractor/ts/MpeghReader;->k:Z

    const/4 v5, 0x1

    goto :goto_11

    :cond_2b
    const/4 v5, 0x0

    :goto_11
    iget v2, v0, Landroidx/media3/extractor/ts/MpeghReader;->s:I

    iget v3, v0, Landroidx/media3/extractor/ts/MpeghReader;->t:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v6

    iget v4, v0, Landroidx/media3/extractor/ts/MpeghReader;->r:I

    int-to-double v6, v4

    div-double/2addr v2, v6

    iget-wide v6, v0, Landroidx/media3/extractor/ts/MpeghReader;->h:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    iget-boolean v4, v0, Landroidx/media3/extractor/ts/MpeghReader;->j:Z

    if-eqz v4, :cond_2c

    const/4 v14, 0x0

    iput-boolean v14, v0, Landroidx/media3/extractor/ts/MpeghReader;->j:Z

    iget-wide v2, v0, Landroidx/media3/extractor/ts/MpeghReader;->i:D

    iput-wide v2, v0, Landroidx/media3/extractor/ts/MpeghReader;->h:D

    goto :goto_12

    :cond_2c
    iget-wide v8, v0, Landroidx/media3/extractor/ts/MpeghReader;->h:D

    add-double/2addr v8, v2

    iput-wide v8, v0, Landroidx/media3/extractor/ts/MpeghReader;->h:D

    :goto_12
    iget-object v2, v0, Landroidx/media3/extractor/ts/MpeghReader;->g:Landroidx/media3/extractor/TrackOutput;

    move-wide v3, v6

    iget v6, v0, Landroidx/media3/extractor/ts/MpeghReader;->p:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    const/4 v14, 0x0

    iput-boolean v14, v0, Landroidx/media3/extractor/ts/MpeghReader;->v:Z

    iput v14, v0, Landroidx/media3/extractor/ts/MpeghReader;->t:I

    iput v14, v0, Landroidx/media3/extractor/ts/MpeghReader;->p:I

    goto :goto_10

    :goto_13
    iput v11, v0, Landroidx/media3/extractor/ts/MpeghReader;->e:I

    goto/16 :goto_0

    :cond_2d
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_2e
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v2

    iget-object v3, v0, Landroidx/media3/extractor/ts/MpeghReader;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v5, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-virtual {v1, v5, v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v2

    if-nez v2, :cond_3e

    iget v2, v3, Landroidx/media3/common/util/ParsableByteArray;->c:I

    iget-object v4, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget-object v5, v0, Landroidx/media3/extractor/ts/MpeghReader;->c:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v2, v4}, Landroidx/media3/common/util/ParsableBitArray;->k(I[B)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableBitArray;->d()I

    const/16 v4, 0x8

    const/4 v14, 0x3

    invoke-static {v5, v14, v4, v4}, Landroidx/media3/extractor/ts/MpeghUtil;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v6

    iput v6, v12, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->a:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_30

    :cond_2f
    :goto_14
    const/4 v4, 0x0

    goto/16 :goto_19

    :cond_30
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v4, 0x20

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v7, 0x3f

    if-gt v6, v7, :cond_31

    const/4 v6, 0x1

    goto :goto_15

    :cond_31
    const/4 v6, 0x0

    :goto_15
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->g(Z)V

    const-wide/16 v6, 0x3

    const-wide/16 v14, 0xff

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v8

    move-wide/from16 v17, v6

    const-wide v6, 0x100000000L

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->addExact(JJ)J

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    move-result v6

    const-wide/16 v7, -0x1

    if-ge v6, v13, :cond_32

    :goto_16
    move-wide v14, v7

    goto :goto_17

    :cond_32
    invoke-virtual {v5, v13}, Landroidx/media3/common/util/ParsableBitArray;->i(I)J

    move-result-wide v20

    cmp-long v6, v20, v17

    if-nez v6, :cond_35

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    move-result v6

    const/16 v9, 0x8

    if-ge v6, v9, :cond_33

    goto :goto_16

    :cond_33
    invoke-virtual {v5, v9}, Landroidx/media3/common/util/ParsableBitArray;->i(I)J

    move-result-wide v17

    add-long v20, v20, v17

    cmp-long v6, v17, v14

    if-nez v6, :cond_35

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    move-result v6

    if-ge v6, v4, :cond_34

    goto :goto_16

    :cond_34
    invoke-virtual {v5, v4}, Landroidx/media3/common/util/ParsableBitArray;->i(I)J

    move-result-wide v14

    add-long v20, v14, v20

    :cond_35
    move-wide/from16 v14, v20

    :goto_17
    iput-wide v14, v12, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->b:J

    cmp-long v4, v14, v7

    if-nez v4, :cond_36

    goto :goto_14

    :cond_36
    const-wide/16 v6, 0x10

    cmp-long v4, v14, v6

    if-gtz v4, :cond_3d

    const-wide/16 v6, 0x0

    cmp-long v4, v14, v6

    if-nez v4, :cond_3a

    iget v4, v12, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->a:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_39

    if-eq v4, v13, :cond_38

    if-eq v4, v10, :cond_37

    goto :goto_18

    :cond_37
    const-string v0, "AudioTruncation packet with invalid packet label 0"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_38
    const/4 v1, 0x0

    const-string v0, "Mpegh3daFrame packet with invalid packet label 0"

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_39
    const/4 v1, 0x0

    const-string v0, "Mpegh3daConfig packet with invalid packet label 0"

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_3a
    :goto_18
    const/16 v4, 0xb

    const/16 v6, 0x18

    invoke-static {v5, v4, v6, v6}, Landroidx/media3/extractor/ts/MpeghUtil;->a(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v4

    iput v4, v12, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->c:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_2f

    const/4 v4, 0x1

    :goto_19
    if-eqz v4, :cond_3b

    const/4 v14, 0x0

    iput v14, v0, Landroidx/media3/extractor/ts/MpeghReader;->o:I

    iget v5, v0, Landroidx/media3/extractor/ts/MpeghReader;->p:I

    iget v6, v12, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->c:I

    add-int/2addr v6, v2

    add-int/2addr v6, v5

    iput v6, v0, Landroidx/media3/extractor/ts/MpeghReader;->p:I

    goto :goto_1a

    :cond_3b
    const/4 v14, 0x0

    :goto_1a
    if-eqz v4, :cond_3c

    invoke-virtual {v3, v14}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v2, v0, Landroidx/media3/extractor/ts/MpeghReader;->g:Landroidx/media3/extractor/TrackOutput;

    iget v4, v3, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-interface {v2, v4, v3}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual {v3, v13}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget v2, v12, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->c:I

    invoke-virtual {v11, v2}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    const/4 v11, 0x1

    iput-boolean v11, v0, Landroidx/media3/extractor/ts/MpeghReader;->n:Z

    iput v13, v0, Landroidx/media3/extractor/ts/MpeghReader;->e:I

    goto/16 :goto_0

    :cond_3c
    iget v2, v3, Landroidx/media3/common/util/ParsableByteArray;->c:I

    const/16 v4, 0xf

    if-ge v2, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    const/4 v14, 0x0

    iput-boolean v14, v0, Landroidx/media3/extractor/ts/MpeghReader;->n:Z

    goto/16 :goto_0

    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Contains sub-stream with an invalid packet label "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v12, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_3e
    const/4 v14, 0x0

    iput-boolean v14, v0, Landroidx/media3/extractor/ts/MpeghReader;->n:Z

    goto/16 :goto_0

    :cond_3f
    iget v2, v0, Landroidx/media3/extractor/ts/MpeghReader;->l:I

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_40

    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto/16 :goto_0

    :cond_40
    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_41

    :goto_1b
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, v0, Landroidx/media3/extractor/ts/MpeghReader;->m:I

    const/16 v22, 0x8

    shl-int/lit8 v2, v2, 0x8

    iput v2, v0, Landroidx/media3/extractor/ts/MpeghReader;->m:I

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Landroidx/media3/extractor/ts/MpeghReader;->m:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    const v3, 0xc001a5

    if-ne v2, v3, :cond_42

    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    const/4 v14, 0x3

    sub-int/2addr v2, v14

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 v2, 0x0

    iput v2, v0, Landroidx/media3/extractor/ts/MpeghReader;->m:I

    :cond_41
    const/4 v11, 0x1

    goto :goto_1c

    :cond_42
    const/4 v14, 0x3

    goto :goto_1b

    :goto_1c
    iput v11, v0, Landroidx/media3/extractor/ts/MpeghReader;->e:I

    goto/16 :goto_0

    :cond_43
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x396c -> :sswitch_2
        0x3e80 -> :sswitch_2
        0x5622 -> :sswitch_3
        0x5dc0 -> :sswitch_3
        0x72d8 -> :sswitch_1
        0x7d00 -> :sswitch_1
        0xac44 -> :sswitch_0
        0xbb80 -> :sswitch_0
        0xe5b0 -> :sswitch_1
        0xfa00 -> :sswitch_1
        0x15888 -> :sswitch_0
        0x17700 -> :sswitch_0
    .end sparse-switch
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/MpeghReader;->e:I

    iput v0, p0, Landroidx/media3/extractor/ts/MpeghReader;->m:I

    iget-object v1, p0, Landroidx/media3/extractor/ts/MpeghReader;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iput v0, p0, Landroidx/media3/extractor/ts/MpeghReader;->o:I

    iput v0, p0, Landroidx/media3/extractor/ts/MpeghReader;->p:I

    const v1, -0x7fffffff

    iput v1, p0, Landroidx/media3/extractor/ts/MpeghReader;->r:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/extractor/ts/MpeghReader;->s:I

    iput v0, p0, Landroidx/media3/extractor/ts/MpeghReader;->t:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/media3/extractor/ts/MpeghReader;->u:J

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/MpeghReader;->v:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/MpeghReader;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/MpeghReader;->n:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/MpeghReader;->k:Z

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    iput-wide v0, p0, Landroidx/media3/extractor/ts/MpeghReader;->h:D

    iput-wide v0, p0, Landroidx/media3/extractor/ts/MpeghReader;->i:D

    return-void
.end method

.method public final d(Z)V
    .locals 0

    return-void
.end method

.method public final e(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/ts/MpeghReader;->f:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->g:Landroidx/media3/extractor/TrackOutput;

    return-void
.end method

.method public final f(IJ)V
    .locals 2

    iput p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->l:I

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->k:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->p:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->n:Z

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->j:Z

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->j:Z

    if-eqz p1, :cond_2

    long-to-double p1, p2

    iput-wide p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->i:D

    return-void

    :cond_2
    long-to-double p1, p2

    iput-wide p1, p0, Landroidx/media3/extractor/ts/MpeghReader;->h:D

    :cond_3
    return-void
.end method
