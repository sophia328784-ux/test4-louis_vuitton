.class final Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1;
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
    c = "com.vuitton.android.data.datasource.config.ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1"
    f = "ConfigsVersionLocalDataSource.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;

.field public final synthetic c:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1;->b:Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1;->c:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1;->b:Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1;->c:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1;-><init>(Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1;->b:Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;

    iget-object v0, p1, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;->c:Lkotlinx/serialization/json/Json;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->Companion:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion$Companion;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1;->c:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/Json;->c(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;->b:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "configs_version"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
