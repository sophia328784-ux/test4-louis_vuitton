.class public final synthetic Landroidx/media3/common/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/common/util/a;->b:I

    iput-object p1, p0, Landroidx/media3/common/util/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p0, Landroidx/media3/common/util/a;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object p0, p0, Landroidx/media3/common/util/a;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/common/util/StuckPlayerDetector;

    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v2, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/util/StuckPlayerDetector;->j:Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;

    invoke-virtual {p0}, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->a()V

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/media3/common/util/StuckPlayerDetector;->i:Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;

    invoke-virtual {p0}, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->a()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/media3/common/util/StuckPlayerDetector;->h:Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;

    invoke-virtual {p0}, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->a()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/media3/common/util/StuckPlayerDetector;->g:Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;

    invoke-virtual {p0}, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->a()V

    goto :goto_0

    :goto_1
    return v1

    :pswitch_0
    check-cast p0, Landroidx/media3/common/util/ListenerSet;

    iget-object p1, p0, Landroidx/media3/common/util/ListenerSet;->d:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    iget-boolean v4, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->d:Z

    if-nez v4, :cond_5

    iget-boolean v4, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->c:Z

    if-eqz v4, :cond_5

    iget-object v4, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->b:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v4}, Landroidx/media3/common/FlagSet$Builder;->c()Landroidx/media3/common/FlagSet;

    move-result-object v4

    new-instance v5, Landroidx/media3/common/FlagSet$Builder;

    invoke-direct {v5}, Landroidx/media3/common/FlagSet$Builder;-><init>()V

    iput-object v5, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->b:Landroidx/media3/common/FlagSet$Builder;

    iput-boolean v1, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->c:Z

    iget-object v3, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->a:Ljava/lang/Object;

    invoke-interface {p1, v3, v4}, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;->a(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V

    :cond_5
    iget-object v3, p0, Landroidx/media3/common/util/ListenerSet;->c:Landroidx/media3/common/util/HandlerWrapper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v2}, Landroidx/media3/common/util/HandlerWrapper;->d(I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_6
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
