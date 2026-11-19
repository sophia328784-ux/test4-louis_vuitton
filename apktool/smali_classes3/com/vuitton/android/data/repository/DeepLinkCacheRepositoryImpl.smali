.class public final Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/DeepLinkCacheRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/DeepLinkCacheRepository;",
        "Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;",
        "deepLinkCacheDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;)V",
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


# instance fields
.field public final a:Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1;-><init>(Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;

    invoke-interface {p0, v0}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1;-><init>(Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;->b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;

    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-interface {p0, p1}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
