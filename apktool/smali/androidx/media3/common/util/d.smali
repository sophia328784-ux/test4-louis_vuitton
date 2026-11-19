.class public final synthetic Landroidx/media3/common/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/d;->b:Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/common/util/d;->b:Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;

    iget-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/NetworkTypeObserver$Listener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->c:Landroidx/media3/common/util/NetworkTypeObserver;

    invoke-virtual {p0}, Landroidx/media3/common/util/NetworkTypeObserver;->b()I

    move-result p0

    invoke-interface {v0, p0}, Landroidx/media3/common/util/NetworkTypeObserver$Listener;->a(I)V

    :cond_0
    return-void
.end method
