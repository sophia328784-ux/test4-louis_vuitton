.class public final synthetic Landroidx/media3/common/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/media3/common/util/ListenerSet$Event;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Landroidx/media3/common/util/b;->c:I

    iput-object p3, p0, Landroidx/media3/common/util/b;->d:Landroidx/media3/common/util/ListenerSet$Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/util/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    iget-boolean v2, v1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->d:Z

    if-nez v2, :cond_0

    const/4 v2, -0x1

    iget v3, p0, Landroidx/media3/common/util/b;->c:I

    if-eq v3, v2, :cond_1

    iget-object v2, v1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->b:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v2, v3}, Landroidx/media3/common/FlagSet$Builder;->a(I)V

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->c:Z

    iget-object v1, v1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/common/util/b;->d:Landroidx/media3/common/util/ListenerSet$Event;

    invoke-interface {v2, v1}, Landroidx/media3/common/util/ListenerSet$Event;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method
