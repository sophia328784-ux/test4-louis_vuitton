.class public final synthetic Landroidx/media3/session/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;


# instance fields
.field public final synthetic b:Landroidx/media3/session/MediaControllerImplBase;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/q;->b:Landroidx/media3/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media3/session/q;->c:Ljava/util/List;

    iput p3, p0, Landroidx/media3/session/q;->d:I

    iput-wide p4, p0, Landroidx/media3/session/q;->e:J

    return-void
.end method


# virtual methods
.method public final d(Landroidx/media3/session/IMediaSession;I)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/session/q;->b:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    new-instance v4, Landroidx/media3/common/BundleListRetriever;

    sget-object v1, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Landroidx/media3/session/q;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/MediaItem;

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/media3/common/MediaItem;->c(IZ)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v4, v0}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    iget v5, p0, Landroidx/media3/session/q;->d:I

    iget-wide v6, p0, Landroidx/media3/session/q;->e:J

    move-object v1, p1

    move v3, p2

    invoke-interface/range {v1 .. v7}, Landroidx/media3/session/IMediaSession;->A2(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V

    return-void
.end method
