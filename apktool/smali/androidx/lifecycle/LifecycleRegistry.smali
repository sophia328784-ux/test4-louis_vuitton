.class public Landroidx/lifecycle/LifecycleRegistry;
.super Landroidx/lifecycle/Lifecycle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LifecycleRegistry$Companion;,
        Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001:\u0002\u0006\u0007B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/lifecycle/LifecycleRegistry;",
        "Landroidx/lifecycle/Lifecycle;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "provider",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "ObserverWithState",
        "Companion",
        "lifecycle-runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final k:Landroidx/lifecycle/LifecycleRegistry$Companion;


# instance fields
.field public final b:Z

.field public c:Landroidx/lifecycle/FastSafeIterableMap;

.field public final d:Landroidx/lifecycle/WeakReference;

.field public e:I

.field public f:Z

.field public g:Z

.field public final h:Ljava/util/ArrayList;

.field public i:Landroidx/lifecycle/Lifecycle$State;

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/LifecycleRegistry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/LifecycleRegistry;->k:Landroidx/lifecycle/LifecycleRegistry$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Z)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/Lifecycle;-><init>()V

    iput-boolean p2, p0, Landroidx/lifecycle/LifecycleRegistry;->b:Z

    new-instance p2, Landroidx/lifecycle/FastSafeIterableMap;

    invoke-direct {p2}, Landroidx/lifecycle/FastSafeIterableMap;-><init>()V

    iput-object p2, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    new-instance p2, Landroidx/lifecycle/WeakReference;

    invoke-direct {p2, p1}, Landroidx/lifecycle/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/lifecycle/LifecycleRegistry;->d:Landroidx/lifecycle/WeakReference;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->h:Ljava/util/ArrayList;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "addObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->f(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    :goto_0
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;-><init>(Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/lifecycle/FastSafeIterableMap;->a:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    if-eqz v3, :cond_1

    iget-object v1, v3, Landroidx/lifecycle/FastSafeIterableMap$Entry;->c:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    new-instance v3, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    invoke-direct {v3, p1, v0}, Landroidx/lifecycle/FastSafeIterableMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Landroidx/lifecycle/FastSafeIterableMap;->c:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    if-nez v2, :cond_2

    iput-object v3, v1, Landroidx/lifecycle/FastSafeIterableMap;->b:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    iput-object v3, v1, Landroidx/lifecycle/FastSafeIterableMap;->c:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    goto :goto_1

    :cond_2
    iput-object v3, v2, Landroidx/lifecycle/FastSafeIterableMap$Entry;->d:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    iput-object v2, v3, Landroidx/lifecycle/FastSafeIterableMap$Entry;->e:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    iput-object v3, v1, Landroidx/lifecycle/FastSafeIterableMap;->c:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    :goto_1
    const/4 v1, 0x0

    :goto_2
    check-cast v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->d:Landroidx/lifecycle/WeakReference;

    iget-object v1, v1, Landroidx/lifecycle/WeakReference;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    if-nez v1, :cond_4

    :goto_3
    return-void

    :cond_4
    iget v2, p0, Landroidx/lifecycle/LifecycleRegistry;->e:I

    const/4 v3, 0x1

    if-nez v2, :cond_6

    iget-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->f:Z

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    move v2, v3

    :goto_5
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->e(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    iget v5, p0, Landroidx/lifecycle/LifecycleRegistry;->e:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/lifecycle/LifecycleRegistry;->e:I

    :goto_6
    iget-object v3, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_8

    iget-object v3, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Landroidx/lifecycle/FastSafeIterableMap;->a:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v3, p1}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroidx/lifecycle/LifecycleRegistry;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/Lifecycle$Event$Companion;

    iget-object v5, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/lifecycle/Lifecycle$Event$Companion;->b(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->d0(Ljava/util/List;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->e(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    goto :goto_6

    :cond_7
    iget-object p0, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    const-string p1, "no event up from "

    invoke-static {p0, p1}, Lct0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_8
    if-nez v2, :cond_9

    invoke-virtual {p0}, Landroidx/lifecycle/LifecycleRegistry;->j()V

    :cond_9
    iget p1, p0, Landroidx/lifecycle/LifecycleRegistry;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/LifecycleRegistry;->e:I

    return-void
.end method

.method public final b()Landroidx/lifecycle/Lifecycle$State;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    return-object p0
.end method

.method public final c()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final d(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->f(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/lifecycle/FastSafeIterableMap;->a:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->e:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    iget-object v1, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->d:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    if-nez v0, :cond_1

    iput-object v1, p0, Landroidx/lifecycle/FastSafeIterableMap;->b:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    goto :goto_0

    :cond_1
    iput-object v1, v0, Landroidx/lifecycle/FastSafeIterableMap$Entry;->d:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    :goto_0
    iget-object v1, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->d:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    if-nez v1, :cond_2

    iput-object v0, p0, Landroidx/lifecycle/FastSafeIterableMap;->c:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    goto :goto_1

    :cond_2
    iput-object v0, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->e:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    :goto_1
    const/4 p0, 0x1

    iput-boolean p0, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->f:Z

    return-void
.end method

.method public final e(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/lifecycle/FastSafeIterableMap;->a:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->e:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    invoke-static {v0, v1}, Lcj;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$State;

    :cond_2
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, p0

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-gez p0, :cond_4

    return-object v0

    :cond_4
    return-object p1
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    iget-boolean p0, p0, Landroidx/lifecycle/LifecycleRegistry;->b:Z

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->a()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object p0

    iget-object p0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->a:Landroidx/arch/core/executor/DefaultTaskExecutor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    const-string p0, "Method "

    const-string v0, " must be called on the main thread"

    invoke-static {p0, p1, v0}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltg0;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final g(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$Event;->a()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->h(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public final h(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 4

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->d:Landroidx/lifecycle/WeakReference;

    iget-object v0, v0, Landroidx/lifecycle/WeakReference;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_2

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "State must be at least \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' to be moved to \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' in component "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_4

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "State is \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' and cannot be moved to `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "` in component "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    iget-boolean p1, p0, Landroidx/lifecycle/LifecycleRegistry;->f:Z

    const/4 v0, 0x1

    if-nez p1, :cond_7

    iget p1, p0, Landroidx/lifecycle/LifecycleRegistry;->e:I

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->f:Z

    invoke-virtual {p0}, Landroidx/lifecycle/LifecycleRegistry;->j()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/LifecycleRegistry;->f:Z

    iget-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    if-ne p1, v2, :cond_6

    new-instance p1, Landroidx/lifecycle/FastSafeIterableMap;

    invoke-direct {p1}, Landroidx/lifecycle/FastSafeIterableMap;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->g:Z

    return-void
.end method

.method public final i(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "setCurrentState"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->f(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->h(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public final j()V
    .locals 7

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->d:Landroidx/lifecycle/WeakReference;

    iget-object v0, v0, Landroidx/lifecycle/WeakReference;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    iget-object v2, v1, Landroidx/lifecycle/FastSafeIterableMap;->a:Landroidx/collection/MutableScatterMap;

    iget v2, v2, Landroidx/collection/ScatterMap;->e:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Landroidx/lifecycle/FastSafeIterableMap;->b:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    const-string v4, "Collection is empty."

    if-eqz v2, :cond_8

    iget-object v5, v2, Landroidx/lifecycle/FastSafeIterableMap$Entry;->c:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v6, v6, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap;->c:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    if-eqz v1, :cond_7

    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    if-ne v6, v1, :cond_2

    iget-object v6, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    if-ne v6, v1, :cond_2

    :goto_0
    iput-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->g:Z

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_2
    iput-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->g:Z

    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    if-eqz v2, :cond_6

    check-cast v5, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v2, v5, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_4

    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    new-instance v2, Lq90;

    invoke-direct {v2, p0, v0, v3}, Lq90;-><init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/LifecycleOwner;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap;->c:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    :goto_1
    if-eqz v1, :cond_4

    iget-boolean v3, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->f:Z

    if-nez v3, :cond_3

    invoke-virtual {v2, v1}, Lq90;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->e:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap;->c:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    iget-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->g:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->c:Landroidx/lifecycle/FastSafeIterableMap;

    new-instance v2, Lq90;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lq90;-><init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/LifecycleOwner;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap;->b:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    :goto_2
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->f:Z

    if-nez v3, :cond_5

    invoke-virtual {v2, v1}, Lq90;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, v1, Landroidx/lifecycle/FastSafeIterableMap$Entry;->d:Landroidx/lifecycle/FastSafeIterableMap$Entry;

    goto :goto_2

    :cond_6
    invoke-static {v4}, Lzy0;->c(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-static {v4}, Lzy0;->c(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-static {v4}, Lzy0;->c(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string p0, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
