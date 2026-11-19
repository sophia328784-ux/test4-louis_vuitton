.class public abstract Lcom/sightcall/libraries/archi/coordinator/Coordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000b\u001a\u00020\u000cH$J\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0017\u001a\u00020\u000cH$J\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u0014\u0010\u0019\u001a\u00020\u000c2\n\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u0000H\u0004J\u001c\u0010\u001b\u001a\u00020\u000c2\u0012\u0010\u001a\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00000\u001cH\u0004J\'\u0010\u001d\u001a\u0002H\u001e\"\u000c\u0008\u0001\u0010\u001e*\u0006\u0012\u0002\u0008\u00030\u00002\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u001e0\u001c\u00a2\u0006\u0002\u0010 J\"\u0010!\u001a\u00020\u000f\"\u000c\u0008\u0001\u0010\u001e*\u0006\u0012\u0002\u0008\u00030\u00002\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u001e0\u001cJ+\u0010\"\u001a\u0004\u0018\u0001H\u001e\"\u000c\u0008\u0001\u0010\u001e*\u0006\u0012\u0002\u0008\u00030\u00002\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u001e0\u001cH\u0002\u00a2\u0006\u0002\u0010 J\u0012\u0010#\u001a\u00020\u000c2\n\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u0000J\u0012\u0010$\u001a\u00020\u000c2\n\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u0000R\u0016\u0010\u0003\u001a\u00028\u0000X\u0084\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\t\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00000\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/sightcall/libraries/archi/coordinator/Coordinator;",
        "C",
        "",
        "component",
        "<init>",
        "(Ljava/lang/Object;)V",
        "getComponent",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "childrenStack",
        "Ljava/util/Deque;",
        "onStart",
        "",
        "start",
        "backPressed",
        "",
        "requestPermissionsResult",
        "requestCode",
        "",
        "grantResults",
        "",
        "determinePermissionState",
        "Lcom/sightcall/libraries/archi/coordinator/PermissionState;",
        "onRelease",
        "release",
        "attachCoordinator",
        "coordinator",
        "detachCoordinator",
        "Lkotlin/reflect/KClass;",
        "findChildCoordinator",
        "T",
        "type",
        "(Lkotlin/reflect/KClass;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;",
        "isCoordinatorAttached",
        "findFromKClass",
        "attachTo",
        "detachFrom",
        "archi_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final childrenStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final component:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->component:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->childrenStack:Ljava/util/Deque;

    return-void
.end method

.method private final determinePermissionState([I)Lcom/sightcall/libraries/archi/coordinator/PermissionState;
    .locals 1

    array-length p0, p1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-nez p0, :cond_1

    aget p0, p1, v0

    if-nez p0, :cond_1

    sget-object p0, Lcom/sightcall/libraries/archi/coordinator/PermissionState;->GRANTED:Lcom/sightcall/libraries/archi/coordinator/PermissionState;

    return-object p0

    :cond_1
    sget-object p0, Lcom/sightcall/libraries/archi/coordinator/PermissionState;->DENIED:Lcom/sightcall/libraries/archi/coordinator/PermissionState;

    return-object p0
.end method

.method private final findFromKClass(Lkotlin/reflect/KClass;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;>(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->childrenStack:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    return-object v0
.end method


# virtual methods
.method public final attachCoordinator(Lcom/sightcall/libraries/archi/coordinator/Coordinator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->childrenStack:Ljava/util/Deque;

    invoke-interface {p0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public final attachTo(Lcom/sightcall/libraries/archi/coordinator/Coordinator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->attachCoordinator(Lcom/sightcall/libraries/archi/coordinator/Coordinator;)V

    return-void
.end method

.method public final backPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->childrenStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->backPressed()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/sightcall/libraries/archi/coordinator/BackPressedListener;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/sightcall/libraries/archi/coordinator/BackPressedListener;

    invoke-interface {p0}, Lcom/sightcall/libraries/archi/coordinator/BackPressedListener;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public final detachCoordinator(Lkotlin/reflect/KClass;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->findFromKClass(Lkotlin/reflect/KClass;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->release()Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    iget-object p0, p0, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->childrenStack:Ljava/util/Deque;

    invoke-interface {p0, p1}, Ljava/util/Deque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final detachFrom(Lcom/sightcall/libraries/archi/coordinator/Coordinator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->detachCoordinator(Lkotlin/reflect/KClass;)V

    return-void
.end method

.method public final findChildCoordinator(Lkotlin/reflect/KClass;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;>(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->findFromKClass(Lkotlin/reflect/KClass;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Required coordinator is not a child of this coordinator"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getComponent()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->component:Ljava/lang/Object;

    return-object p0
.end method

.method public final isCoordinatorAttached(Lkotlin/reflect/KClass;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;>(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->findFromKClass(Lkotlin/reflect/KClass;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract onRelease()V
.end method

.method public abstract onStart()V
.end method

.method public final release()Lcom/sightcall/libraries/archi/coordinator/Coordinator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->childrenStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    invoke-virtual {v1}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->release()Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->childrenStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->onRelease()V

    return-object p0
.end method

.method public final requestPermissionsResult(I[I)Z
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->childrenStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sightcall/libraries/archi/coordinator/Coordinator;

    if-nez v2, :cond_1

    invoke-virtual {v3, p1, p2}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->requestPermissionsResult(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    if-nez v2, :cond_4

    instance-of v0, p0, Lcom/sightcall/libraries/archi/coordinator/PermissionListener;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/sightcall/libraries/archi/coordinator/PermissionListener;

    new-instance v2, Lcom/sightcall/libraries/archi/coordinator/Permission;

    invoke-direct {p0, p2}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->determinePermissionState([I)Lcom/sightcall/libraries/archi/coordinator/PermissionState;

    move-result-object p0

    invoke-direct {v2, p1, p0}, Lcom/sightcall/libraries/archi/coordinator/Permission;-><init>(ILcom/sightcall/libraries/archi/coordinator/PermissionState;)V

    invoke-interface {v0, v2}, Lcom/sightcall/libraries/archi/coordinator/PermissionListener;->onRequestPermissionsResult(Lcom/sightcall/libraries/archi/coordinator/Permission;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v4

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public final start()Lcom/sightcall/libraries/archi/coordinator/Coordinator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "TC;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/coordinator/Coordinator;->onStart()V

    return-object p0
.end method
