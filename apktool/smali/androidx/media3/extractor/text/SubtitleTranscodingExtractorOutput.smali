.class public final Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# instance fields
.field public final b:Landroidx/media3/extractor/ExtractorOutput;

.field public final c:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public final d:Landroid/util/SparseArray;

.field public e:Z


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->b:Landroidx/media3/extractor/ExtractorOutput;

    iput-object p2, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->c:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->d:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final j(Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->b:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    return-void
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->b:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    iget-boolean v0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->j:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(II)Landroidx/media3/extractor/TrackOutput;
    .locals 3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->e:Z

    :cond_0
    iget-object v1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->b:Landroidx/media3/extractor/ExtractorOutput;

    if-eq p2, v0, :cond_1

    invoke-interface {v1, p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    new-instance v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    invoke-interface {v1, p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p2

    iget-object p0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->c:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v2, p2, p0}, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;-><init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method
