.class public final Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/session/datasource/reference/ReferenceDataSource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\"\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0096@\u00a2\u0006\u0002\u0010\u0011J\"\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0014H\u0002J\"\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u000e0\u000c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0096@\u00a2\u0006\u0002\u0010\u0019J\"\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u000e0\u000c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0096@\u00a2\u0006\u0002\u0010\u0019J\"\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u000e0\u000c2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0014H\u0002J\u0008\u0010\u001d\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;",
        "Lcom/sightcall/session/datasource/reference/ReferenceDataSource;",
        "referenceApi",
        "Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;Landroid/content/Context;)V",
        "ongoingGetReferenceCall",
        "Lretrofit2/Call;",
        "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;",
        "getReference",
        "Lcom/sightcall/pratik/Result;",
        "Lcom/sightcall/session/Reference;",
        "",
        "uri",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onGetReferenceResponse",
        "response",
        "Lretrofit2/Response;",
        "switchToGuest",
        "Lcom/sightcall/session/ReferenceUpdate;",
        "token",
        "Lcom/sightcall/httpclient/AuthorizationToken;",
        "(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "switchToAttendee",
        "onSwitchResponse",
        "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity;",
        "interruptGetReference",
        "session_release"
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
.field private final context:Landroid/content/Context;

.field private ongoingGetReferenceCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final referenceApi:Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;


# direct methods
.method public constructor <init>(Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;->referenceApi:Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;

    iput-object p2, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$onGetReferenceResponse(Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;Lretrofit2/Response;)Lcom/sightcall/pratik/Result;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;->onGetReferenceResponse(Lretrofit2/Response;)Lcom/sightcall/pratik/Result;

    move-result-object p0

    return-object p0
.end method

.method private final onGetReferenceResponse(Lretrofit2/Response;)Lcom/sightcall/pratik/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;",
            ">;)",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/session/Reference;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-object v0, p1, Lretrofit2/Response;->b:Ljava/lang/Object;

    iget-boolean p0, p0, Lokhttp3/Response;->r:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    iget-object p1, p1, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    new-instance p0, Lcom/sightcall/pratik/Result$Error;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, v0

    check-cast p0, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;

    invoke-static {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt;->toReference(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;)Lcom/sightcall/session/Reference;

    move-result-object p0

    new-instance p1, Lcom/sightcall/pratik/Result$Success;

    invoke-direct {p1, p0}, Lcom/sightcall/pratik/Result$Success;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    new-instance p0, Lcom/sightcall/pratik/Result$Error;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method private final onSwitchResponse(Lretrofit2/Response;)Lcom/sightcall/pratik/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity;",
            ">;)",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/session/ReferenceUpdate;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-object v0, p1, Lretrofit2/Response;->b:Ljava/lang/Object;

    iget-boolean p0, p0, Lokhttp3/Response;->r:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    iget-object p1, p1, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    new-instance p0, Lcom/sightcall/pratik/Result$Error;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, v0

    check-cast p0, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity;

    invoke-static {p0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchMappersKt;->toReferenceUpdate(Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity;)Lcom/sightcall/session/ReferenceUpdate;

    move-result-object p0

    new-instance p1, Lcom/sightcall/pratik/Result$Success;

    invoke-direct {p1, p0}, Lcom/sightcall/pratik/Result$Success;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    new-instance p0, Lcom/sightcall/pratik/Result$Error;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public getReference(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/session/Reference;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p2

    invoke-direct {v0, p2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object p2, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;->referenceApi:Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;

    iget-object v1, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;->context:Landroid/content/Context;

    sget v2, Lcom/sightcall/core/R$string;->universal_mobile_solution_value:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, v2}, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt;->create(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;->getReference(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl$getReference$2$1$1;

    invoke-direct {p2, v0, p0}, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl$getReference$2$1$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    iput-object p1, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;->ongoingGetReferenceCall:Lretrofit2/Call;

    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->a()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public interruptGetReference()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;->ongoingGetReferenceCall:Lretrofit2/Call;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lretrofit2/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public switchToAttendee(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/httpclient/AuthorizationToken;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/session/ReferenceUpdate;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p2, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;->Companion:Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Companion;

    sget-object v0, Lcom/sightcall/session/datasource/reference/v3/UserRole;->Attendee:Lcom/sightcall/session/datasource/reference/v3/UserRole;

    invoke-virtual {p2, v0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Companion;->create(Lcom/sightcall/session/datasource/reference/v3/UserRole;)Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;

    move-result-object p2

    iget-object v0, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;->referenceApi:Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;

    new-instance v1, Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;

    invoke-direct {v1, p1}, Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;-><init>(Lcom/sightcall/httpclient/AuthorizationToken;)V

    invoke-interface {v0, v1, p2}, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;->switchRole(Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;->onSwitchResponse(Lretrofit2/Response;)Lcom/sightcall/pratik/Result;

    move-result-object p0

    return-object p0
.end method

.method public switchToGuest(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/httpclient/AuthorizationToken;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/session/ReferenceUpdate;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p2, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;->Companion:Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Companion;

    sget-object v0, Lcom/sightcall/session/datasource/reference/v3/UserRole;->Guest:Lcom/sightcall/session/datasource/reference/v3/UserRole;

    invoke-virtual {p2, v0}, Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity$Companion;->create(Lcom/sightcall/session/datasource/reference/v3/UserRole;)Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;

    move-result-object p2

    iget-object v0, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;->referenceApi:Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;

    new-instance v1, Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;

    invoke-direct {v1, p1}, Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;-><init>(Lcom/sightcall/httpclient/AuthorizationToken;)V

    invoke-interface {v0, v1, p2}, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;->switchRole(Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;->onSwitchResponse(Lretrofit2/Response;)Lcom/sightcall/pratik/Result;

    move-result-object p0

    return-object p0
.end method
