.class public final Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/userinteraction/CrossPlatformEventInterceptor;
.implements Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;",
        "Lcom/dynatrace/agent/userinteraction/CrossPlatformEventInterceptor;",
        "Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "<init>",
        "(Lcom/dynatrace/agent/common/time/TimeProvider;)V",
        "Companion",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final b:Ljava/lang/Object;

.field public final c:Lkotlin/collections/ArrayDeque;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/agent/common/time/TimeProvider;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;->a:Lcom/dynatrace/agent/common/time/TimeProvider;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;->b:Ljava/lang/Object;

    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;->c:Lkotlin/collections/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;->b:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    const-string v0, "[Suppression] recordSequenceStart -> sequenceActive=true"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Z)Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;
    .locals 3

    const-string v0, "[Suppression] resolveSequence(gesture) -> discarded "

    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;->b:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;->c:Lkotlin/collections/ArrayDeque;

    iget v2, p1, Lkotlin/collections/ArrayDeque;->d:I

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->clear()V

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;->a:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {p0}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " buffered actions"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object p0, Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;->EMIT_NATIVE_EVENT:Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;->c:Lkotlin/collections/ArrayDeque;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;->c:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->clear()V

    sget-object p0, Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;->EMIT_NATIVE_EVENT:Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    iget-object p0, v0, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p0, Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    iget-object p1, v0, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Suppression] resolveSequence(touch) -> forwarded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " buffered actions"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_2
    return-object p0

    :goto_2
    monitor-exit v1

    throw p0
.end method
