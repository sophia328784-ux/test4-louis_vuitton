.class public Landroidx/media3/extractor/ForwardingTrackOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/TrackOutput;


# instance fields
.field public final a:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->a:Landroidx/media3/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->a:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/TrackOutput;->a(Landroidx/media3/common/util/ParsableByteArray;II)V

    return-void
.end method

.method public final b(Landroidx/media3/common/Format;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->a:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public c(Landroidx/media3/common/DataReader;IZ)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->a:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    move-result p0

    return p0
.end method

.method public d(Landroidx/media3/common/DataReader;IZ)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->a:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/TrackOutput;->d(Landroidx/media3/common/DataReader;IZ)I

    move-result p0

    return p0
.end method

.method public final e(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->a:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/TrackOutput;->e(J)V

    return-void
.end method

.method public f(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->a:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    return-void
.end method

.method public g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingTrackOutput;->a:Landroidx/media3/extractor/TrackOutput;

    invoke-interface/range {p0 .. p6}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method
