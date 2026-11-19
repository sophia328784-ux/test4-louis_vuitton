.class final Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;
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
        "Ljava/util/List<",
        "+",
        "Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;",
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
    c = "com.vuitton.android.data.repository.LightUpRepositoryImpl$getLightUpProducts$2"
    f = "LightUpRepositoryImpl.kt"
    l = {
        0x2a,
        0x2e,
        0x34
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;


# direct methods
.method public constructor <init>(ZZLcom/vuitton/android/data/repository/LightUpRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;->c:Z

    iput-boolean p2, p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;->d:Z

    iput-object p3, p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;->e:Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;

    iget-boolean v0, p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;->d:Z

    iget-object v1, p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;->e:Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;

    iget-boolean p0, p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;->c:Z

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;-><init>(ZZLcom/vuitton/android/data/repository/LightUpRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;->b:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;->d:Z

    iget-object v1, p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;->e:Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;

    iget-boolean v5, p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;->c:Z

    if-eqz v5, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;->l()Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;

    move-result-object p1

    iput v4, p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;->b:I

    invoke-interface {p1, p0}, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_5
    if-eqz v5, :cond_7

    invoke-virtual {v1}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;->l()Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;

    move-result-object p1

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->KEEPALL:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    iput v3, p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;->b:I

    invoke-interface {p1, v1, p0}, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_7
    if-eqz p1, :cond_9

    invoke-virtual {v1}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;->l()Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;

    move-result-object p1

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->X408PAIR:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    iput v2, p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;->b:I

    invoke-interface {p1, v1, p0}, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    :goto_2
    return-object v0

    :cond_8
    :goto_3
    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_9
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0
.end method
