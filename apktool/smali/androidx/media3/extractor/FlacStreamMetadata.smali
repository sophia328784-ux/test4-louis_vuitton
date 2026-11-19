.class public final Landroidx/media3/extractor/FlacStreamMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:J

.field public final k:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

.field public final l:Landroidx/media3/common/Metadata;


# direct methods
.method public constructor <init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->a:I

    .line 95
    iput p2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->b:I

    .line 96
    iput p3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->c:I

    .line 97
    iput p4, p0, Landroidx/media3/extractor/FlacStreamMetadata;->d:I

    .line 98
    iput p5, p0, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    .line 99
    invoke-static {p5}, Landroidx/media3/extractor/FlacStreamMetadata;->d(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->f:I

    .line 100
    iput p6, p0, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    .line 101
    iput p7, p0, Landroidx/media3/extractor/FlacStreamMetadata;->h:I

    .line 102
    invoke-static {p7}, Landroidx/media3/extractor/FlacStreamMetadata;->a(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->i:I

    .line 103
    iput-wide p8, p0, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    .line 104
    iput-object p10, p0, Landroidx/media3/extractor/FlacStreamMetadata;->k:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    .line 105
    iput-object p11, p0, Landroidx/media3/extractor/FlacStreamMetadata;->l:Landroidx/media3/common/Metadata;

    return-void
.end method

.method public constructor <init>(IIIIIIIJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/extractor/metadata/flac/PictureFrame;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-static/range {p10 .. p10}, Landroidx/media3/extractor/VorbisUtil;->a(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v12, v0

    goto :goto_1

    .line 108
    :cond_0
    new-instance v1, Landroidx/media3/common/Metadata;

    move-object/from16 v2, p11

    invoke-direct {v1, v2}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v11, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    .line 109
    invoke-direct/range {v1 .. v12}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    mul-int/lit8 p2, p2, 0x8

    invoke-virtual {v0, p2}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result p2

    iput p2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->a:I

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->b:I

    const/16 p1, 0x18

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result p2

    iput p2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->c:I

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->d:I

    const/16 p1, 0x14

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    invoke-static {p1}, Landroidx/media3/extractor/FlacStreamMetadata;->d(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->f:I

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->h:I

    invoke-static {p1}, Landroidx/media3/extractor/FlacStreamMetadata;->a(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->i:I

    const/16 p1, 0x24

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->i(I)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->k:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    iput-object p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->l:Landroidx/media3/common/Metadata;

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_5

    const/16 v0, 0xc

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x14

    if-eq p0, v0, :cond_2

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static d(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0xb

    return p0

    :sswitch_3
    const/4 p0, 0x1

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_6
    const/16 p0, 0x8

    return p0

    :sswitch_7
    const/4 p0, 0x7

    return p0

    :sswitch_8
    const/4 p0, 0x6

    return p0

    :sswitch_9
    const/4 p0, 0x5

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final b()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget p0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    int-to-long v0, p0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final c([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;
    .locals 3

    const/4 v0, 0x4

    const/16 v1, -0x80

    aput-byte v1, p1, v0

    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->d:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->l:Landroidx/media3/common/Metadata;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p2}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object p2

    :goto_1
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v2, "audio/flac"

    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput v0, v1, Landroidx/media3/common/Format$Builder;->o:I

    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    iput v0, v1, Landroidx/media3/common/Format$Builder;->F:I

    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    iput v0, v1, Landroidx/media3/common/Format$Builder;->G:I

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget p0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->h:I

    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->C(ILjava/nio/ByteOrder;)I

    move-result p0

    iput p0, v1, Landroidx/media3/common/Format$Builder;->H:I

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v1, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    iput-object p2, v1, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    new-instance p0, Landroidx/media3/common/Format;

    invoke-direct {p0, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    return-object p0
.end method
