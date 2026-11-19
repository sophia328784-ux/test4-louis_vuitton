.class public interface abstract Landroidx/media3/extractor/TrackOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/TrackOutput$SampleDataPart;,
        Landroidx/media3/extractor/TrackOutput$CryptoData;
    }
.end annotation


# virtual methods
.method public abstract a(Landroidx/media3/common/util/ParsableByteArray;II)V
.end method

.method public abstract b(Landroidx/media3/common/Format;)V
.end method

.method public c(Landroidx/media3/common/DataReader;IZ)I
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/TrackOutput;->d(Landroidx/media3/common/DataReader;IZ)I

    move-result p0

    return p0
.end method

.method public abstract d(Landroidx/media3/common/DataReader;IZ)I
.end method

.method public e(J)V
    .locals 0

    return-void
.end method

.method public f(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p2, p1, v0}, Landroidx/media3/extractor/TrackOutput;->a(Landroidx/media3/common/util/ParsableByteArray;II)V

    return-void
.end method

.method public abstract g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
.end method
