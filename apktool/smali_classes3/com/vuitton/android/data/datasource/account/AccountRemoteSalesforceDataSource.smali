.class public final Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;",
        "",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/data/api/bff/user/ProfileApi;",
        "profileApi",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/ProfileApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V",
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


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/data/api/bff/user/ProfileApi;

.field public final c:Lcom/vuitton/android/domain/repository/AuthTokenRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/ProfileApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;->b:Lcom/vuitton/android/data/api/bff/user/ProfileApi;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;->c:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;-><init>(Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget v2, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->d:I

    iget v5, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->c:I

    iget v6, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->b:I

    iget-object v7, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->e:Lcom/vuitton/android/data/api/bff/user/ProfileApi;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v7, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;->b:Lcom/vuitton/android/data/api/bff/user/ProfileApi;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;->c:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object v7, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->e:Lcom/vuitton/android/data/api/bff/user/ProfileApi;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->b:I

    iput v2, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->d:I

    iput v5, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->h:I

    invoke-interface {p1, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move v5, v2

    move v6, v5

    :goto_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    iput-object v3, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->e:Lcom/vuitton/android/data/api/bff/user/ProfileApi;

    iput v6, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->b:I

    iput v5, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->d:I

    iput v4, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource$getContactId$1;->h:I

    invoke-interface {v7, p1, v0}, Lcom/vuitton/android/data/api/bff/user/ProfileApi;->getProfile(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    check-cast p1, Lcom/vuitton/android/data/dto/profile/ProfileDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/profile/ProfileDto;->m:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile$ContactId;

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/profile/Profile$ContactId;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    instance-of p1, v0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to retrieve contact id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v1, "AccountRemoteSalesforceDataSource"

    invoke-interface {p0, v1, v0, v3}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-object p1

    :cond_8
    throw v0
.end method
