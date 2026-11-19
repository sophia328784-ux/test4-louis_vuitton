.class public final synthetic Landroidx/media3/session/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/ConnectedControllersManager;Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/session/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/d;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/d;->e:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media3/session/d;->g:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/media3/session/d;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/common/util/ConditionVariable;)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/session/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/d;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/d;->e:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media3/session/d;->f:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/media3/session/d;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Landroidx/media3/session/d;->b:I

    iget-object v1, p0, Landroidx/media3/session/d;->g:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/session/d;->f:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/session/d;->e:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/session/d;->d:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/session/d;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    check-cast v4, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v3, Landroidx/media3/session/MediaSession$ControllerInfo;

    check-cast v2, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    check-cast v1, Landroidx/media3/common/util/ConditionVariable;

    iget-object p0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    invoke-virtual {p0, v3, v2}, Landroidx/media3/session/MediaLibrarySessionImpl;->C(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ConditionVariable;->d()Z

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/session/ConnectedControllersManager;

    check-cast v4, Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v4}, Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;->run()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v4, Landroidx/media3/session/e;

    invoke-direct {v4, p0, v3, v1, v2}, Landroidx/media3/session/e;-><init>(Landroidx/media3/session/ConnectedControllersManager;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {v0, v4, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
