.class public Landroidx/media3/extractor/ForwardingExtractorInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorInput;


# instance fields
.field public final a:Landroidx/media3/extractor/ExtractorInput;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    return-void
.end method


# virtual methods
.method public final b(II[B)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    return-void
.end method

.method public final d(II[B)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->d(II[B)I

    move-result p0

    return p0
.end method

.method public final e(IZ)Z
    .locals 0

    const/4 p2, 0x1

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/ExtractorInput;->e(IZ)Z

    move-result p0

    return p0
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->g()V

    return-void
.end method

.method public getLength()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h(ZII[B)Z
    .locals 0

    const/4 p2, 0x0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/ExtractorInput;->h(ZII[B)Z

    move-result p0

    return p0
.end method

.method public final i(ZII[B)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/ExtractorInput;->i(ZII[B)Z

    move-result p0

    return p0
.end method

.method public j()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    return-void
.end method

.method public final l(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorInput;->l(I)I

    move-result p0

    return p0
.end method

.method public final m(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    return-void
.end method

.method public final n(IZ)Z
    .locals 0

    const/4 p2, 0x1

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/ExtractorInput;->n(IZ)Z

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p0

    return p0
.end method

.method public final readFully([BII)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void
.end method
