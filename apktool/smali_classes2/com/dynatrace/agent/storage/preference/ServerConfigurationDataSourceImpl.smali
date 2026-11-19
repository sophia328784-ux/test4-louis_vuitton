.class public final Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;",
        "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;",
        "Landroidx/datastore/core/DataStore;",
        "Landroidx/datastore/preferences/core/Preferences;",
        "dataStore",
        "<init>",
        "(Landroidx/datastore/core/DataStore;)V",
        "Keys",
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
.field public final a:Landroidx/datastore/core/DataStore;

.field public volatile b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Landroidx/datastore/core/DataStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;->a:Landroidx/datastore/core/DataStore;

    sget-object p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->l:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->m:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iput-object p1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    const-string v0, "configuration is updated: "

    instance-of v1, p2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$1;

    iget v2, v1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$1;->f:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$1;

    invoke-direct {v1, p0, p2}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$1;-><init>(Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$1;->d:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$1;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-object p1, v1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$1;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iget-object p0, v1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$1;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    :try_start_1
    iget-object p2, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;->a:Landroidx/datastore/core/DataStore;

    new-instance v3, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$2;

    invoke-direct {v3, p1, v4}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$2;-><init>(Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$1;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;

    iput-object p1, v1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$1;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iput v5, v1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$1;->f:I

    invoke-static {p2, v3, v1}, Landroidx/datastore/preferences/core/PreferencesKt;->a(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    :goto_2
    iget-object p0, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationChangeListener;

    invoke-interface {p2, p1}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationChangeListener;->a(Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;)V

    goto :goto_3

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final b()Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    return-object p0
.end method

.method public final c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$resetServerConfiguration$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$resetServerConfiguration$1;

    iget v1, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$resetServerConfiguration$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$resetServerConfiguration$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$resetServerConfiguration$1;

    invoke-direct {v0, p0, p1}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$resetServerConfiguration$1;-><init>(Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$resetServerConfiguration$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$resetServerConfiguration$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$resetServerConfiguration$1;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;->a:Landroidx/datastore/core/DataStore;

    new-instance v2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$resetServerConfiguration$2;

    const/4 v5, 0x2

    invoke-direct {v2, v5, v3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$resetServerConfiguration$1;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;

    iput v4, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$resetServerConfiguration$1;->e:I

    invoke-static {p1, v2, v0}, Landroidx/datastore/preferences/core/PreferencesKt;->a(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p1, "configuration preferences are cleared"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    :goto_2
    sget-object p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->l:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->m:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iput-object p1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$1;

    iget v1, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$1;

    invoke-direct {v0, p0, p1}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$1;-><init>(Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$1;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$1;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;

    iget-object v0, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$1;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;->a:Landroidx/datastore/core/DataStore;

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$2;

    const/4 v5, 0x3

    invoke-direct {v2, v5, v3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    invoke-direct {v6, p1, v2}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1;

    invoke-direct {p1, v6}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$4;

    invoke-direct {v2, v5, v3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    invoke-direct {v3, p1, v2}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object p0, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$1;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;

    iput-object p0, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$1;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;

    iput v4, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$1;->f:I

    invoke-static {v3, v0}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iput-object p1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "preloading of ServerConfiguration complete: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iget-object p1, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationChangeListener;

    invoke-interface {v0, p0}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationChangeListener;->a(Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;)V

    goto :goto_2

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
