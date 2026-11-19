.class public final synthetic Landroidx/media3/session/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaControllerImplBase;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;I)V
    .locals 0

    iput p3, p0, Landroidx/media3/session/i;->b:I

    iput-object p1, p0, Landroidx/media3/session/i;->c:Landroidx/media3/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media3/session/i;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroidx/media3/session/IMediaSession;I)V
    .locals 8

    iget v0, p0, Landroidx/media3/session/i;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/media3/session/i;->d:Ljava/util/List;

    iget-object p0, p0, Landroidx/media3/session/i;->c:Landroidx/media3/session/MediaControllerImplBase;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    new-instance v4, Landroidx/media3/common/BundleListRetriever;

    sget-object v5, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v5, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/MediaItem;

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Landroidx/media3/common/MediaItem;->c(IZ)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v4, p0}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0, p2, v4, v2}, Landroidx/media3/session/IMediaSession;->V(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    new-instance v4, Landroidx/media3/common/BundleListRetriever;

    sget-object v5, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v5, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/MediaItem;

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Landroidx/media3/common/MediaItem;->c(IZ)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v4, p0}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0, p2, v4}, Landroidx/media3/session/IMediaSession;->Q0(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
