.class final Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public b:Landroidx/media3/extractor/ExtractorOutput;

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

.field public h:Landroidx/media3/extractor/ExtractorInput;

.field public i:Landroidx/media3/extractor/StartOffsetExtractorInput;

.field public j:Landroidx/media3/extractor/mp4/Mp4Extractor;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    return-void

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->a(JJ)V

    :cond_1
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 7

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v2

    const v4, 0xffd8

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {p1, v3, v3, v1, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v2

    iput v2, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->d:I

    const v4, 0xffda

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {p1, v3, v1, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->b(II[B)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v2

    sub-int/2addr v2, v1

    if-gez v2, :cond_2

    :goto_1
    return v3

    :cond_2
    iget v4, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->d:I

    const v5, 0xffe1

    if-eq v4, v5, :cond_3

    invoke-virtual {p1, v2, v3}, Landroidx/media3/extractor/DefaultExtractorInput;->n(IZ)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v4, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {p1, v3, v3, v2, v4}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->v()Ljava/lang/String;

    move-result-object v2

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->v()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move v4, v3

    :goto_2
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    sget-object v5, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->a:[Ljava/lang/String;

    aget-object v5, v5, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=\"1\""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    const-wide/16 v4, -0x1

    iget-object v6, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_19

    if-eq v3, v9, :cond_18

    if-eq v3, v8, :cond_a

    const/4 v4, 0x5

    if-eq v3, v7, :cond_5

    if-eq v3, v4, :cond_1

    const/4 v0, 0x6

    if-ne v3, v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {}, Lr81;->b()V

    return v10

    :cond_1
    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->i:Landroidx/media3/extractor/StartOffsetExtractorInput;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->h:Landroidx/media3/extractor/ExtractorInput;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->h:Landroidx/media3/extractor/ExtractorInput;

    new-instance v3, Landroidx/media3/extractor/StartOffsetExtractorInput;

    iget-wide v4, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    invoke-direct {v3, v1, v4, v5}, Landroidx/media3/extractor/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    iput-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->i:Landroidx/media3/extractor/StartOffsetExtractorInput;

    :cond_3
    iget-object v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->i:Landroidx/media3/extractor/StartOffsetExtractorInput;

    invoke-virtual {v1, v3, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v1

    if-ne v1, v9, :cond_4

    iget-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    iget-wide v5, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    :cond_4
    return v1

    :cond_5
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    iget-wide v13, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    cmp-long v3, v11, v13

    if-eqz v3, :cond_6

    iput-wide v13, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    return v9

    :cond_6
    iget-object v2, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v9, v10, v9, v2}, Landroidx/media3/extractor/ExtractorInput;->i(ZII[B)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->g()V

    return v10

    :cond_7
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    iget-object v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-nez v2, :cond_8

    new-instance v2, Landroidx/media3/extractor/mp4/Mp4Extractor;

    sget-object v3, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/16 v5, 0x8

    invoke-direct {v2, v3, v5}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    iput-object v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    :cond_8
    new-instance v2, Landroidx/media3/extractor/StartOffsetExtractorInput;

    iget-wide v5, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    invoke-direct {v2, v1, v5, v6}, Landroidx/media3/extractor/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    iput-object v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->i:Landroidx/media3/extractor/StartOffsetExtractorInput;

    iget-object v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->d(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    new-instance v2, Landroidx/media3/extractor/StartOffsetExtractorOutput;

    iget-wide v5, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v5, v6, v3}, Landroidx/media3/extractor/StartOffsetExtractorOutput;-><init>(JLandroidx/media3/extractor/ExtractorOutput;)V

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->b(Landroidx/media3/extractor/ExtractorOutput;)V

    iget-object v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->g:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x400

    invoke-interface {v2, v3, v7}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v2

    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v5, "image/jpeg"

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    new-instance v5, Landroidx/media3/common/Metadata;

    new-array v6, v9, [Landroidx/media3/common/Metadata$Entry;

    aput-object v1, v6, v10

    invoke-direct {v5, v6}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    invoke-static {v3, v2}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iput v4, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    return v10

    :cond_9
    invoke-virtual {v0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->g()V

    return v10

    :cond_a
    iget v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->d:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_16

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    iget v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->e:I

    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v6, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->e:I

    invoke-interface {v1, v3, v10, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->g:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    if-nez v3, :cond_17

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->v()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-nez v1, :cond_c

    :cond_b
    :goto_0
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_c
    :try_start_0
    invoke-static {v2}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->a(Ljava/lang/String;)Landroidx/media3/extractor/jpeg/MotionPhotoDescription;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "Ignoring unexpected XMP metadata"

    invoke-static {v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    iget-object v2, v1, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v11, v8, :cond_e

    goto :goto_0

    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v9

    move-wide v12, v4

    move-wide v14, v12

    move-wide/from16 v18, v14

    move-wide/from16 v20, v18

    :goto_2
    if-ltz v8, :cond_14

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    iget-object v3, v11, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->a:Ljava/lang/String;

    move-wide/from16 v16, v4

    const-string v4, "video/mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v11, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->a:Ljava/lang/String;

    const-string v4, "video/quicktime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_3

    :cond_f
    move v3, v10

    goto :goto_4

    :cond_10
    :goto_3
    move v3, v9

    :goto_4
    if-nez v8, :cond_11

    iget-wide v4, v11, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->c:J

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    :goto_5
    move-wide/from16 v22, v6

    move-wide v6, v4

    move-wide/from16 v4, v22

    goto :goto_6

    :cond_11
    iget-wide v4, v11, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->b:J

    sub-long v4, v6, v4

    goto :goto_5

    :goto_6
    if-eqz v3, :cond_12

    cmp-long v3, v6, v4

    if-eqz v3, :cond_12

    sub-long v20, v4, v6

    move-wide/from16 v18, v6

    :cond_12
    if-nez v8, :cond_13

    move-wide v14, v4

    move-wide v12, v6

    :cond_13
    add-int/lit8 v8, v8, -0x1

    move-wide/from16 v4, v16

    goto :goto_2

    :cond_14
    move-wide/from16 v16, v4

    cmp-long v2, v18, v16

    if-eqz v2, :cond_b

    cmp-long v2, v20, v16

    if-eqz v2, :cond_b

    cmp-long v2, v12, v16

    if-eqz v2, :cond_b

    cmp-long v2, v14, v16

    if-nez v2, :cond_15

    goto :goto_0

    :cond_15
    new-instance v11, Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    iget-wide v1, v1, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->a:J

    move-wide/from16 v16, v1

    invoke-direct/range {v11 .. v21}, Landroidx/media3/extractor/metadata/MotionPhotoMetadata;-><init>(JJJJJ)V

    move-object v3, v11

    :goto_7
    iput-object v3, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->g:Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    if-eqz v3, :cond_17

    iget-wide v1, v3, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->d:J

    iput-wide v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    goto :goto_8

    :cond_16
    iget v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->e:I

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    :cond_17
    :goto_8
    iput v10, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    return v10

    :cond_18
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v2, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v10, v8, v2}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v2

    sub-int/2addr v2, v8

    iput v2, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->e:I

    invoke-interface {v1, v8}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    iput v8, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    return v10

    :cond_19
    move-wide/from16 v16, v4

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v2, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v2, v10, v8}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v1

    iput v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->d:I

    const v2, 0xffda

    if-ne v1, v2, :cond_1b

    iget-wide v1, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->f:J

    cmp-long v1, v1, v16

    if-eqz v1, :cond_1a

    iput v7, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    return v10

    :cond_1a
    invoke-virtual {v0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->g()V

    return v10

    :cond_1b
    const v2, 0xffd0

    if-lt v1, v2, :cond_1c

    const v2, 0xffd9

    if-le v1, v2, :cond_1d

    :cond_1c
    const v2, 0xff01

    if-eq v1, v2, :cond_1d

    iput v9, v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    :cond_1d
    return v10
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->b:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    const/4 v0, 0x6

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->c:I

    return-void
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->j:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method
