.class final Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.data.datasource.config.AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1"
    f = "AbTestLocalDataSource.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

.field public final synthetic d:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;->d:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;->d:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;->b:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->c:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ab_test_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    sget-object v4, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->c:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$Companion;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AbTest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$clearObsoleteAbTestAssignments$2$1;->d:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->b:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
