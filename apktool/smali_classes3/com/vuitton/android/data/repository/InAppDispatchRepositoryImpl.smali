.class public final Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/InAppDispatchRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;",
        "localStorageDataSource",
        "Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;",
        "memCacheDataSource",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;)V",
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
.field public static final synthetic d:I


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;

.field public final c:Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1;-><init>(Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;->f(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Error: No cache for user in app dispatch... Please review your development work! Ensure that the user in app dispatch is properly set before use. Consider moving your logic after setting the dispatch."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1;

    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1;-><init>(Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1;->b:Ljava/util/List;

    check-cast p0, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1;->b:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    iput-object p2, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1;->b:Ljava/util/List;

    iput v4, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1;->e:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;->f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move-object p2, p1

    check-cast p2, Ljava/util/List;

    iput-object p2, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1;->b:Ljava/util/List;

    iput v3, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_3
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p2, p1, Lkotlin/Result$Failure;

    if-eqz p2, :cond_6

    move-object p1, v5

    :cond_6
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;->a:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object p1, v5

    :goto_4
    if-eqz p1, :cond_8

    invoke-static {p1, p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/DispatchAreaKt;->a(Ljava/lang/String;Ljava/util/List;)Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v5
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$saveUserInAppDispatch$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$saveUserInAppDispatch$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$saveUserInAppDispatch$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$saveUserInAppDispatch$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$saveUserInAppDispatch$1;

    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$saveUserInAppDispatch$1;-><init>(Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$saveUserInAppDispatch$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$saveUserInAppDispatch$1;->d:I

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

    iget-object p2, p0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$saveUserInAppDispatch$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;->f(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1;

    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1;-><init>(Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;

    iput-object v3, p1, Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput v4, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$migrateLegacyDispatchIdentifierFormat$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$migrateLegacyDispatchIdentifierFormat$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$migrateLegacyDispatchIdentifierFormat$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$migrateLegacyDispatchIdentifierFormat$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$migrateLegacyDispatchIdentifierFormat$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$migrateLegacyDispatchIdentifierFormat$1;-><init>(Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$migrateLegacyDispatchIdentifierFormat$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$migrateLegacyDispatchIdentifierFormat$1;->d:I

    iget-object v3, p0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    iget-object p0, p0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v6, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$migrateLegacyDispatchIdentifierFormat$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;->e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_5

    :cond_5
    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    move-object v6, p1

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Legacy identifier: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    if-nez v2, :cond_8

    :try_start_2
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;->a:Ljava/lang/String;

    iput v5, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$migrateLegacyDispatchIdentifierFormat$1;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;->f(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_5

    :cond_7
    :goto_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v2

    :cond_8
    :goto_4
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_9

    move-object v5, p1

    check-cast v5, Lkotlin/Unit;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    if-nez v2, :cond_b

    :try_start_3
    check-cast p1, Lkotlin/Unit;

    iput v4, v0, Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$migrateLegacyDispatchIdentifierFormat$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    :goto_5
    return-object v1

    :cond_a
    :goto_6
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object p1, p0

    goto :goto_8

    :goto_7
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_b
    :goto_8
    instance-of p0, p1, Lkotlin/Result$Failure;

    if-nez p0, :cond_c

    move-object p0, p1

    check-cast p0, Lkotlin/Unit;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_c
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_d
    return-object p1
.end method
