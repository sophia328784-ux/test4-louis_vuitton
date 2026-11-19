.class public final Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0008B\u001b\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;",
        "",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "schedulersProvider",
        "Landroid/content/SharedPreferences;",
        "encryptedSharedPreferences",
        "<init>",
        "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/content/SharedPreferences;)V",
        "Companion",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final c:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$Companion;


# instance fields
.field public final a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

.field public final b:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->c:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->b:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$1;-><init>(Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p3, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p3}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p3

    new-instance v2, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;

    invoke-direct {v2, p2, p1, p0, v4}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$1;->d:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final b(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AbTest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$1;-><init>(Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p3, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p3}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p3

    new-instance v2, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;

    invoke-direct {v2, p1, p2, p0, v4}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AbTest;Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$1;->d:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p3}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_5

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_3
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p1
.end method

.method public final c(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p4, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1;-><init>(Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    iget-object p3, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1;->b:Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    iget-object p1, p4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a:Ljava/util/List;

    if-eqz p2, :cond_d

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/config/AbTest;->b:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v3, p4

    :cond_4
    move-object p2, v3

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    if-nez p2, :cond_5

    goto/16 :goto_3

    :cond_5
    iput-object p3, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    iput v4, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$isFeatureFlagActiveInAbTest$1;->f:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->b(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AbTest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p0, p2

    :goto_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p2, p1, Lkotlin/Result$Failure;

    if-nez p2, :cond_c

    :try_start_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/vuitton/foundation/model/domain/model/config/AbTest;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    const/4 v0, 0x0

    if-eq p4, v4, :cond_a

    const/4 v1, 0x2

    if-ne p4, v1, :cond_9

    if-ne p1, v4, :cond_7

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p3, p0, v4}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p3, p0, v4}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_2

    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/config/AbTest;->a:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "A/B test \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' has too many feature flags ("

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", max=2)."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    move v4, v0

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_c
    return-object p1

    :cond_d
    :goto_3
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "Feature flag \'"

    const-string p2, "\' is not part of any A/B test."

    invoke-static {p1, p3, p2}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final d(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AbTest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1;-><init>(Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p3, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p3}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p3

    new-instance v2, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;

    invoke-direct {v2, p1, p2, p0, v4}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AbTest;Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$1;->d:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method
