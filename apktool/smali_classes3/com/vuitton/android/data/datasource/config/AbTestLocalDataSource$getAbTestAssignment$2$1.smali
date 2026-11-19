.class final Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.vuitton.android.data.datasource.config.AbTestLocalDataSource$getAbTestAssignment$2$1"
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

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;->d:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;->d:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;->b:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AbTest;Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->c:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    invoke-static {p1, v0}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$Companion;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AbTest;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/config/AbTest;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource$getAbTestAssignment$2$1;->d:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->b:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_1

    const/16 p1, 0x64

    if-ge p0, p1, :cond_1

    iget p1, v0, Lcom/vuitton/foundation/model/domain/model/config/AbTest;->c:I

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "A/B test random value for campaign \'"

    const-string v0, "\' is invalid."

    invoke-static {p1, v1, v0}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "A/B test value for campaign \'"

    const-string v0, "\' has not been persisted yet."

    invoke-static {p1, v1, v0}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
