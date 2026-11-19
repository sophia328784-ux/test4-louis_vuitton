.class public Landroidx/media3/extractor/ForwardingSeekMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field public final a:Landroidx/media3/extractor/SeekMap;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ForwardingSeekMap;->a:Landroidx/media3/extractor/SeekMap;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingSeekMap;->a:Landroidx/media3/extractor/SeekMap;

    invoke-interface {p0}, Landroidx/media3/extractor/SeekMap;->b()Z

    move-result p0

    return p0
.end method

.method public c(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingSeekMap;->a:Landroidx/media3/extractor/SeekMap;

    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/SeekMap;->c(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object p0

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingSeekMap;->a:Landroidx/media3/extractor/SeekMap;

    invoke-interface {p0}, Landroidx/media3/extractor/SeekMap;->e()Z

    move-result p0

    return p0
.end method

.method public h()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingSeekMap;->a:Landroidx/media3/extractor/SeekMap;

    invoke-interface {p0}, Landroidx/media3/extractor/SeekMap;->h()J

    move-result-wide v0

    return-wide v0
.end method
