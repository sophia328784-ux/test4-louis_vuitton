.class public final Landroidx/media3/extractor/StartOffsetExtractorOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# instance fields
.field public final b:J

.field public final c:Landroidx/media3/extractor/ExtractorOutput;


# direct methods
.method public constructor <init>(JLandroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->b:J

    iput-object p3, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->c:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method


# virtual methods
.method public final j(Landroidx/media3/extractor/SeekMap;)V
    .locals 1

    new-instance v0, Landroidx/media3/extractor/StartOffsetExtractorOutput$1;

    invoke-direct {v0, p0, p1, p1}, Landroidx/media3/extractor/StartOffsetExtractorOutput$1;-><init>(Landroidx/media3/extractor/StartOffsetExtractorOutput;Landroidx/media3/extractor/SeekMap;Landroidx/media3/extractor/SeekMap;)V

    iget-object p0, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->c:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p0, v0}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    return-void
.end method

.method public final n()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->c:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    return-void
.end method

.method public final r(II)Landroidx/media3/extractor/TrackOutput;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->c:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p0

    return-object p0
.end method
