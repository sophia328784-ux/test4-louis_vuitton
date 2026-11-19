.class final Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;
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
    c = "com.vuitton.android.data.datasource.config.AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1"
    f = "AbTestLocalDataSource.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/vuitton/foundation/model/domain/model/config/AbTest;

.field public final synthetic d:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AbTest;Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;->d:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;->d:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;->b:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AbTest;Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->c:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    invoke-static {p1, v0}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$Companion;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AbTest;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$persistAbTestAssignmentIfAbsent$2$1;->d:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->b:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    sget-object v2, Lkotlin/random/Random;->b:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget v1, v0, Lkotlin/ranges/IntProgression;->c:I

    iget v0, v0, Lkotlin/ranges/IntProgression;->b:I

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lkotlin/random/Random;->c:Lkotlin/random/AbstractPlatformRandom;

    invoke-virtual {v2, v0, v1}, Lkotlin/random/Random;->e(II)I

    move-result v1

    goto :goto_0

    :cond_1
    const/high16 v2, -0x80000000

    if-le v0, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lkotlin/random/Random;->c:Lkotlin/random/AbstractPlatformRandom;

    invoke-virtual {v2, v0, v1}, Lkotlin/random/Random;->e(II)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lkotlin/random/Random;->c:Lkotlin/random/AbstractPlatformRandom;

    invoke-virtual {v0}, Lkotlin/random/AbstractPlatformRandom;->d()I

    move-result v1

    goto :goto_0

    :cond_3
    const-string v2, "Cannot get random in empty range: "

    invoke-static {v0, v2}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
