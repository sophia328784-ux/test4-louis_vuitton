.class public final synthetic Landroidx/media3/session/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaSessionStub$SessionTask;
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    iput p3, p0, Landroidx/media3/session/r1;->b:I

    iput-object p1, p0, Landroidx/media3/session/r1;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/media3/session/r1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/r1;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/AudioAttributes;

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    sget v1, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-boolean p0, p0, Landroidx/media3/session/r1;->c:Z

    invoke-virtual {p1, v0, p0}, Landroidx/media3/common/ForwardingPlayer;->p0(Landroidx/media3/common/AudioAttributes;Z)V

    return-void
.end method

.method public c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;
    .locals 12

    iget p3, p0, Landroidx/media3/session/r1;->b:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, -0x1

    iget-boolean v3, p0, Landroidx/media3/session/r1;->c:Z

    iget-object p0, p0, Landroidx/media3/session/r1;->d:Ljava/lang/Object;

    packed-switch p3, :pswitch_data_0

    move-object v6, p0

    check-cast v6, Ljava/util/List;

    sget p0, Landroidx/media3/session/MediaSessionStub;->p:I

    if-eqz v3, :cond_0

    :goto_0
    move v7, v2

    goto :goto_1

    :cond_0
    iget-object p0, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->v()I

    move-result v2

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_1

    :goto_2
    move-object v4, p1

    move-object v5, p2

    move-wide v8, v0

    goto :goto_3

    :cond_1
    iget-object p0, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_2

    :goto_3
    invoke-virtual/range {v4 .. v9}, Landroidx/media3/session/MediaSessionImpl;->t(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :pswitch_0
    move-object v4, p1

    move-object v5, p2

    check-cast p0, Landroidx/media3/common/MediaItem;

    sget p1, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    if-eqz v3, :cond_2

    goto :goto_4

    :cond_2
    iget-object p1, v4, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->v()I

    move-result v2

    :goto_4
    if-eqz v3, :cond_3

    :goto_5
    move v3, v2

    move-object v2, p0

    move-wide v10, v0

    move-object v0, v4

    move-object v1, v5

    move-wide v4, v10

    goto :goto_6

    :cond_3
    iget-object p1, v4, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_5

    :goto_6
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaSessionImpl;->t(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
