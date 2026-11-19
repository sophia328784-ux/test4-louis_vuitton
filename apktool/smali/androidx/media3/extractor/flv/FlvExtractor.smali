.class public final Landroidx/media3/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public final d:Landroidx/media3/common/util/ParsableByteArray;

.field public final e:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

.field public f:Landroidx/media3/extractor/ExtractorOutput;

.field public g:I

.field public h:Z

.field public i:J

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Z

.field public o:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

.field public p:Landroidx/media3/extractor/flv/VideoTagPayloadReader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->b:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->d:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {v0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->e:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    iput-boolean p2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->h:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    :goto_0
    iput p2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->j:I

    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 3

    iget-object p0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v1, v2, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v0

    const v2, 0x464c56

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v1, v2, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v1, v2, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v0

    iput v1, p1, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    invoke-virtual {p1, v0, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->n(IZ)Z

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {p1, v1, v1, v2, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v2, v8, :cond_28

    const/4 v10, 0x3

    if-eq v2, v6, :cond_27

    if-eq v2, v10, :cond_25

    if-ne v2, v7, :cond_24

    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->h:Z

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v17, 0x3e8

    iget-object v11, v0, Landroidx/media3/extractor/flv/FlvExtractor;->e:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    if-eqz v2, :cond_1

    iget-wide v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->i:J

    move-wide/from16 v19, v3

    iget-wide v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->m:J

    add-long v3, v19, v2

    :goto_1
    move-wide/from16 v20, v3

    goto :goto_2

    :cond_1
    iget-wide v2, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->b:J

    cmp-long v2, v2, v13

    if-nez v2, :cond_2

    const-wide/16 v20, 0x0

    goto :goto_2

    :cond_2
    iget-wide v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->m:J

    goto :goto_1

    :goto_2
    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->k:I

    const/4 v3, 0x7

    const-string v4, "video/x-flv"

    if-ne v2, v5, :cond_e

    iget-object v12, v0, Landroidx/media3/extractor/flv/FlvExtractor;->o:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    if-eqz v12, :cond_e

    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->n:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v12, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v12, v13, v14}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v12}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v8, v0, Landroidx/media3/extractor/flv/FlvExtractor;->n:Z

    :cond_3
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->o:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/flv/FlvExtractor;->g(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object v12

    iget-object v15, v2, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Landroidx/media3/extractor/TrackOutput;

    move/from16 v16, v7

    iget-boolean v7, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->b:Z

    move/from16 v22, v10

    const/16 v10, 0xa

    if-nez v7, :cond_9

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v7

    shr-int/lit8 v17, v7, 0x4

    and-int/lit8 v13, v17, 0xf

    iput v13, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->d:I

    if-ne v13, v6, :cond_4

    shr-int/lit8 v3, v7, 0x2

    and-int/lit8 v3, v3, 0x3

    sget-object v5, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->e:[I

    aget v3, v5, v3

    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    const-string v7, "audio/mpeg"

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput v8, v5, Landroidx/media3/common/Format$Builder;->F:I

    iput v3, v5, Landroidx/media3/common/Format$Builder;->G:I

    invoke-static {v5, v15}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iput-boolean v8, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->c:Z

    goto :goto_5

    :cond_4
    if-eq v13, v3, :cond_7

    if-ne v13, v5, :cond_5

    goto :goto_3

    :cond_5
    if-ne v13, v10, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    iget v1, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Audio format not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    if-ne v13, v3, :cond_8

    const-string v3, "audio/g711-alaw"

    goto :goto_4

    :cond_8
    const-string v3, "audio/g711-mlaw"

    :goto_4
    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput v8, v5, Landroidx/media3/common/Format$Builder;->F:I

    const/16 v3, 0x1f40

    iput v3, v5, Landroidx/media3/common/Format$Builder;->G:I

    invoke-static {v5, v15}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iput-boolean v8, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->c:Z

    :goto_5
    iput-boolean v8, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->b:Z

    goto :goto_6

    :cond_9
    invoke-virtual {v12, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :goto_6
    iget-object v3, v2, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Landroidx/media3/extractor/TrackOutput;

    iget v5, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->d:I

    if-ne v5, v6, :cond_a

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v4

    invoke-interface {v3, v4, v12}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget-object v2, v2, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Landroidx/media3/extractor/TrackOutput;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v22, 0x1

    move-object/from16 v19, v2

    move/from16 v23, v4

    invoke-interface/range {v19 .. v25}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :goto_7
    move v2, v8

    goto/16 :goto_11

    :cond_a
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v5

    if-nez v5, :cond_c

    iget-boolean v7, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->c:Z

    if-nez v7, :cond_c

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v5

    new-array v7, v5, [B

    invoke-virtual {v12, v9, v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    new-instance v5, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v5, v7}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    invoke-static {v5, v9}, Landroidx/media3/extractor/AacUtil;->b(Landroidx/media3/common/util/ParsableBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v5

    new-instance v10, Landroidx/media3/common/Format$Builder;

    invoke-direct {v10}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    const-string v4, "audio/mp4a-latm"

    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iget-object v4, v5, Landroidx/media3/extractor/AacUtil$Config;->c:Ljava/lang/String;

    iput-object v4, v10, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    iget v4, v5, Landroidx/media3/extractor/AacUtil$Config;->b:I

    iput v4, v10, Landroidx/media3/common/Format$Builder;->F:I

    iget v4, v5, Landroidx/media3/extractor/AacUtil$Config;->a:I

    iput v4, v10, Landroidx/media3/common/Format$Builder;->G:I

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v10, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    invoke-static {v10, v3}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iput-boolean v8, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->c:Z

    :cond_b
    move v2, v9

    goto/16 :goto_11

    :cond_c
    iget v4, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->d:I

    if-ne v4, v10, :cond_d

    if-ne v5, v8, :cond_b

    :cond_d
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v4

    invoke-interface {v3, v4, v12}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget-object v2, v2, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Landroidx/media3/extractor/TrackOutput;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v22, 0x1

    move-object/from16 v19, v2

    move/from16 v23, v4

    invoke-interface/range {v19 .. v25}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    goto :goto_7

    :cond_e
    move/from16 v16, v7

    move/from16 v22, v10

    const/16 v12, 0x9

    if-ne v2, v12, :cond_18

    iget-object v7, v0, Landroidx/media3/extractor/flv/FlvExtractor;->p:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    if-eqz v7, :cond_18

    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->n:Z

    if-nez v2, :cond_f

    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v7, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v7, v12, v13}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v7}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v8, v0, Landroidx/media3/extractor/flv/FlvExtractor;->n:Z

    :cond_f
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->p:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/flv/FlvExtractor;->g(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v10

    shr-int/lit8 v12, v10, 0x4

    and-int/lit8 v12, v12, 0xf

    and-int/lit8 v10, v10, 0xf

    if-ne v10, v3, :cond_17

    iput v12, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->g:I

    const/4 v3, 0x5

    if-eq v12, v3, :cond_10

    move v3, v8

    goto :goto_8

    :cond_10
    move v3, v9

    :goto_8
    if-eqz v3, :cond_16

    iget-object v3, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->b:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v10, v2, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Landroidx/media3/extractor/TrackOutput;

    iget-object v12, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->c:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v13

    move/from16 v14, v22

    invoke-virtual {v7, v14}, Landroidx/media3/common/util/ParsableByteArray;->f(I)V

    iget-object v14, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v15, v7, Landroidx/media3/common/util/ParsableByteArray;->b:I

    move/from16 v19, v5

    add-int/lit8 v5, v15, 0x1

    iput v5, v7, Landroidx/media3/common/util/ParsableByteArray;->b:I

    move/from16 v23, v6

    aget-byte v6, v14, v15

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    shr-int/lit8 v6, v6, 0x8

    add-int/lit8 v8, v15, 0x2

    iput v8, v7, Landroidx/media3/common/util/ParsableByteArray;->b:I

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v6

    const/16 v22, 0x3

    add-int/lit8 v15, v15, 0x3

    iput v15, v7, Landroidx/media3/common/util/ParsableByteArray;->b:I

    aget-byte v6, v14, v8

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-long v5, v5

    mul-long v5, v5, v17

    add-long v29, v5, v20

    if-nez v13, :cond_12

    iget-boolean v5, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->e:Z

    if-nez v5, :cond_12

    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v5

    new-array v5, v5, [B

    invoke-direct {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iget-object v5, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v6

    invoke-virtual {v7, v9, v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-static {v3}, Landroidx/media3/extractor/AvcConfig;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v3

    iget v5, v3, Landroidx/media3/extractor/AvcConfig;->b:I

    iput v5, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->d:I

    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    const-string v4, "video/avc"

    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iget-object v4, v3, Landroidx/media3/extractor/AvcConfig;->l:Ljava/lang/String;

    iput-object v4, v5, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/extractor/AvcConfig;->c:I

    iput v4, v5, Landroidx/media3/common/Format$Builder;->u:I

    iget v4, v3, Landroidx/media3/extractor/AvcConfig;->d:I

    iput v4, v5, Landroidx/media3/common/Format$Builder;->v:I

    iget v4, v3, Landroidx/media3/extractor/AvcConfig;->k:F

    iput v4, v5, Landroidx/media3/common/Format$Builder;->A:F

    iget-object v3, v3, Landroidx/media3/extractor/AvcConfig;->a:Ljava/util/ArrayList;

    iput-object v3, v5, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    invoke-static {v5, v10}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->e:Z

    :cond_11
    :goto_9
    move v2, v9

    goto :goto_c

    :cond_12
    const/4 v4, 0x1

    if-ne v13, v4, :cond_11

    iget-boolean v5, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->e:Z

    if-eqz v5, :cond_11

    iget v5, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->g:I

    if-ne v5, v4, :cond_13

    move/from16 v31, v4

    goto :goto_a

    :cond_13
    move/from16 v31, v9

    :goto_a
    iget-boolean v5, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->f:Z

    if-nez v5, :cond_14

    if-nez v31, :cond_14

    goto :goto_9

    :cond_14
    iget-object v5, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    aput-byte v9, v5, v9

    aput-byte v9, v5, v4

    aput-byte v9, v5, v23

    iget v4, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->d:I

    rsub-int/lit8 v4, v4, 0x4

    move/from16 v32, v9

    :goto_b
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v5

    if-lez v5, :cond_15

    iget-object v5, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v6, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->d:I

    invoke-virtual {v7, v4, v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-virtual {v12, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v5

    invoke-virtual {v3, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    move/from16 v6, v16

    invoke-interface {v10, v6, v3}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    add-int/lit8 v32, v32, 0x4

    invoke-interface {v10, v5, v7}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    add-int v32, v32, v5

    const/16 v16, 0x4

    goto :goto_b

    :cond_15
    iget-object v3, v2, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Landroidx/media3/extractor/TrackOutput;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v3

    invoke-interface/range {v28 .. v34}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->f:Z

    const/4 v2, 0x1

    :goto_c
    if-eqz v2, :cond_20

    const/4 v2, 0x1

    goto :goto_d

    :cond_16
    move/from16 v23, v6

    goto/16 :goto_10

    :goto_d
    const/4 v8, 0x1

    goto/16 :goto_11

    :cond_17
    new-instance v0, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    const-string v1, "Video format not supported: "

    invoke-static {v10, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move/from16 v19, v5

    move/from16 v23, v6

    const/16 v3, 0x12

    if-ne v2, v3, :cond_21

    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->n:Z

    if-nez v2, :cond_21

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/flv/FlvExtractor;->g(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v3

    move/from16 v4, v23

    if-eq v3, v4, :cond_19

    goto/16 :goto_f

    :cond_19
    invoke-static {v2}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->c(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onMetaData"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_f

    :cond_1a
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_f

    :cond_1b
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v3

    move/from16 v4, v19

    if-eq v3, v4, :cond_1c

    goto/16 :goto_f

    :cond_1c
    invoke-static {v2}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->b(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Double;

    const-wide v5, 0x412e848000000000L    # 1000000.0

    if-eqz v4, :cond_1d

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmpl-double v7, v3, v7

    if-lez v7, :cond_1d

    mul-double/2addr v3, v5

    double-to-long v3, v3

    iput-wide v3, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->b:J

    :cond_1d
    const-string v3, "keyframes"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_1f

    check-cast v2, Ljava/util/Map;

    const-string v3, "filepositions"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "times"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_1f

    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_1f

    check-cast v3, Ljava/util/List;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v7, v4, [J

    iput-object v7, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->c:[J

    new-array v7, v4, [J

    iput-object v7, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->d:[J

    move v7, v9

    :goto_e
    if-ge v7, v4, :cond_1f

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v12, v10, Ljava/lang/Double;

    if-eqz v12, :cond_1e

    instance-of v12, v8, Ljava/lang/Double;

    if-eqz v12, :cond_1e

    iget-object v12, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->c:[J

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    mul-double/2addr v13, v5

    double-to-long v13, v13

    aput-wide v13, v12, v7

    iget-object v10, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->d:[J

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->longValue()J

    move-result-wide v12

    aput-wide v12, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_1e
    new-array v2, v9, [J

    iput-object v2, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->c:[J

    new-array v2, v9, [J

    iput-object v2, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->d:[J

    :cond_1f
    :goto_f
    iget-wide v2, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->b:J

    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v26

    if-eqz v4, :cond_20

    iget-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v5, Landroidx/media3/extractor/IndexSeekMap;

    iget-object v6, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->d:[J

    iget-object v7, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->c:[J

    invoke-direct {v5, v6, v7, v2, v3}, Landroidx/media3/extractor/IndexSeekMap;-><init>([J[JJ)V

    invoke-interface {v4, v5}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->n:Z

    :cond_20
    :goto_10
    move v2, v9

    goto/16 :goto_d

    :cond_21
    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->l:I

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    move v2, v9

    move v8, v2

    :goto_11
    iget-boolean v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->h:Z

    if-nez v3, :cond_23

    if-eqz v2, :cond_23

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->h:Z

    iget-wide v2, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->b:J

    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v26

    if-nez v2, :cond_22

    iget-wide v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->m:J

    neg-long v2, v2

    goto :goto_12

    :cond_22
    const-wide/16 v2, 0x0

    :goto_12
    iput-wide v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->i:J

    :cond_23
    const/4 v6, 0x4

    iput v6, v0, Landroidx/media3/extractor/flv/FlvExtractor;->j:I

    const/4 v4, 0x2

    iput v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    if-eqz v8, :cond_0

    return v9

    :cond_24
    invoke-static {}, Lr81;->b()V

    return v9

    :cond_25
    const-wide/16 v17, 0x3e8

    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v4, 0xb

    const/4 v5, 0x1

    invoke-interface {v1, v5, v9, v4, v3}, Landroidx/media3/extractor/ExtractorInput;->h(ZII[B)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_13

    :cond_26
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v3

    iput v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->k:I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v3

    iput v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->l:I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->m:J

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    int-to-long v3, v3

    iget-wide v5, v0, Landroidx/media3/extractor/flv/FlvExtractor;->m:J

    or-long/2addr v3, v5

    mul-long v3, v3, v17

    iput-wide v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->m:J

    const/4 v14, 0x3

    invoke-virtual {v2, v14}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    const/4 v6, 0x4

    iput v6, v0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    goto/16 :goto_0

    :cond_27
    move v14, v10

    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->j:I

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    iput v9, v0, Landroidx/media3/extractor/flv/FlvExtractor;->j:I

    iput v14, v0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    goto/16 :goto_0

    :cond_28
    iget-object v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->b:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v4, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v2, 0x9

    const/4 v5, 0x1

    invoke-interface {v1, v5, v9, v2, v4}, Landroidx/media3/extractor/ExtractorInput;->h(ZII[B)Z

    move-result v4

    if-nez v4, :cond_29

    :goto_13
    const/4 v0, -0x1

    return v0

    :cond_29
    invoke-virtual {v3, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v4

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_2a

    const/4 v5, 0x1

    goto :goto_14

    :cond_2a
    move v5, v9

    :goto_14
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2b

    const/4 v9, 0x1

    :cond_2b
    if-eqz v5, :cond_2c

    iget-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->o:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    if-nez v4, :cond_2c

    new-instance v4, Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    iget-object v5, v0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/media3/extractor/flv/AudioTagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->o:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    :cond_2c
    if-eqz v9, :cond_2d

    iget-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->p:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    if-nez v4, :cond_2d

    new-instance v4, Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    iget-object v5, v0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    const/16 v2, 0x9

    const/4 v6, 0x2

    invoke-interface {v5, v2, v6}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v2

    invoke-direct {v4, v2}, Landroidx/media3/extractor/flv/VideoTagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->p:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    goto :goto_15

    :cond_2d
    const/4 v6, 0x2

    :goto_15
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v2

    const/4 v3, 0x5

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->j:I

    iput v6, v0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    goto/16 :goto_0
.end method

.method public final g(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;
    .locals 5

    iget v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->l:I

    iget-object v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->d:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v2, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-le v0, v3, :cond_0

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v4, v0}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    :goto_0
    iget v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->l:I

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    iget-object v0, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget p0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->l:I

    invoke-interface {p1, v0, v4, p0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-object v1
.end method

.method public final release()V
    .locals 0

    return-void
.end method
