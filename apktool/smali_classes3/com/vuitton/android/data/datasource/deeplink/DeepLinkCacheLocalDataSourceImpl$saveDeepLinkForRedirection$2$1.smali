.class final Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1;
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
    c = "com.vuitton.android.data.datasource.deeplink.DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1"
    f = "DeepLinkCacheLocalDataSourceImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1;->c:Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1;->c:Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1;-><init>(Ljava/lang/String;Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1;->b:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1;->c:Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deep_link_for_redirection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;->c:Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;

    invoke-interface {p0}, Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;->a()J

    move-result-wide p0

    const-string v1, "deep_link_for_redirection_creation_timestamp"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    const-string p0, "Deep link cannot be blank"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
