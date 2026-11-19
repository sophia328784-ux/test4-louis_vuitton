.class public final synthetic Landroidx/media3/session/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/session/MediaSessionImpl;

.field public final synthetic c:Landroidx/media3/session/MediaSession$ControllerInfo;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroidx/media3/session/e2;->a:I

    iput-object p1, p0, Landroidx/media3/session/e2;->b:Landroidx/media3/session/MediaSessionImpl;

    iput-object p2, p0, Landroidx/media3/session/e2;->c:Landroidx/media3/session/MediaSession$ControllerInfo;

    iput-object p3, p0, Landroidx/media3/session/e2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10

    iget v0, p0, Landroidx/media3/session/e2;->a:I

    const/16 v1, 0x16

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/media3/session/e2;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v6, v3

    check-cast v6, Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;

    move-object v8, p1

    check-cast v8, Ljava/util/List;

    sget p1, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-object v5, p0, Landroidx/media3/session/e2;->b:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, v5, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v4, Landroidx/media3/session/e;

    const/16 v9, 0xb

    iget-object v7, p0, Landroidx/media3/session/e2;->c:Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-direct/range {v4 .. v9}, Landroidx/media3/session/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Landroidx/media3/session/g0;

    invoke-direct {p0, v5, v7, v4}, Landroidx/media3/session/g0;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)V

    new-instance v0, Landroidx/media3/session/SessionResult;

    invoke-direct {v0, v2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    new-instance v2, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lb5;

    invoke-direct {v3, v2, p0, v0, v1}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p1, v3}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v2

    :pswitch_0
    check-cast v3, Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;

    check-cast p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-object v0, p0, Landroidx/media3/session/e2;->b:Landroidx/media3/session/MediaSessionImpl;

    iget-object v4, v0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v5, Landroidx/media3/session/t0;

    const/4 v6, 0x6

    invoke-direct {v5, v0, v3, p1, v6}, Landroidx/media3/session/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Landroidx/media3/session/g0;

    iget-object p0, p0, Landroidx/media3/session/e2;->c:Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-direct {p1, v0, p0, v5}, Landroidx/media3/session/g0;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)V

    new-instance p0, Landroidx/media3/session/SessionResult;

    invoke-direct {p0, v2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    new-instance v0, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lb5;

    invoke-direct {v2, v0, p1, p0, v1}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v4, v2}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
