.class public abstract Landroidx/navigationevent/NavigationEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/navigationevent/NavigationEventInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0019\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/navigationevent/NavigationEventHandler;",
        "Landroidx/navigationevent/NavigationEventInfo;",
        "T",
        "",
        "initialInfo",
        "",
        "isBackEnabled",
        "isForwardEnabled",
        "<init>",
        "(Landroidx/navigationevent/NavigationEventInfo;ZZ)V",
        "(Landroidx/navigationevent/NavigationEventInfo;Z)V",
        "navigationevent"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Landroidx/navigationevent/NavigationEventInfo;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Landroidx/navigationevent/NavigationEventTransitionState;

.field public e:Z

.field public f:Z

.field public g:Landroidx/navigationevent/NavigationEventDispatcher;


# direct methods
.method public constructor <init>(Landroidx/navigationevent/NavigationEventInfo;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Landroidx/navigationevent/NavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigationevent/NavigationEventInfo;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventHandler;->a:Landroidx/navigationevent/NavigationEventInfo;

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventHandler;->b:Ljava/util/List;

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventHandler;->c:Ljava/util/List;

    sget-object p1, Landroidx/navigationevent/NavigationEventTransitionState$Idle;->a:Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventHandler;->d:Landroidx/navigationevent/NavigationEventTransitionState;

    iput-boolean p2, p0, Landroidx/navigationevent/NavigationEventHandler;->e:Z

    iput-boolean p3, p0, Landroidx/navigationevent/NavigationEventHandler;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->g:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventDispatcher;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventHandler;->e:Z

    return p0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->g:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventDispatcher;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventHandler;->f:Z

    return p0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "A handler that receives a \'backCompleted\' event must override \'onBackCompleted()\' to handle the callback."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    return-void
.end method

.method public f(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->g:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroidx/navigationevent/NavigationEventDispatcher;->g:Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {v1, p0}, Landroidx/collection/MutableOrderedScatterSet;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Landroidx/navigationevent/NavigationEventDispatcher;->e:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->g:Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->h:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/navigationevent/NavigationEventTransitionState$Idle;->a:Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    iput-object v1, p0, Landroidx/navigationevent/NavigationEventHandler;->d:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->g()V

    goto :goto_0

    :cond_1
    sget-object v1, Landroidx/navigationevent/NavigationEventTransitionState$Idle;->a:Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    iput-object v1, p0, Landroidx/navigationevent/NavigationEventHandler;->d:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->c()V

    :goto_0
    iput-object v2, v0, Landroidx/navigationevent/NavigationEventProcessor;->g:Landroidx/navigationevent/NavigationEventHandler;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->h:I

    iput-object v2, v0, Landroidx/navigationevent/NavigationEventProcessor;->i:Landroidx/navigationevent/NavigationEventInput;

    :cond_2
    iget-object v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->e:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1, p0}, Lkotlin/collections/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1, p0}, Lkotlin/collections/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iput-object v2, p0, Landroidx/navigationevent/NavigationEventHandler;->g:Landroidx/navigationevent/NavigationEventDispatcher;

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventProcessor;->b()V

    :cond_3
    return-void
.end method

.method public final i(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/navigationevent/NavigationEventHandler;->e:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Landroidx/navigationevent/NavigationEventHandler;->e:Z

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHandler;->g:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->e:Landroidx/navigationevent/NavigationEventProcessor;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventProcessor;->b()V

    :cond_1
    :goto_0
    return-void
.end method
