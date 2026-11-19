.class public final Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/agent/RefreshTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1$1$1",
        "Lcom/sightcall/universal/agent/RefreshTokenCallback;",
        "onRefreshTokenSuccess",
        "",
        "success",
        "Lcom/sightcall/universal/agent/RefreshTokenCallback$Success;",
        "onRefreshTokenError",
        "error",
        "Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;",
        "sdk_installedRelease"
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
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lokhttp3/Request;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $response:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lokhttp3/Request;",
            ">;",
            "Lokhttp3/Response;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1$1$1;->$continuation:Lkotlin/coroutines/Continuation;

    iput-object p2, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1$1$1;->$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshTokenError(Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object p0

    new-instance p1, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$UnregisterCallback;

    invoke-direct {p1}, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$UnregisterCallback;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/UniversalAgent;->unregister(Lcom/sightcall/universal/agent/UnregisterCallback;)V

    return-void
.end method

.method public onRefreshTokenSuccess(Lcom/sightcall/universal/agent/RefreshTokenCallback$Success;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1$1$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/sightcall/universal/api/RefreshTokenAuthenticator$authenticate$1$1$1$1;->$response:Lokhttp3/Response;

    iget-object p0, p0, Lokhttp3/Response;->b:Lokhttp3/Request;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1, p0}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    iget-object p0, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    const-string v2, "X-Authorization-Token"

    invoke-virtual {p0, v2}, Lokhttp3/Headers$Builder;->f(Ljava/lang/String;)V

    new-instance p0, Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Bearer;

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/RefreshTokenCallback$Success;->getRegistration()Lcom/sightcall/universal/agent/registration/AccessTokensResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/registration/AccessTokensResponse;->accessToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Bearer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Bearer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lokhttp3/Request;

    invoke-direct {p0, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    invoke-interface {v0, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
