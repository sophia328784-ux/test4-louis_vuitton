.class public final Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;


# instance fields
.field public final a:Landroidx/media3/extractor/ExtractorsFactory;

.field public b:Landroidx/media3/extractor/Extractor;

.field public c:Landroidx/media3/extractor/DefaultExtractorInput;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorsFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->a:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/media3/extractor/Extractor;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/Extractor;->a(JJ)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/extractor/Extractor;->c()Landroidx/media3/extractor/Extractor;

    move-result-object p0

    instance-of v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->t:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->c:Landroidx/media3/extractor/DefaultExtractorInput;

    if-eqz p0, :cond_0

    iget-wide v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final d(Landroidx/media3/extractor/PositionHolder;)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/media3/extractor/Extractor;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->c:Landroidx/media3/extractor/DefaultExtractorInput;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0, p1}, Landroidx/media3/extractor/Extractor;->f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0
.end method

.method public final e(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;Ljava/util/Map;JJLandroidx/media3/extractor/ExtractorOutput;)V
    .locals 7

    new-instance v1, Landroidx/media3/extractor/DefaultExtractorInput;

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->c:Landroidx/media3/extractor/DefaultExtractorInput;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->a:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-interface {p1, p2, p3}, Landroidx/media3/extractor/ExtractorsFactory;->f(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;

    move-result-object p1

    array-length p3, p1

    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->r(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p3

    array-length p4, p1

    const/4 p5, 0x1

    const/4 p6, 0x0

    if-ne p4, p5, :cond_1

    aget-object p1, p1, p6

    iput-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    goto :goto_7

    :cond_1
    array-length p4, p1

    move p7, p6

    :goto_0
    if-ge p7, p4, :cond_7

    aget-object v0, p1, p7

    :try_start_0
    invoke-interface {v0, v1}, Landroidx/media3/extractor/Extractor;->d(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p6, v1, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroidx/media3/extractor/Extractor;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    if-nez v0, :cond_4

    iget-wide v5, v1, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, p6

    goto :goto_2

    :cond_4
    :goto_1
    move v0, p5

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput p6, v1, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    goto :goto_5

    :goto_3
    iget-object p0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    if-nez p0, :cond_6

    iget-wide p2, v1, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    cmp-long p0, p2, v3

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    move p5, p6

    :cond_6
    :goto_4
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput p6, v1, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    throw p1

    :catch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    if-nez v0, :cond_4

    iget-wide v5, v1, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_3

    goto :goto_1

    :goto_5
    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_7
    :goto_6
    iget-object p4, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    if-eqz p4, :cond_8

    :goto_7
    iget-object p0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0, p8}, Landroidx/media3/extractor/Extractor;->b(Landroidx/media3/extractor/ExtractorOutput;)V

    return-void

    :cond_8
    new-instance p0, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "None of the available extractors ("

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p5, Lcom/google/common/base/Joiner;

    const-string p7, ", "

    invoke-direct {p5, p7}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->u([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    new-instance p7, Luh;

    invoke-direct {p7, p6}, Luh;-><init>(I)V

    invoke-static {p7, p1}, Lcom/google/common/collect/Lists;->d(Lcom/google/common/base/Function;Ljava/util/List;)Ljava/util/AbstractList;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/google/common/base/Joiner;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V

    throw p0
.end method

.method public final release()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/extractor/Extractor;->release()V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    :cond_0
    iput-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->c:Landroidx/media3/extractor/DefaultExtractorInput;

    return-void
.end method
