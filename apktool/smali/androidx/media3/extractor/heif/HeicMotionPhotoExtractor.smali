.class final Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public b:Landroidx/media3/extractor/ExtractorOutput;

.field public c:Landroidx/media3/extractor/ExtractorInput;

.field public d:Landroidx/media3/extractor/StartOffsetExtractorInput;

.field public e:Landroidx/media3/extractor/mp4/Mp4Extractor;

.field public f:I

.field public g:I

.field public h:J

.field public i:I

.field public j:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->j:J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->f:I

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->f:I

    iput p1, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->i:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->j:J

    iget-object p1, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->e:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->e:Landroidx/media3/extractor/mp4/Mp4Extractor;

    return-void

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->e:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->a(JJ)V

    :cond_1
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0

    const/4 p0, 0x1

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    invoke-static {p1, p0}, Landroidx/media3/extractor/heif/HeifSniffer;->a(Landroidx/media3/extractor/DefaultExtractorInput;Z)Z

    move-result p0

    return p0
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :goto_0
    iget v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->f:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, -0x1

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v3, :cond_9

    if-eq v3, v11, :cond_8

    const/4 v12, 0x3

    if-eq v3, v10, :cond_5

    if-eq v3, v12, :cond_1

    if-ne v3, v9, :cond_0

    return v8

    :cond_0
    invoke-static {}, Lr81;->b()V

    return v6

    :cond_1
    iget-object v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->d:Landroidx/media3/extractor/StartOffsetExtractorInput;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->c:Landroidx/media3/extractor/ExtractorInput;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v1, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->c:Landroidx/media3/extractor/ExtractorInput;

    new-instance v3, Landroidx/media3/extractor/StartOffsetExtractorInput;

    iget-wide v4, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->j:J

    invoke-direct {v3, v1, v4, v5}, Landroidx/media3/extractor/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    iput-object v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->d:Landroidx/media3/extractor/StartOffsetExtractorInput;

    :cond_3
    iget-object v1, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->e:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->d:Landroidx/media3/extractor/StartOffsetExtractorInput;

    invoke-virtual {v1, v3, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v1

    if-ne v1, v11, :cond_4

    iget-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    iget-wide v5, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->j:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    :cond_4
    return v1

    :cond_5
    iget-object v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->e:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-nez v3, :cond_6

    new-instance v3, Landroidx/media3/extractor/mp4/Mp4Extractor;

    sget-object v6, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v3, v6, v7}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    iput-object v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->e:Landroidx/media3/extractor/mp4/Mp4Extractor;

    :cond_6
    new-instance v3, Landroidx/media3/extractor/StartOffsetExtractorInput;

    iget-wide v6, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->j:J

    invoke-direct {v3, v1, v6, v7}, Landroidx/media3/extractor/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    iput-object v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->d:Landroidx/media3/extractor/StartOffsetExtractorInput;

    iget-object v6, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->e:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {v6, v3}, Landroidx/media3/extractor/mp4/Mp4Extractor;->d(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->e:Landroidx/media3/extractor/mp4/Mp4Extractor;

    new-instance v4, Landroidx/media3/extractor/StartOffsetExtractorOutput;

    iget-wide v5, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->j:J

    iget-object v7, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v6, v7}, Landroidx/media3/extractor/StartOffsetExtractorOutput;-><init>(JLandroidx/media3/extractor/ExtractorOutput;)V

    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->b(Landroidx/media3/extractor/ExtractorOutput;)V

    iput v12, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->f:I

    goto :goto_0

    :cond_7
    iget-object v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    iget-object v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v6, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v6, v4, v5}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v3, v6}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    iput v9, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->f:I

    goto/16 :goto_0

    :cond_8
    iget-wide v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->h:J

    iget v5, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->i:I

    int-to-long v7, v5

    sub-long/2addr v3, v7

    long-to-int v3, v3

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    iput v6, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->i:I

    iput v6, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->f:I

    goto/16 :goto_0

    :cond_9
    iget v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->i:I

    iget-object v12, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    if-nez v3, :cond_b

    iget-object v3, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v11, v6, v7, v3}, Landroidx/media3/extractor/ExtractorInput;->h(ZII[B)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v1, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    iget-object v1, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v2, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v2, v4, v5}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    iput v9, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->f:I

    return v8

    :cond_a
    iput v7, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->i:I

    invoke-virtual {v12, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->h:J

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v3

    iput v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->g:I

    :cond_b
    iget-wide v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->h:J

    const-wide/16 v13, 0x1

    cmp-long v3, v3, v13

    if-nez v3, :cond_c

    iget-object v3, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v3, v7, v7}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->i:I

    add-int/2addr v3, v7

    iput v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->i:I

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->G()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->h:J

    :cond_c
    iget v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->g:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_d

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->j:J

    iget v5, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->i:I

    int-to-long v7, v5

    sub-long v15, v3, v7

    new-instance v12, Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    iget-wide v13, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->h:J

    sub-long v21, v13, v7

    const-wide/16 v13, 0x0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v19, v3

    invoke-direct/range {v12 .. v22}, Landroidx/media3/extractor/metadata/MotionPhotoMetadata;-><init>(JJJJJ)V

    iget-object v3, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x400

    invoke-interface {v3, v4, v9}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v3

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v5, "image/heic"

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    new-instance v5, Landroidx/media3/common/Metadata;

    new-array v7, v11, [Landroidx/media3/common/Metadata$Entry;

    aput-object v12, v7, v6

    invoke-direct {v5, v7}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    iput-object v5, v4, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    invoke-static {v4, v3}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iput v10, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->f:I

    goto/16 :goto_0

    :cond_d
    iput v11, v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->f:I

    goto/16 :goto_0
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->e:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->e:Landroidx/media3/extractor/mp4/Mp4Extractor;

    :cond_0
    return-void
.end method
