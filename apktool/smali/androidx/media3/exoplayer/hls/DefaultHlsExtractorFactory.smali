.class public final Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/hls/HlsExtractorFactory;


# static fields
.field public static final f:[I


# instance fields
.field public final a:I

.field public b:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public c:Z

.field public d:I

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->f:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0xd
        0xb
        0x2
        0x0
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->d:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->a:I

    iput-boolean p2, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->e:Z

    new-instance p1, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-direct {p1}, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->b:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    return-void
.end method

.method public static c(ILjava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x7

    sget-object v2, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->f:[I

    invoke-static {p0, v0, v1, v2}, Lcom/google/common/primitives/Ints;->e(III[I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->b:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/text/SubtitleParser$Factory;->b(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    const-string v2, "application/x-media3-cues"

    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->b:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a(Landroidx/media3/common/Format;)I

    move-result p0

    iput p0, v0, Landroidx/media3/common/Format$Builder;->L:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string p1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    const-wide p0, 0x7fffffffffffffffL

    iput-wide p0, v0, Landroidx/media3/common/Format$Builder;->s:J

    new-instance p0, Landroidx/media3/common/Format;

    invoke-direct {p0, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    return-object p0

    :cond_1
    return-object p1
.end method

.method public final b(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;Ljava/util/Map;Landroidx/media3/extractor/DefaultExtractorInput;)Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v1, p6

    iget-object v3, v2, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/FileTypes;->a(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Content-Type"

    move-object/from16 v5, p5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Landroidx/media3/common/FileTypes;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static/range {p1 .. p1}, Landroidx/media3/common/FileTypes;->b(Landroid/net/Uri;)I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v8}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->c(ILjava/util/ArrayList;)V

    invoke-static {v4, v8}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->c(ILjava/util/ArrayList;)V

    invoke-static {v7, v8}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->c(ILjava/util/ArrayList;)V

    move v10, v5

    :goto_2
    if-ge v10, v9, :cond_2

    sget-object v11, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->f:[I

    aget v11, v11, v10

    invoke-static {v11, v8}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->c(ILjava/util/ArrayList;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    iput v5, v1, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    move v10, v5

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_17

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v13, 0xb

    if-eqz v12, :cond_13

    const/4 v14, 0x1

    if-eq v12, v14, :cond_12

    const/4 v14, 0x2

    if-eq v12, v14, :cond_11

    if-eq v12, v9, :cond_10

    const/16 v14, 0x8

    sget-object v15, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    if-eq v12, v14, :cond_b

    if-eq v12, v13, :cond_4

    const/16 v14, 0xd

    if-eq v12, v14, :cond_3

    const/4 v14, 0x0

    goto/16 :goto_d

    :cond_3
    new-instance v14, Landroidx/media3/exoplayer/hls/WebvttExtractor;

    iget-object v15, v2, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->b:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v9, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->c:Z

    move-object/from16 v13, p4

    invoke-direct {v14, v15, v13, v6, v9}, Landroidx/media3/exoplayer/hls/WebvttExtractor;-><init>(Ljava/lang/String;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/text/SubtitleParser$Factory;Z)V

    goto/16 :goto_d

    :cond_4
    move-object/from16 v13, p4

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->b:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v9, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->c:Z

    iget v14, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->a:I

    or-int/lit8 v16, v14, 0x10

    if-eqz p3, :cond_5

    or-int/lit8 v16, v14, 0x30

    move-object/from16 v5, p3

    goto :goto_4

    :cond_5
    iget-boolean v14, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->e:Z

    if-eqz v14, :cond_6

    new-instance v14, Landroidx/media3/common/Format$Builder;

    invoke-direct {v14}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v17, "application/cea-608"

    invoke-static/range {v17 .. v17}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v14, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v14}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_4

    :cond_6
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_4
    iget-object v14, v2, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    const-string v2, "audio/mp4a-latm"

    invoke-static {v14, v2}, Landroidx/media3/common/MimeTypes;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    or-int/lit8 v16, v16, 0x2

    :goto_5
    const-string v2, "video/avc"

    invoke-static {v14, v2}, Landroidx/media3/common/MimeTypes;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_6
    move/from16 v2, v16

    goto :goto_7

    :cond_9
    or-int/lit8 v16, v16, 0x4

    goto :goto_6

    :goto_7
    if-nez v9, :cond_a

    move-object/from16 v19, v15

    goto :goto_8

    :cond_a
    move-object/from16 v19, v6

    :goto_8
    xor-int/lit8 v18, v9, 0x1

    new-instance v16, Landroidx/media3/extractor/ts/TsExtractor;

    new-instance v6, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v6, v2, v5}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    const v22, 0x1b8a0

    const/16 v17, 0x2

    move-object/from16 v21, v6

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v22}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    :goto_9
    move-object/from16 v14, v16

    goto :goto_d

    :cond_b
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->b:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v5, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->c:Z

    iget v6, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->d:I

    if-nez v5, :cond_c

    const/16 v2, 0x24

    move-object/from16 v17, v15

    goto :goto_a

    :cond_c
    const/4 v5, 0x4

    move-object/from16 v17, v2

    move v2, v5

    :goto_a
    sget-object v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->P:[B

    and-int/lit8 v5, v6, 0x1

    if-eqz v5, :cond_d

    const/16 v5, 0x40

    goto :goto_b

    :cond_d
    const/4 v5, 0x0

    :goto_b
    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_e

    or-int/lit16 v5, v5, 0x80

    :cond_e
    or-int v18, v2, v5

    new-instance v16, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    if-eqz p3, :cond_f

    move-object/from16 v21, p3

    goto :goto_c

    :cond_f
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object/from16 v21, v2

    :goto_c
    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, p4

    invoke-direct/range {v16 .. v22}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    goto :goto_9

    :cond_10
    new-instance v14, Landroidx/media3/extractor/mp3/Mp3Extractor;

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    invoke-direct {v14, v2, v5, v6}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    goto :goto_d

    :cond_11
    new-instance v14, Landroidx/media3/extractor/ts/AdtsExtractor;

    invoke-direct {v14}, Landroidx/media3/extractor/ts/AdtsExtractor;-><init>()V

    goto :goto_d

    :cond_12
    new-instance v14, Landroidx/media3/extractor/ts/Ac4Extractor;

    invoke-direct {v14}, Landroidx/media3/extractor/ts/Ac4Extractor;-><init>()V

    goto :goto_d

    :cond_13
    new-instance v14, Landroidx/media3/extractor/ts/Ac3Extractor;

    invoke-direct {v14}, Landroidx/media3/extractor/ts/Ac3Extractor;-><init>()V

    :goto_d
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v14, Landroidx/media3/extractor/Extractor;

    :try_start_0
    invoke-interface {v14, v1}, Landroidx/media3/extractor/Extractor;->d(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    iput v5, v1, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    goto :goto_e

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    iput v5, v1, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    throw v0

    :catch_0
    const/4 v5, 0x0

    iput v5, v1, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    move v2, v5

    :goto_e
    if-eqz v2, :cond_14

    new-instance v1, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->b:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v5, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->c:Z

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object v0, v1

    move-object v1, v14

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Landroidx/media3/extractor/Extractor;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/text/SubtitleParser$Factory;Z)V

    :goto_f
    move-object v1, v0

    goto :goto_10

    :cond_14
    if-nez v11, :cond_16

    if-eq v12, v3, :cond_15

    if-eq v12, v4, :cond_15

    if-eq v12, v7, :cond_15

    const/16 v2, 0xb

    if-ne v12, v2, :cond_16

    :cond_15
    move-object v11, v14

    :cond_16
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p2

    const/4 v9, 0x7

    goto/16 :goto_3

    :cond_17
    new-instance v1, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Landroidx/media3/extractor/Extractor;

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->b:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v5, v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->c:Z

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object v0, v1

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Landroidx/media3/extractor/Extractor;Landroidx/media3/common/Format;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/text/SubtitleParser$Factory;Z)V

    goto :goto_f

    :goto_10
    return-object v1
.end method
