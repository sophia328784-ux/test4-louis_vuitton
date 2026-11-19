.class public final Landroidx/navigationevent/NavigationEventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigationevent/NavigationEventDispatcher$Companion;,
        Landroidx/navigationevent/NavigationEventDispatcher$Priority;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u000c\rB\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0006B\u0019\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\tB\u0011\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/navigationevent/NavigationEventDispatcher;",
        "",
        "<init>",
        "()V",
        "Landroidx/navigationevent/OnBackCompletedFallback;",
        "onBackCompletedFallback",
        "(Landroidx/navigationevent/OnBackCompletedFallback;)V",
        "Landroidx/navigationevent/OnForwardCompletedFallback;",
        "onForwardCompletedFallback",
        "(Landroidx/navigationevent/OnBackCompletedFallback;Landroidx/navigationevent/OnForwardCompletedFallback;)V",
        "parent",
        "(Landroidx/navigationevent/NavigationEventDispatcher;)V",
        "Priority",
        "Companion",
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
.field public final a:Landroidx/navigationevent/NavigationEventDispatcher;

.field public final b:Landroidx/navigationevent/OnBackCompletedFallback;

.field public final c:Landroidx/navigationevent/OnForwardCompletedFallback;

.field public final d:Z

.field public final e:Landroidx/navigationevent/NavigationEventProcessor;

.field public final f:Landroidx/collection/MutableOrderedScatterSet;

.field public final g:Landroidx/collection/MutableOrderedScatterSet;

.field public final h:Landroidx/collection/MutableOrderedScatterSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigationevent/NavigationEventDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigationevent/NavigationEventDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, v0, v0}, Landroidx/navigationevent/NavigationEventDispatcher;-><init>(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/OnBackCompletedFallback;Landroidx/navigationevent/OnForwardCompletedFallback;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigationevent/NavigationEventDispatcher;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0, v0}, Landroidx/navigationevent/NavigationEventDispatcher;-><init>(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/OnBackCompletedFallback;Landroidx/navigationevent/OnForwardCompletedFallback;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/OnBackCompletedFallback;Landroidx/navigationevent/OnForwardCompletedFallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventDispatcher;->a:Landroidx/navigationevent/NavigationEventDispatcher;

    iput-object p2, p0, Landroidx/navigationevent/NavigationEventDispatcher;->b:Landroidx/navigationevent/OnBackCompletedFallback;

    iput-object p3, p0, Landroidx/navigationevent/NavigationEventDispatcher;->c:Landroidx/navigationevent/OnForwardCompletedFallback;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/navigationevent/NavigationEventDispatcher;->d:Z

    if-eqz p1, :cond_0

    iget-object p2, p1, Landroidx/navigationevent/NavigationEventDispatcher;->e:Landroidx/navigationevent/NavigationEventProcessor;

    if-nez p2, :cond_1

    :cond_0
    new-instance p2, Landroidx/navigationevent/NavigationEventProcessor;

    invoke-direct {p2}, Landroidx/navigationevent/NavigationEventProcessor;-><init>()V

    :cond_1
    iput-object p2, p0, Landroidx/navigationevent/NavigationEventDispatcher;->e:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-static {}, Landroidx/collection/OrderedScatterSetKt;->a()Landroidx/collection/MutableOrderedScatterSet;

    move-result-object p2

    iput-object p2, p0, Landroidx/navigationevent/NavigationEventDispatcher;->f:Landroidx/collection/MutableOrderedScatterSet;

    invoke-static {}, Landroidx/collection/OrderedScatterSetKt;->a()Landroidx/collection/MutableOrderedScatterSet;

    move-result-object p2

    iput-object p2, p0, Landroidx/navigationevent/NavigationEventDispatcher;->g:Landroidx/collection/MutableOrderedScatterSet;

    invoke-static {}, Landroidx/collection/OrderedScatterSetKt;->a()Landroidx/collection/MutableOrderedScatterSet;

    move-result-object p2

    iput-object p2, p0, Landroidx/navigationevent/NavigationEventDispatcher;->h:Landroidx/collection/MutableOrderedScatterSet;

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroidx/navigationevent/NavigationEventDispatcher;->f:Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {p1, p0}, Landroidx/collection/MutableOrderedScatterSet;->h(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroidx/navigationevent/OnBackCompletedFallback;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0, p1, v0}, Landroidx/navigationevent/NavigationEventDispatcher;-><init>(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/OnBackCompletedFallback;Landroidx/navigationevent/OnForwardCompletedFallback;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigationevent/OnBackCompletedFallback;Landroidx/navigationevent/OnForwardCompletedFallback;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0, p1, p2}, Landroidx/navigationevent/NavigationEventDispatcher;-><init>(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/OnBackCompletedFallback;Landroidx/navigationevent/OnForwardCompletedFallback;)V

    return-void
.end method

.method public static a(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->d()V

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->g:Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableOrderedScatterSet;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->e:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Landroidx/navigationevent/NavigationEventHandler;->g:Landroidx/navigationevent/NavigationEventDispatcher;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1, p1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iput-object p0, p1, Landroidx/navigationevent/NavigationEventHandler;->g:Landroidx/navigationevent/NavigationEventDispatcher;

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventProcessor;->b()V

    return-void

    :cond_0
    const-string p0, "Handler \'"

    const-string v0, "\' is already registered with a dispatcher"

    invoke-static {p0, p1, v0}, Llc0;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Landroidx/navigationevent/NavigationEventInput;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->d()V

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->h:Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableOrderedScatterSet;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->e:Landroidx/navigationevent/NavigationEventProcessor;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/navigationevent/NavigationEventProcessor;->a(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventInput;I)V

    :cond_0
    return-void
.end method

.method public final c(Landroidx/navigationevent/OnBackInvokedInput;I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->d()V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Unsupported priority value: "

    invoke-static {p2, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->h:Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableOrderedScatterSet;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->e:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/navigationevent/NavigationEventProcessor;->a(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventInput;I)V

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->f()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "This NavigationEventDispatcher has already been disposed and cannot be used."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Landroidx/navigationevent/NavigationEventInput;Landroidx/navigationevent/NavigationEvent;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->d()V

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->e:Landroidx/navigationevent/NavigationEventProcessor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->h:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/navigationevent/NavigationEventProcessor;->c(I)Landroidx/navigationevent/NavigationEventHandler;

    move-result-object v1

    iput-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->g:Landroidx/navigationevent/NavigationEventHandler;

    iput v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->h:I

    iput-object p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->i:Landroidx/navigationevent/NavigationEventInput;

    if-eqz p2, :cond_3

    if-eqz v1, :cond_2

    new-instance p1, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    invoke-direct {p1, p2, v0}, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;-><init>(Landroidx/navigationevent/NavigationEvent;I)V

    iput-object p1, v1, Landroidx/navigationevent/NavigationEventHandler;->d:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-virtual {v1, p2}, Landroidx/navigationevent/NavigationEventHandler;->f(Landroidx/navigationevent/NavigationEvent;)V

    :cond_2
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance p1, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    invoke-direct {p1, p2, v0}, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;-><init>(Landroidx/navigationevent/NavigationEvent;I)V

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final f()Z
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->a:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventDispatcher;->f()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->a:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventDispatcher;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->d:Z

    return p0
.end method
