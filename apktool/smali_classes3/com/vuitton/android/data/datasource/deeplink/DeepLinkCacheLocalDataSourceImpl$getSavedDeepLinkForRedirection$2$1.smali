.class final Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
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
    c = "com.vuitton.android.data.datasource.deeplink.DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1"
    f = "DeepLinkCacheLocalDataSourceImpl.kt"
    l = {
        0x29
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1;->c:Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1;->c:Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1;-><init>(Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1;->b:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1;->c:Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v4, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1;->b:I

    invoke-static {v3, p0}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;->d(Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v3, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;->b:Landroid/content/SharedPreferences;

    const-string p1, "deep_link_for_redirection"

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "Deep link for redirection is not within the valid time range"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2
.end method
