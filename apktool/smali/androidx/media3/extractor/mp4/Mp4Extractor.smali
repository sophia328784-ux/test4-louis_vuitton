.class public final Landroidx/media3/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;,
        Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;,
        Landroidx/media3/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static final synthetic G:I


# instance fields
.field public A:J

.field public B:Landroidx/media3/extractor/ExtractorOutput;

.field public C:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

.field public D:[[J

.field public E:I

.field public F:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

.field public final a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public final b:I

.field public final c:Z

.field public final d:Landroidx/media3/common/util/ParsableByteArray;

.field public final e:Landroidx/media3/common/util/ParsableByteArray;

.field public final f:Landroidx/media3/common/util/ParsableByteArray;

.field public final g:Landroidx/media3/common/util/ParsableByteArray;

.field public final h:Ljava/util/ArrayDeque;

.field public final i:Landroidx/media3/extractor/mp4/SefReader;

.field public final j:Ljava/util/ArrayList;

.field public k:Lcom/google/common/collect/ImmutableList;

.field public l:I

.field public m:I

.field public n:J

.field public o:I

.field public p:Landroidx/media3/common/util/ParsableByteArray;

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:J

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    sget-object v0, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    sget-object v0, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {p0, v0, p1}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iput p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->b:I

    and-int/lit16 p1, p2, 0x100

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->c:Z

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->k:Lcom/google/common/collect/ImmutableList;

    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iput p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->l:I

    new-instance p1, Landroidx/media3/extractor/mp4/SefReader;

    invoke-direct {p1}, Landroidx/media3/extractor/mp4/SefReader;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->i:Landroidx/media3/extractor/mp4/SefReader;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->j:Ljava/util/ArrayList;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->g:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->h:Ljava/util/ArrayDeque;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    sget-object p2, Landroidx/media3/container/NalUnitUtil;->a:[B

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->d:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->e:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->f:Landroidx/media3/common/util/ParsableByteArray;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    sget-object p1, Landroidx/media3/extractor/ExtractorOutput;->g0:Landroidx/media3/extractor/ExtractorOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->B:Landroidx/media3/extractor/ExtractorOutput;

    new-array p1, v0, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->C:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->r:I

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    iput-boolean v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->z:Z

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->l:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->l:I

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->i:Landroidx/media3/extractor/mp4/SefReader;

    iget-object p2, p1, Landroidx/media3/extractor/mp4/SefReader;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iput v0, p1, Landroidx/media3/extractor/mp4/SefReader;->b:I

    iget-object p0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->C:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length p1, p0

    move p2, v0

    :goto_0
    if-ge p2, p1, :cond_4

    aget-object v2, p0, p2

    iget-object v3, v2, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    invoke-virtual {v3, p3, p4}, Landroidx/media3/extractor/mp4/TrackSampleTable;->a(J)I

    move-result v4

    if-ne v4, v1, :cond_2

    invoke-virtual {v3, p3, p4}, Landroidx/media3/extractor/mp4/TrackSampleTable;->b(J)I

    move-result v4

    :cond_2
    iput v4, v2, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->e:I

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->d:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz v2, :cond_3

    iput-boolean v0, v2, Landroidx/media3/extractor/TrueHdSampleRechunker;->b:Z

    iput v0, v2, Landroidx/media3/extractor/TrueHdSampleRechunker;->c:I

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->b:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->B:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 3

    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->b:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {p1, v2, v0}, Landroidx/media3/extractor/mp4/Sniffer;->b(Landroidx/media3/extractor/ExtractorInput;ZZ)Landroidx/media3/extractor/SniffFailure;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->k:Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final e()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->k:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->c:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->z:Z

    if-eqz v3, :cond_1

    :cond_0
    const/16 v23, -0x1

    goto/16 :goto_22

    :cond_1
    :goto_0
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->l:I

    iget-object v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->h:Ljava/util/ArrayDeque;

    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->b:I

    iget-object v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->f:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v11, 0x0

    const/4 v15, 0x4

    const-wide/16 v16, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_46

    const-wide/32 v19, 0x40000

    if-eq v3, v5, :cond_38

    const-wide/16 v21, 0x8

    if-eq v3, v10, :cond_19

    const/4 v6, 0x3

    if-ne v3, v6, :cond_18

    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->i:Landroidx/media3/extractor/mp4/SefReader;

    iget-object v7, v3, Landroidx/media3/extractor/mp4/SefReader;->a:Ljava/util/ArrayList;

    iget v8, v3, Landroidx/media3/extractor/mp4/SefReader;->b:I

    if-eqz v8, :cond_14

    if-eq v8, v5, :cond_12

    const/16 v4, 0xb01

    const/16 v12, 0xb00

    const/16 v5, 0x890

    if-eq v8, v10, :cond_e

    if-ne v8, v6, :cond_d

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v16

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v18

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v20

    sub-long v18, v18, v20

    iget v3, v3, Landroidx/media3/extractor/mp4/SefReader;->c:I

    int-to-long v13, v3

    sub-long v13, v18, v13

    long-to-int v3, v13

    new-instance v13, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v13, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v14, v13, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v14, v9, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    move v1, v9

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/SefReader$DataReference;

    move v14, v9

    iget-wide v8, v3, Landroidx/media3/extractor/mp4/SefReader$DataReference;->a:J

    sub-long v8, v8, v16

    long-to-int v8, v8

    invoke-virtual {v13, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v13, v15}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move/from16 p1, v14

    invoke-virtual {v13, v8, v9}, Landroidx/media3/common/util/ParsableByteArray;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :goto_2
    const/4 v14, -0x1

    goto :goto_3

    :sswitch_0
    const-string v15, "Super_SlowMotion_BGM"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_2

    :cond_2
    const/4 v14, 0x4

    goto :goto_3

    :sswitch_1
    const-string v15, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_2

    :cond_3
    move v14, v6

    goto :goto_3

    :sswitch_2
    const-string v15, "Super_SlowMotion_Data"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_2

    :cond_4
    move v14, v10

    goto :goto_3

    :sswitch_3
    const-string v15, "Super_SlowMotion_Edit_Data"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_2

    :cond_5
    const/4 v14, 0x1

    goto :goto_3

    :sswitch_4
    const-string v15, "SlowMotion_Data"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    goto :goto_2

    :cond_6
    move/from16 v14, p1

    :goto_3
    packed-switch v14, :pswitch_data_0

    const-string v0, "Invalid SEF name"

    invoke-static {v11, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_0
    move v14, v4

    goto :goto_4

    :pswitch_1
    const/16 v14, 0xb04

    goto :goto_4

    :pswitch_2
    move v14, v12

    goto :goto_4

    :pswitch_3
    const/16 v14, 0xb03

    goto :goto_4

    :pswitch_4
    move v14, v5

    :goto_4
    iget v3, v3, Landroidx/media3/extractor/mp4/SefReader$DataReference;->b:I

    add-int/lit8 v8, v8, 0x8

    sub-int/2addr v3, v8

    if-eq v14, v5, :cond_8

    if-eq v14, v12, :cond_b

    if-eq v14, v4, :cond_b

    const/16 v3, 0xb03

    if-eq v14, v3, :cond_b

    const/16 v8, 0xb04

    if-ne v14, v8, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-static {}, Lr81;->b()V

    return p1

    :cond_8
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v3, v9}, Landroidx/media3/common/util/ParsableByteArray;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Landroidx/media3/extractor/mp4/SefReader;->e:Lcom/google/common/base/Splitter;

    invoke-virtual {v9, v3}, Lcom/google/common/base/Splitter;->d(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    move/from16 v9, p1

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_a

    sget-object v14, Landroidx/media3/extractor/mp4/SefReader;->d:Lcom/google/common/base/Splitter;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v8, v18

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v14, v8}, Lcom/google/common/base/Splitter;->d(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ne v14, v6, :cond_9

    move/from16 v14, p1

    :try_start_0
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    const/4 v14, 0x1

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v31

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v27, 0x1

    add-int/lit8 v8, v8, -0x1

    shl-int v33, v27, v8

    new-instance v28, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    invoke-direct/range {v28 .. v33}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    move-object/from16 v8, v28

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    const/16 p1, 0x0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {v0, v11}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_9
    invoke-static {v11, v11}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_a
    new-instance v3, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    invoke-direct {v3, v15}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;-><init>(Ljava/util/List;)V

    iget-object v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_6
    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x0

    const/4 v15, 0x4

    goto/16 :goto_1

    :cond_c
    const-wide/16 v8, 0x0

    iput-wide v8, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    :goto_7
    const/4 v1, 0x1

    goto/16 :goto_c

    :cond_d
    invoke-static {}, Lr81;->b()V

    const/4 v14, 0x0

    return v14

    :cond_e
    move v14, v9

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v8

    iget v11, v3, Landroidx/media3/extractor/mp4/SefReader;->c:I

    add-int/lit8 v11, v11, -0x14

    new-instance v13, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v13, v11}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v15, v13, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v15, v14, v11}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    const/4 v1, 0x0

    :goto_8
    div-int/lit8 v15, v11, 0xc

    if-ge v1, v15, :cond_10

    invoke-virtual {v13, v10}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->q()S

    move-result v15

    if-eq v15, v5, :cond_f

    if-eq v15, v12, :cond_f

    if-eq v15, v4, :cond_f

    const/16 v4, 0xb03

    if-eq v15, v4, :cond_f

    const/16 v4, 0xb04

    if-eq v15, v4, :cond_f

    const/16 v4, 0x8

    invoke-virtual {v13, v4}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    move/from16 v21, v11

    move-object/from16 v19, v13

    goto :goto_9

    :cond_f
    iget v4, v3, Landroidx/media3/extractor/mp4/SefReader;->c:I

    move-object/from16 v19, v13

    int-to-long v12, v4

    sub-long v12, v8, v12

    invoke-virtual/range {v19 .. v19}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v4

    move/from16 v21, v11

    int-to-long v10, v4

    sub-long/2addr v12, v10

    invoke-virtual/range {v19 .. v19}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v4

    new-instance v10, Landroidx/media3/extractor/mp4/SefReader$DataReference;

    invoke-direct {v10, v15, v12, v13, v4}, Landroidx/media3/extractor/mp4/SefReader$DataReference;-><init>(IJI)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v13, v19

    move/from16 v11, v21

    const/16 v4, 0xb01

    const/4 v10, 0x2

    const/16 v12, 0xb00

    goto :goto_8

    :cond_10
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const-wide/16 v8, 0x0

    iput-wide v8, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    const/4 v14, 0x0

    goto :goto_7

    :cond_11
    iput v6, v3, Landroidx/media3/extractor/mp4/SefReader;->b:I

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/SefReader$DataReference;

    iget-wide v3, v1, Landroidx/media3/extractor/mp4/SefReader$DataReference;->a:J

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    goto :goto_7

    :cond_12
    move v14, v9

    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v6, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v6, v14, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v6

    add-int/2addr v6, v5

    iput v6, v3, Landroidx/media3/extractor/mp4/SefReader;->c:I

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v4

    const v5, 0x53454654

    if-eq v4, v5, :cond_13

    const-wide/16 v8, 0x0

    iput-wide v8, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    goto/16 :goto_7

    :cond_13
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v1, v3, Landroidx/media3/extractor/mp4/SefReader;->c:I

    add-int/lit8 v1, v1, -0xc

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    const/4 v1, 0x2

    iput v1, v3, Landroidx/media3/extractor/mp4/SefReader;->b:I

    goto/16 :goto_7

    :cond_14
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    cmp-long v1, v4, v16

    if-eqz v1, :cond_16

    cmp-long v1, v4, v21

    if-gez v1, :cond_15

    goto :goto_a

    :cond_15
    sub-long v4, v4, v21

    goto :goto_b

    :cond_16
    :goto_a
    const-wide/16 v4, 0x0

    :goto_b
    iput-wide v4, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    const/4 v1, 0x1

    iput v1, v3, Landroidx/media3/extractor/mp4/SefReader;->b:I

    :goto_c
    iget-wide v2, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    const-wide/16 v25, 0x0

    cmp-long v2, v2, v25

    if-nez v2, :cond_17

    const/4 v14, 0x0

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->l:I

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    return v1

    :cond_17
    move v5, v1

    goto/16 :goto_20

    :cond_18
    move v14, v9

    invoke-static {}, Lr81;->b()V

    return v14

    :cond_19
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_24

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x1

    const/4 v15, 0x1

    const-wide v16, 0x7fffffffffffffffL

    const-wide v29, 0x7fffffffffffffffL

    const-wide v31, 0x7fffffffffffffffL

    const-wide v33, 0x7fffffffffffffffL

    :goto_d
    iget-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->C:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v6, v5

    if-ge v9, v6, :cond_21

    aget-object v5, v5, v9

    iget v6, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->e:I

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v14, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    if-ne v6, v14, :cond_1a

    goto :goto_10

    :cond_1a
    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->c:[J

    aget-wide v35, v5, v6

    iget-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->D:[[J

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v5, v5, v9

    aget-wide v5, v5, v6

    sub-long v35, v35, v3

    const-wide/16 v25, 0x0

    cmp-long v14, v35, v25

    if-ltz v14, :cond_1c

    cmp-long v14, v35, v19

    if-ltz v14, :cond_1b

    goto :goto_e

    :cond_1b
    const/4 v14, 0x0

    goto :goto_f

    :cond_1c
    :goto_e
    const/4 v14, 0x1

    :goto_f
    if-nez v14, :cond_1d

    if-nez v15, :cond_1e

    :cond_1d
    if-ne v14, v15, :cond_1f

    cmp-long v24, v35, v31

    if-gez v24, :cond_1f

    :cond_1e
    move-wide/from16 v29, v5

    move v12, v9

    move v15, v14

    move-wide/from16 v31, v35

    :cond_1f
    cmp-long v24, v5, v16

    if-gez v24, :cond_20

    move-wide/from16 v16, v5

    move v10, v9

    move v13, v14

    :cond_20
    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_21
    cmp-long v5, v16, v33

    if-eqz v5, :cond_22

    if-eqz v13, :cond_22

    const-wide/32 v5, 0xa00000

    add-long v16, v16, v5

    cmp-long v5, v29, v16

    if-gez v5, :cond_23

    :cond_22
    move v10, v12

    :cond_23
    iput v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    const/4 v6, -0x1

    if-ne v10, v6, :cond_24

    move/from16 v23, v6

    goto/16 :goto_22

    :cond_24
    iget-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->C:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    aget-object v5, v5, v6

    iget-object v6, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->c:Landroidx/media3/extractor/TrackOutput;

    iget-object v9, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v10, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->a:Landroidx/media3/extractor/mp4/Track;

    iget v12, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->e:I

    iget-object v13, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->c:[J

    iget-object v15, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->d:[I

    aget-wide v13, v13, v12

    move/from16 v16, v12

    iget-wide v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->A:J

    add-long/2addr v13, v11

    aget v11, v15, v16

    iget-object v12, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->d:Landroidx/media3/extractor/TrueHdSampleRechunker;

    sub-long v3, v13, v3

    move-wide/from16 v29, v3

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->r:I

    int-to-long v3, v3

    add-long v3, v29, v3

    const-wide/16 v25, 0x0

    cmp-long v17, v3, v25

    if-ltz v17, :cond_25

    cmp-long v17, v3, v19

    if-ltz v17, :cond_26

    :cond_25
    const/16 v27, 0x1

    goto/16 :goto_19

    :cond_26
    iget v2, v10, Landroidx/media3/extractor/mp4/Track;->h:I

    iget v13, v10, Landroidx/media3/extractor/mp4/Track;->k:I

    iget-object v10, v10, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    const/4 v14, 0x1

    if-ne v2, v14, :cond_27

    add-long v3, v3, v21

    add-int/lit8 v11, v11, -0x8

    :cond_27
    long-to-int v2, v3

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    iget-object v2, v10, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iget-object v3, v10, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    const-string v4, "video/avc"

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    and-int/lit8 v2, v7, 0x20

    if-eqz v2, :cond_28

    goto :goto_11

    :cond_28
    const/4 v14, 0x1

    goto :goto_12

    :cond_29
    const-string v2, "video/hevc"

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    and-int/lit16 v2, v7, 0x80

    if-eqz v2, :cond_28

    :goto_11
    const/4 v14, 0x1

    goto :goto_13

    :goto_12
    iput-boolean v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:Z

    :goto_13
    if-eqz v13, :cond_2f

    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->e:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v18, 0x0

    aput-byte v18, v3, v18

    aput-byte v18, v3, v14

    const/16 v28, 0x2

    aput-byte v18, v3, v28

    rsub-int/lit8 v4, v13, 0x4

    add-int/2addr v11, v4

    :cond_2a
    :goto_14
    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    if-ge v7, v11, :cond_2e

    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    if-nez v7, :cond_2d

    iget-boolean v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:Z

    if-nez v7, :cond_2b

    invoke-static {v10}, Landroidx/media3/container/NalUnitUtil;->e(Landroidx/media3/common/Format;)I

    move-result v7

    add-int/2addr v7, v13

    aget v8, v15, v16

    iget v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->r:I

    sub-int/2addr v8, v14

    if-gt v7, v8, :cond_2b

    invoke-static {v10}, Landroidx/media3/container/NalUnitUtil;->e(Landroidx/media3/common/Format;)I

    move-result v14

    add-int v7, v13, v14

    move v8, v14

    goto :goto_15

    :cond_2b
    move v7, v13

    const/4 v8, 0x0

    :goto_15
    invoke-interface {v1, v3, v4, v7}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->r:I

    add-int/2addr v14, v7

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->r:I

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v7

    if-ltz v7, :cond_2c

    sub-int/2addr v7, v8

    iput v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    iget-object v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->d:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7, v14}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 v14, 0x4

    invoke-interface {v6, v14, v7}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    add-int/2addr v7, v14

    iput v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    if-lez v8, :cond_2a

    invoke-interface {v6, v8, v2}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    add-int/2addr v7, v8

    iput v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    invoke-static {v3, v8, v10}, Landroidx/media3/container/NalUnitUtil;->d([BILandroidx/media3/common/Format;)Z

    move-result v7

    if-eqz v7, :cond_2a

    const/4 v14, 0x1

    iput-boolean v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:Z

    goto :goto_14

    :cond_2c
    const-string v0, "Invalid NAL length"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2d
    const/4 v14, 0x0

    invoke-interface {v6, v1, v7, v14}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    move-result v7

    iget v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->r:I

    add-int/2addr v8, v7

    iput v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->r:I

    iget v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    add-int/2addr v8, v7

    iput v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    iget v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    sub-int/2addr v8, v7

    iput v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    goto :goto_14

    :cond_2e
    move/from16 v33, v11

    goto/16 :goto_17

    :cond_2f
    const-string v2, "audio/ac4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    if-nez v2, :cond_30

    invoke-static {v11, v8}, Landroidx/media3/extractor/Ac4Util;->a(ILandroidx/media3/common/util/ParsableByteArray;)V

    const/4 v2, 0x7

    invoke-interface {v6, v2, v8}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    :cond_30
    add-int/lit8 v11, v11, 0x7

    goto :goto_16

    :cond_31
    iget-object v2, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->f:Landroidx/media3/common/Format;

    if-eqz v2, :cond_33

    const-string v2, "audio/mpeg"

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->f:Landroidx/media3/common/Format;

    const/4 v3, 0x4

    invoke-virtual {v8, v3}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v4, v8, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v14, 0x0

    invoke-interface {v1, v14, v3, v4}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    new-instance v3, Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-direct {v3}, Landroidx/media3/extractor/MpegAudioUtil$Header;-><init>()V

    iget-object v4, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->c:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v7

    invoke-virtual {v3, v7}, Landroidx/media3/extractor/MpegAudioUtil$Header;->a(I)Z

    move-result v7

    if-eqz v7, :cond_32

    iget-object v7, v2, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iget-object v8, v3, Landroidx/media3/extractor/MpegAudioUtil$Header;->b:Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32

    invoke-virtual {v2}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget-object v3, v3, Landroidx/media3/extractor/MpegAudioUtil$Header;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    new-instance v3, Landroidx/media3/common/Format;

    invoke-direct {v3, v2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    move-object v2, v3

    :cond_32
    invoke-interface {v4, v2}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    const/4 v2, 0x0

    iput-object v2, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->f:Landroidx/media3/common/Format;

    goto :goto_16

    :cond_33
    if-eqz v12, :cond_34

    invoke-virtual {v12, v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->c(Landroidx/media3/extractor/ExtractorInput;)V

    :cond_34
    :goto_16
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    if-ge v2, v11, :cond_2e

    sub-int v2, v11, v2

    const/4 v14, 0x0

    invoke-interface {v6, v1, v2, v14}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    move-result v2

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->r:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->r:I

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    sub-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    goto :goto_16

    :goto_17
    iget-object v1, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->f:[J

    aget-wide v30, v1, v16

    iget-object v1, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->g:[I

    aget v1, v1, v16

    iget-boolean v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:Z

    if-nez v2, :cond_35

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    :cond_35
    move/from16 v32, v1

    if-eqz v12, :cond_36

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v29, v12

    move/from16 v34, v33

    move/from16 v33, v32

    move-wide/from16 v31, v30

    move-object/from16 v30, v6

    invoke-virtual/range {v29 .. v36}, Landroidx/media3/extractor/TrueHdSampleRechunker;->b(Landroidx/media3/extractor/TrackOutput;JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    move-object/from16 v2, v29

    move-object/from16 v1, v30

    const/16 v27, 0x1

    add-int/lit8 v12, v16, 0x1

    iget v3, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    if-ne v12, v3, :cond_37

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroidx/media3/extractor/TrueHdSampleRechunker;->a(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/TrackOutput$CryptoData;)V

    goto :goto_18

    :cond_36
    move-object v1, v6

    const/16 v27, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v29, v1

    invoke-interface/range {v29 .. v35}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_37
    :goto_18
    iget v1, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->e:I

    const/4 v6, -0x1

    iput v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    const/4 v14, 0x0

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->r:I

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    iput-boolean v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:Z

    return v14

    :goto_19
    iput-wide v13, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    return v27

    :cond_38
    iget-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:J

    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    int-to-long v7, v5

    sub-long/2addr v3, v7

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v3

    iget-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->p:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v5, :cond_41

    iget-object v9, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    long-to-int v3, v3

    invoke-interface {v1, v9, v10, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->m:I

    const v4, 0x66747970

    if-ne v3, v4, :cond_40

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->v:Z

    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v3

    const v4, 0x71742020

    const v6, 0x68656963

    if-eq v3, v6, :cond_3a

    if-eq v3, v4, :cond_39

    const/4 v3, 0x0

    goto :goto_1a

    :cond_39
    const/4 v3, 0x1

    goto :goto_1a

    :cond_3a
    const/4 v3, 0x2

    :goto_1a
    if-eqz v3, :cond_3b

    goto :goto_1c

    :cond_3b
    const/4 v3, 0x4

    invoke-virtual {v5, v3}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_3c
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v3

    if-lez v3, :cond_3f

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v3

    if-eq v3, v6, :cond_3e

    if-eq v3, v4, :cond_3d

    const/4 v3, 0x0

    goto :goto_1b

    :cond_3d
    const/4 v3, 0x1

    goto :goto_1b

    :cond_3e
    const/4 v3, 0x2

    :goto_1b
    if-eqz v3, :cond_3c

    goto :goto_1c

    :cond_3f
    const/4 v3, 0x0

    :goto_1c
    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->E:I

    goto :goto_1d

    :cond_40
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_43

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    new-instance v4, Landroidx/media3/container/Mp4Box$LeafBox;

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->m:I

    invoke-direct {v4, v6, v5}, Landroidx/media3/container/Mp4Box$LeafBox;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget-object v3, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_41
    iget-boolean v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->v:Z

    if-nez v5, :cond_42

    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->m:I

    const v6, 0x6d646174

    if-ne v5, v6, :cond_42

    const/4 v5, 0x1

    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->E:I

    :cond_42
    cmp-long v5, v3, v19

    if-gez v5, :cond_44

    long-to-int v3, v3

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    :cond_43
    :goto_1d
    const/4 v3, 0x0

    goto :goto_1e

    :cond_44
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    add-long/2addr v5, v3

    iput-wide v5, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    const/4 v3, 0x1

    :goto_1e
    invoke-virtual {v0, v7, v8}, Landroidx/media3/extractor/mp4/Mp4Extractor;->g(J)V

    iget-boolean v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->w:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_45

    iput-boolean v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->y:Z

    iget-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->x:J

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    const/4 v14, 0x0

    iput-boolean v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->w:Z

    move/from16 v27, v5

    goto :goto_1f

    :cond_45
    move/from16 v27, v3

    :goto_1f
    if-eqz v27, :cond_1

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->l:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    :goto_20
    return v5

    :cond_46
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    iget-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->g:Landroidx/media3/common/util/ParsableByteArray;

    if-nez v3, :cond_49

    iget-object v3, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v9, 0x8

    const/4 v14, 0x0

    invoke-interface {v1, v5, v14, v9, v3}, Landroidx/media3/extractor/ExtractorInput;->h(ZII[B)Z

    move-result v3

    if-nez v3, :cond_48

    iget v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->E:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    and-int/lit8 v1, v7, 0x2

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->B:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v3, 0x4

    invoke-interface {v1, v14, v3}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->F:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    if-nez v2, :cond_47

    const/4 v11, 0x0

    goto :goto_21

    :cond_47
    new-instance v11, Landroidx/media3/common/Metadata;

    const/4 v5, 0x1

    new-array v3, v5, [Landroidx/media3/common/Metadata$Entry;

    aput-object v2, v3, v14

    invoke-direct {v11, v3}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    :goto_21
    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v11, v2, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    invoke-static {v2, v1}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->B:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    iget-object v0, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->B:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    const/16 v23, -0x1

    :goto_22
    return v23

    :cond_48
    const/16 v5, 0x8

    const/16 v23, -0x1

    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v9

    iput-wide v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:J

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v3

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->m:I

    goto :goto_23

    :cond_49
    const/16 v23, -0x1

    :goto_23
    iget-wide v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:J

    const-wide/16 v11, 0x1

    cmp-long v3, v9, v11

    if-nez v3, :cond_4a

    iget-object v3, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v5, 0x8

    invoke-interface {v1, v3, v5, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    add-int/2addr v3, v5

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->G()J

    move-result-wide v9

    iput-wide v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:J

    goto :goto_24

    :cond_4a
    const-wide/16 v25, 0x0

    cmp-long v3, v9, v25

    if-nez v3, :cond_4c

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v9

    cmp-long v3, v9, v16

    if-nez v3, :cond_4b

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    if-eqz v3, :cond_4b

    iget-wide v9, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->b:J

    :cond_4b
    cmp-long v3, v9, v16

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    sub-long/2addr v9, v11

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    int-to-long v11, v3

    add-long/2addr v9, v11

    iput-wide v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:J

    :cond_4c
    :goto_24
    iget-wide v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:J

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    int-to-long v11, v3

    cmp-long v5, v9, v11

    if-gez v5, :cond_4e

    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->m:I

    const v7, 0x66726565

    if-ne v5, v7, :cond_4d

    const/16 v5, 0x8

    if-ne v3, v5, :cond_4d

    iput-wide v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:J

    goto :goto_25

    :cond_4d
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_4e
    :goto_25
    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->m:I

    const v7, 0x6d6f6f76

    const v9, 0x6d657461

    if-eq v5, v7, :cond_55

    const v7, 0x7472616b

    if-eq v5, v7, :cond_55

    const v7, 0x6d646961

    if-eq v5, v7, :cond_55

    const v7, 0x6d696e66

    if-eq v5, v7, :cond_55

    const v7, 0x7374626c

    if-eq v5, v7, :cond_55

    const v7, 0x65647473

    if-eq v5, v7, :cond_55

    if-eq v5, v9, :cond_55

    const v7, 0x61787465

    if-ne v5, v7, :cond_4f

    goto/16 :goto_29

    :cond_4f
    const v6, 0x6d646864

    if-eq v5, v6, :cond_50

    const v6, 0x6d766864

    if-eq v5, v6, :cond_50

    const v6, 0x68646c72    # 4.3148E24f

    if-eq v5, v6, :cond_50

    const v6, 0x73747364

    if-eq v5, v6, :cond_50

    const v6, 0x73747473

    if-eq v5, v6, :cond_50

    const v6, 0x73747373

    if-eq v5, v6, :cond_50

    const v6, 0x63747473

    if-eq v5, v6, :cond_50

    const v6, 0x656c7374

    if-eq v5, v6, :cond_50

    const v6, 0x73747363

    if-eq v5, v6, :cond_50

    const v6, 0x7374737a

    if-eq v5, v6, :cond_50

    const v6, 0x73747a32

    if-eq v5, v6, :cond_50

    const v6, 0x7374636f

    if-eq v5, v6, :cond_50

    const v6, 0x636f3634

    if-eq v5, v6, :cond_50

    const v6, 0x746b6864

    if-eq v5, v6, :cond_50

    const v6, 0x66747970

    if-eq v5, v6, :cond_50

    const v6, 0x75647461

    if-eq v5, v6, :cond_50

    const v6, 0x6b657973

    if-eq v5, v6, :cond_50

    const v6, 0x696c7374

    if-ne v5, v6, :cond_51

    :cond_50
    const/16 v5, 0x8

    goto :goto_26

    :cond_51
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    int-to-long v5, v5

    sub-long v10, v3, v5

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->m:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_52

    new-instance v7, Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    add-long v14, v10, v5

    iget-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:J

    sub-long v16, v3, v5

    const-wide/16 v8, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v7 .. v17}, Landroidx/media3/extractor/metadata/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->F:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    :cond_52
    const/4 v3, 0x0

    iput-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->p:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v14, 0x1

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->l:I

    goto/16 :goto_0

    :goto_26
    if-ne v3, v5, :cond_53

    const/4 v3, 0x1

    goto :goto_27

    :cond_53
    const/4 v3, 0x0

    :goto_27
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-wide v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v5, v7

    if-gtz v3, :cond_54

    const/4 v3, 0x1

    goto :goto_28

    :cond_54
    const/4 v3, 0x0

    :goto_28
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    iget-wide v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:J

    long-to-int v5, v5

    invoke-direct {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v4, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget-object v5, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v9, 0x8

    const/4 v14, 0x0

    invoke-static {v4, v14, v5, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->p:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v14, 0x1

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->l:I

    goto/16 :goto_0

    :cond_55
    :goto_29
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-wide v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:J

    add-long/2addr v3, v10

    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    int-to-long v12, v5

    sub-long/2addr v3, v12

    cmp-long v5, v10, v12

    if-eqz v5, :cond_56

    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->m:I

    if-ne v5, v9, :cond_56

    const/16 v5, 0x8

    invoke-virtual {v8, v5}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v7, v8, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v14, 0x0

    invoke-interface {v1, v14, v5, v7}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-static {v8}, Landroidx/media3/extractor/mp4/BoxParser;->a(Landroidx/media3/common/util/ParsableByteArray;)V

    iget v5, v8, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    :cond_56
    new-instance v5, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->m:I

    invoke-direct {v5, v7, v3, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;-><init>(IJ)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:J

    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_57

    invoke-virtual {v0, v3, v4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->g(J)V

    goto/16 :goto_0

    :cond_57
    const/4 v14, 0x0

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->l:I

    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(J)V
    .locals 44

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v2, :cond_3c

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-wide v5, v2, Landroidx/media3/container/Mp4Box$ContainerBox;->b:J

    cmp-long v2, v5, p1

    if-nez v2, :cond_3c

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v2, v5, Landroidx/media3/container/Mp4Box;->a:I

    const v6, 0x6d6f6f76

    if-ne v2, v6, :cond_3b

    const v2, 0x6d657461

    invoke-virtual {v5, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v15, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->c:Z

    const/4 v7, 0x1

    const-wide/16 v16, 0x0

    iget v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->b:I

    if-eqz v2, :cond_16

    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->e(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroidx/media3/common/Metadata;

    move-result-object v2

    iget-boolean v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->y:Z

    const-class v10, Landroidx/media3/container/MdtaMetadataEntry;

    if-eqz v9, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v2, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    array-length v9, v6

    move v11, v3

    :goto_1
    if-ge v11, v9, :cond_3

    aget-object v12, v6, v11

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v10, v12}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/common/Metadata$Entry;

    move-object v13, v12

    check-cast v13, Landroidx/media3/container/MdtaMetadataEntry;

    iget-object v13, v13, Landroidx/media3/container/MdtaMetadataEntry;->a:Ljava/lang/String;

    const-string v14, "auxiliary.tracks.interleaved"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    :goto_3
    check-cast v12, Landroidx/media3/container/MdtaMetadataEntry;

    if-eqz v12, :cond_4

    iget-object v9, v12, Landroidx/media3/container/MdtaMetadataEntry;->b:[B

    aget-byte v9, v9, v3

    if-nez v9, :cond_4

    iget-wide v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->x:J

    const-wide/16 v13, 0x10

    add-long/2addr v11, v13

    iput-wide v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->A:J

    :cond_4
    array-length v9, v6

    move v11, v3

    :goto_4
    if-ge v11, v9, :cond_7

    aget-object v12, v6, v11

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v10, v12}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/common/Metadata$Entry;

    move-object v13, v12

    check-cast v13, Landroidx/media3/container/MdtaMetadataEntry;

    iget-object v13, v13, Landroidx/media3/container/MdtaMetadataEntry;->a:Ljava/lang/String;

    const-string v14, "auxiliary.tracks.map"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    :goto_6
    check-cast v12, Landroidx/media3/container/MdtaMetadataEntry;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Landroidx/media3/container/MdtaMetadataEntry;->d()Ljava/util/ArrayList;

    move-result-object v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move v10, v3

    :goto_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_c

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_a

    if-eq v11, v7, :cond_9

    const/4 v12, 0x3

    if-eq v11, v4, :cond_b

    if-eq v11, v12, :cond_8

    move v12, v3

    goto :goto_8

    :cond_8
    const/4 v12, 0x4

    goto :goto_8

    :cond_9
    move v12, v4

    goto :goto_8

    :cond_a
    move v12, v7

    :cond_b
    :goto_8
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_c
    move/from16 v19, v3

    move-object v3, v9

    goto/16 :goto_d

    :cond_d
    if-eqz v2, :cond_e

    and-int/lit8 v9, v8, 0x40

    if-nez v9, :cond_f

    :cond_e
    move/from16 v19, v3

    goto :goto_c

    :cond_f
    iget-object v9, v2, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    array-length v11, v9

    move v12, v3

    :goto_9
    if-ge v12, v11, :cond_13

    aget-object v13, v9, v12

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual {v10, v13}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/common/Metadata$Entry;

    move-object v14, v13

    check-cast v14, Landroidx/media3/container/MdtaMetadataEntry;

    iget-object v14, v14, Landroidx/media3/container/MdtaMetadataEntry;->a:Ljava/lang/String;

    move/from16 v19, v3

    const-string v3, "auxiliary.tracks.offset"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_a

    :cond_10
    move/from16 v19, v3

    :cond_11
    const/4 v13, 0x0

    :goto_a
    if-eqz v13, :cond_12

    goto :goto_b

    :cond_12
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v19

    goto :goto_9

    :cond_13
    move/from16 v19, v3

    const/4 v13, 0x0

    :goto_b
    check-cast v13, Landroidx/media3/container/MdtaMetadataEntry;

    if-nez v13, :cond_14

    goto :goto_c

    :cond_14
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v9, v13, Landroidx/media3/container/MdtaMetadataEntry;->b:[B

    invoke-direct {v3, v9}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()J

    move-result-wide v9

    cmp-long v3, v9, v16

    if-gtz v3, :cond_15

    goto :goto_c

    :cond_15
    iput-wide v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->x:J

    iput-boolean v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->w:Z

    move-object/from16 v26, v1

    move/from16 v20, v7

    move/from16 v30, v15

    goto/16 :goto_30

    :goto_c
    move-object v3, v6

    goto :goto_d

    :cond_16
    move/from16 v19, v3

    move-object v3, v6

    const/4 v2, 0x0

    :goto_d
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->E:I

    if-ne v6, v7, :cond_17

    move v11, v7

    goto :goto_e

    :cond_17
    move/from16 v11, v19

    :goto_e
    new-instance v6, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {v6}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    const v9, 0x75647461

    invoke-virtual {v5, v9}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v9

    if-eqz v9, :cond_18

    invoke-static {v9}, Landroidx/media3/extractor/mp4/BoxParser;->j(Landroidx/media3/container/Mp4Box$LeafBox;)Landroidx/media3/common/Metadata;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/media3/extractor/GaplessInfoHolder;->b(Landroidx/media3/common/Metadata;)V

    goto :goto_f

    :cond_18
    const/4 v9, 0x0

    :goto_f
    new-instance v10, Landroidx/media3/common/Metadata;

    const v12, 0x6d766864

    invoke-virtual {v5, v12}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v12, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v12}, Landroidx/media3/extractor/mp4/BoxParser;->f(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    move-result-object v12

    new-array v13, v7, [Landroidx/media3/common/Metadata$Entry;

    aput-object v12, v13, v19

    invoke-direct {v10, v13}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    and-int/lit8 v12, v8, 0x1

    if-eqz v12, :cond_19

    move-object v12, v10

    move v10, v7

    goto :goto_10

    :cond_19
    move-object v12, v10

    move/from16 v10, v19

    :goto_10
    new-instance v13, Luh;

    const/16 v7, 0xb

    invoke-direct {v13, v7}, Luh;-><init>(I)V

    move-object v7, v12

    move-object v12, v13

    iget-boolean v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->c:Z

    move-object/from16 v21, v7

    move/from16 v22, v8

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v23, v9

    const/4 v9, 0x0

    move-object/from16 v25, v21

    move-object/from16 v24, v23

    invoke-static/range {v5 .. v13}, Landroidx/media3/extractor/mp4/BoxParser;->i(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;Z)Ljava/util/ArrayList;

    move-result-object v5

    iget-boolean v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->y:Z

    if-eqz v7, :cond_1b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v7, v8, :cond_1a

    const/4 v7, 0x1

    goto :goto_11

    :cond_1a
    move/from16 v7, v19

    :goto_11
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-string v10, ") is not same as the number of auxiliary tracks ("

    const-string v11, ")"

    const-string v12, "The number of auxiliary track types from metadata ("

    invoke-static {v8, v9, v12, v10, v11}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    :cond_1b
    invoke-static {v5}, Landroidx/media3/extractor/mp4/MimeTypeResolver;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    move/from16 v11, v19

    move v12, v11

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, -0x1

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    :goto_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v11, v8, :cond_34

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v4, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    move-object/from16 v26, v1

    iget-object v1, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->f:[J

    move/from16 v27, v4

    iget-object v4, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    if-nez v27, :cond_1c

    move-object/from16 v36, v3

    move-object/from16 v27, v5

    move-object/from16 v28, v7

    move/from16 v35, v11

    move/from16 v29, v12

    move-object v3, v14

    move/from16 v30, v15

    move-object/from16 v7, v24

    move-object/from16 v11, v25

    const/4 v1, -0x1

    move-object v12, v6

    const/4 v6, 0x1

    goto/16 :goto_29

    :cond_1c
    move-object/from16 v27, v5

    new-instance v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v28, v7

    iget-object v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->B:Landroidx/media3/extractor/ExtractorOutput;

    add-int/lit8 v29, v12, 0x1

    move/from16 v30, v15

    iget v15, v4, Landroidx/media3/extractor/mp4/Track;->b:I

    move-object/from16 v31, v14

    iget-object v14, v4, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    invoke-interface {v7, v12, v15}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v7

    invoke-direct {v5, v4, v8, v7}, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/TrackOutput;)V

    move-object v12, v6

    iget-wide v6, v4, Landroidx/media3/extractor/mp4/Track;->e:J

    cmp-long v4, v6, v20

    if-eqz v4, :cond_1d

    goto :goto_13

    :cond_1d
    iget-wide v6, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->i:J

    :goto_13
    iget-object v4, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->c:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v4, v6, v7}, Landroidx/media3/extractor/TrackOutput;->e(J)V

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    move-wide/from16 v32, v9

    iget-object v9, v14, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iget-object v10, v14, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    move-object/from16 v34, v12

    const-string v12, "audio/true-hd"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget v12, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->e:I

    if-eqz v9, :cond_1e

    mul-int/lit8 v12, v12, 0x10

    goto :goto_14

    :cond_1e
    add-int/lit8 v12, v12, 0x1e

    :goto_14
    invoke-virtual {v14}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v9

    iput v12, v9, Landroidx/media3/common/Format$Builder;->o:I

    const/4 v12, 0x2

    if-ne v15, v12, :cond_22

    iget v12, v14, Landroidx/media3/common/Format;->f:I

    and-int/lit8 v35, v22, 0x8

    if-eqz v35, :cond_20

    move/from16 v35, v12

    const/4 v12, -0x1

    if-ne v13, v12, :cond_1f

    const/4 v12, 0x1

    goto :goto_15

    :cond_1f
    const/4 v12, 0x2

    :goto_15
    or-int v12, v35, v12

    :cond_20
    move/from16 v35, v12

    iget-boolean v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->y:Z

    if-eqz v12, :cond_21

    const v12, 0x8000

    or-int v12, v35, v12

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    move-object/from16 v36, v3

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v9, Landroidx/media3/common/Format$Builder;->g:I

    goto :goto_16

    :cond_21
    move-object/from16 v36, v3

    move/from16 v12, v35

    :goto_16
    iput v12, v9, Landroidx/media3/common/Format$Builder;->f:I

    goto :goto_17

    :cond_22
    move-object/from16 v36, v3

    :goto_17
    iget-object v3, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->h:[I

    iget-boolean v12, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->j:Z

    invoke-static {v10}, Landroidx/media3/common/MimeTypes;->o(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2c

    move/from16 v35, v11

    array-length v11, v1

    if-lez v11, :cond_2a

    if-eqz v12, :cond_23

    iget v11, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    :goto_18
    move-object/from16 v37, v1

    goto :goto_19

    :cond_23
    array-length v11, v3

    goto :goto_18

    :goto_19
    const/16 v1, 0x14

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    cmp-long v11, v6, v20

    if-eqz v11, :cond_24

    const/4 v11, 0x1

    goto :goto_1a

    :cond_24
    move/from16 v11, v19

    :goto_1a
    invoke-static {v11}, Lcom/google/common/base/Preconditions;->q(Z)V

    move/from16 v38, v12

    const-wide/32 v11, 0x989680

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-object/from16 v39, v3

    move/from16 v11, v19

    move v12, v11

    const/4 v3, -0x1

    :goto_1b
    if-ge v11, v1, :cond_26

    if-eqz v38, :cond_25

    move/from16 v40, v11

    goto :goto_1c

    :cond_25
    aget v40, v39, v11

    :goto_1c
    aget-wide v41, v37, v40

    cmp-long v43, v41, v6

    if-lez v43, :cond_27

    :cond_26
    const/4 v12, -0x1

    goto :goto_1e

    :cond_27
    cmp-long v41, v41, v16

    if-ltz v41, :cond_28

    move/from16 v41, v1

    iget-object v1, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->d:[I

    aget v1, v1, v40

    if-le v1, v12, :cond_29

    move v12, v1

    move/from16 v3, v40

    goto :goto_1d

    :cond_28
    move/from16 v41, v1

    :cond_29
    :goto_1d
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v41

    goto :goto_1b

    :goto_1e
    if-ne v3, v12, :cond_2b

    :cond_2a
    :goto_1f
    move-wide/from16 v6, v20

    goto :goto_20

    :cond_2b
    aget-wide v6, v37, v3

    goto :goto_20

    :cond_2c
    move/from16 v35, v11

    goto :goto_1f

    :goto_20
    cmp-long v1, v6, v20

    if-eqz v1, :cond_2d

    new-instance v1, Landroidx/media3/common/Metadata;

    new-instance v3, Landroidx/media3/extractor/metadata/ThumbnailMetadata;

    invoke-direct {v3, v6, v7}, Landroidx/media3/extractor/metadata/ThumbnailMetadata;-><init>(J)V

    const/4 v6, 0x1

    new-array v7, v6, [Landroidx/media3/common/Metadata$Entry;

    aput-object v3, v7, v19

    invoke-direct {v1, v7}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    goto :goto_21

    :cond_2d
    const/4 v6, 0x1

    const/4 v1, 0x0

    :goto_21
    if-ne v15, v6, :cond_2e

    move-object/from16 v12, v34

    iget v3, v12, Landroidx/media3/extractor/GaplessInfoHolder;->a:I

    const/4 v7, -0x1

    if-eq v3, v7, :cond_2f

    iget v8, v12, Landroidx/media3/extractor/GaplessInfoHolder;->b:I

    if-eq v8, v7, :cond_2f

    iput v3, v9, Landroidx/media3/common/Format$Builder;->I:I

    iput v8, v9, Landroidx/media3/common/Format$Builder;->J:I

    goto :goto_22

    :cond_2e
    move-object/from16 v12, v34

    :cond_2f
    :goto_22
    iget-object v3, v14, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    iget-object v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->j:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_30

    const/4 v8, 0x0

    :goto_23
    move-object/from16 v7, v24

    move-object/from16 v11, v25

    goto :goto_24

    :cond_30
    new-instance v8, Landroidx/media3/common/Metadata;

    invoke-direct {v8, v7}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_23

    :goto_24
    filled-new-array {v8, v7, v11, v1}, [Landroidx/media3/common/Metadata;

    move-result-object v1

    invoke-static {v15, v2, v9, v3, v1}, Landroidx/media3/extractor/mp4/MetadataUtil;->f(ILandroidx/media3/common/Metadata;Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Metadata;[Landroidx/media3/common/Metadata;)V

    invoke-static/range {v28 .. v28}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    const-string v1, "audio/mpeg"

    invoke-static {v10, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v9}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v1, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->f:Landroidx/media3/common/Format;

    :goto_25
    const/4 v1, 0x2

    goto :goto_26

    :cond_31
    invoke-static {v9, v4}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    goto :goto_25

    :goto_26
    if-ne v15, v1, :cond_33

    const/4 v1, -0x1

    if-ne v13, v1, :cond_32

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v13

    :cond_32
    :goto_27
    move-object/from16 v3, v31

    goto :goto_28

    :cond_33
    const/4 v1, -0x1

    goto :goto_27

    :goto_28
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v9, v32

    :goto_29
    add-int/lit8 v4, v35, 0x1

    move-object v14, v3

    move-object/from16 v24, v7

    move-object/from16 v25, v11

    move-object v6, v12

    move-object/from16 v1, v26

    move-object/from16 v5, v27

    move-object/from16 v7, v28

    move/from16 v12, v29

    move/from16 v15, v30

    move-object/from16 v3, v36

    move v11, v4

    const/4 v4, 0x2

    goto/16 :goto_12

    :cond_34
    move-object/from16 v26, v1

    move-object v3, v14

    move/from16 v30, v15

    move/from16 v4, v19

    const/4 v1, -0x1

    const/4 v6, 0x1

    new-array v2, v4, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->C:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    if-nez v30, :cond_3a

    array-length v3, v2

    new-array v14, v3, [[J

    array-length v3, v2

    new-array v3, v3, [I

    array-length v4, v2

    new-array v4, v4, [J

    array-length v5, v2

    new-array v5, v5, [Z

    const/4 v7, 0x0

    :goto_2a
    array-length v8, v2

    if-ge v7, v8, :cond_35

    aget-object v8, v2, v7

    iget-object v8, v8, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v8, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    new-array v8, v8, [J

    aput-object v8, v14, v7

    aget-object v8, v2, v7

    iget-object v8, v8, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v8, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->f:[J

    const/16 v19, 0x0

    aget-wide v11, v8, v19

    aput-wide v11, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_35
    const/4 v7, 0x0

    :goto_2b
    array-length v8, v2

    if-ge v7, v8, :cond_39

    const-wide v11, 0x7fffffffffffffffL

    move v15, v1

    const/4 v8, 0x0

    :goto_2c
    array-length v1, v2

    if-ge v8, v1, :cond_37

    aget-boolean v1, v5, v8

    if-nez v1, :cond_36

    aget-wide v20, v4, v8

    cmp-long v1, v20, v11

    if-gtz v1, :cond_36

    move v15, v8

    move-wide/from16 v11, v20

    :cond_36
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    :cond_37
    aget v1, v3, v15

    aget-object v8, v14, v15

    aput-wide v16, v8, v1

    aget-object v11, v2, v15

    iget-object v11, v11, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v12, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->d:[I

    aget v12, v12, v1

    move/from16 v20, v6

    move/from16 v18, v7

    int-to-long v6, v12

    add-long v16, v16, v6

    add-int/lit8 v1, v1, 0x1

    aput v1, v3, v15

    array-length v6, v8

    if-ge v1, v6, :cond_38

    iget-object v6, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->f:[J

    aget-wide v6, v6, v1

    aput-wide v6, v4, v15

    move/from16 v7, v18

    goto :goto_2d

    :cond_38
    aput-boolean v20, v5, v15

    add-int/lit8 v7, v18, 0x1

    :goto_2d
    move/from16 v6, v20

    const/4 v1, -0x1

    goto :goto_2b

    :cond_39
    :goto_2e
    move/from16 v20, v6

    goto :goto_2f

    :cond_3a
    const/4 v14, 0x0

    goto :goto_2e

    :goto_2f
    iput-object v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->D:[[J

    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->B:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->B:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v2, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;

    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->C:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-direct {v2, v9, v10, v3, v13}, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;-><init>(J[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;I)V

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    :goto_30
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayDeque;->clear()V

    move/from16 v6, v20

    iput-boolean v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->z:Z

    iget-boolean v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->w:Z

    if-nez v1, :cond_0

    if-nez v30, :cond_0

    const/4 v1, 0x2

    iput v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->l:I

    goto/16 :goto_0

    :cond_3b
    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-object v1, v1, Landroidx/media3/container/Mp4Box$ContainerBox;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3c
    iget v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->l:I

    const/4 v12, 0x2

    if-eq v1, v12, :cond_3d

    const/4 v4, 0x0

    iput v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->l:I

    iput v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    :cond_3d
    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
