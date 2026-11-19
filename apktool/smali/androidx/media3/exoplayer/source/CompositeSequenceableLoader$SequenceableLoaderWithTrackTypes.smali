.class final Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/SequenceableLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SequenceableLoaderWithTrackTypes"
.end annotation


# instance fields
.field public final b:Landroidx/media3/exoplayer/source/SequenceableLoader;

.field public final c:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/SequenceableLoader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/SequenceableLoader;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->b:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->c:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->b:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->a(Landroidx/media3/exoplayer/LoadingInfo;)Z

    move-result p0

    return p0
.end method

.method public final c()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->b:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->b:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->m()Z

    move-result p0

    return p0
.end method

.method public final s()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->b:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->b:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->v(J)V

    return-void
.end method
