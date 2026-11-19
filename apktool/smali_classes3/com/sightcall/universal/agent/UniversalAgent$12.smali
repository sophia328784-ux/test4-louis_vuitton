.class Lcom/sightcall/universal/agent/UniversalAgent$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->refreshToken(Lcom/sightcall/universal/agent/registration/AccessTokensRequest;Lcom/sightcall/universal/agent/RefreshTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
        "Lcom/sightcall/universal/agent/registration/AccessTokensResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;

.field final synthetic val$cb:Lcom/sightcall/universal/agent/RefreshTokenCallback;

.field final synthetic val$mainAgent:Lcom/sightcall/universal/agent/Agent;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/RefreshTokenCallback;Lcom/sightcall/universal/agent/Agent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$12;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$12;->val$cb:Lcom/sightcall/universal/agent/RefreshTokenCallback;

    iput-object p3, p0, Lcom/sightcall/universal/agent/UniversalAgent$12;->val$mainAgent:Lcom/sightcall/universal/agent/Agent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/registration/AccessTokensResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->o(Lretrofit2/Call;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$12;->val$cb:Lcom/sightcall/universal/agent/RefreshTokenCallback;

    new-instance p1, Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;

    invoke-direct {p1}, Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;-><init>()V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/RefreshTokenCallback;->onRefreshTokenError(Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/registration/AccessTokensResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/registration/AccessTokensResponse;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->p(Lretrofit2/Call;Lretrofit2/Response;)V

    iget-object v0, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v0, v0, Lokhttp3/Response;->r:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$12;->val$cb:Lcom/sightcall/universal/agent/RefreshTokenCallback;

    new-instance p1, Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;

    invoke-direct {p1}, Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;-><init>()V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/RefreshTokenCallback;->onRefreshTokenError(Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;)V

    return-void

    :cond_0
    iget-object v0, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {v0}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/agent/registration/AccessTokensResponse;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$12;->val$cb:Lcom/sightcall/universal/agent/RefreshTokenCallback;

    new-instance p1, Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;

    invoke-direct {p1}, Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;-><init>()V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/RefreshTokenCallback;->onRefreshTokenError(Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$12;->val$mainAgent:Lcom/sightcall/universal/agent/Agent;

    invoke-virtual {v1, v0}, Lcom/sightcall/universal/agent/Agent;->updateTokens(Lcom/sightcall/universal/agent/registration/RegistrationResponse;)Lcom/sightcall/universal/agent/Agent;

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$12;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {v1}, Lcom/sightcall/universal/agent/UniversalAgent;->e(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/util/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/agent/UniversalAgent$12;->val$mainAgent:Lcom/sightcall/universal/agent/Agent;

    invoke-virtual {v1, v2}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/agent/UniversalAgent$12;->val$mainAgent:Lcom/sightcall/universal/agent/Agent;

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$12;->val$cb:Lcom/sightcall/universal/agent/RefreshTokenCallback;

    new-instance v1, Lcom/sightcall/universal/agent/RefreshTokenCallback$Success;

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/sightcall/universal/agent/RefreshTokenCallback$Success;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/registration/AccessTokensResponse;)V

    invoke-interface {p0, v1}, Lcom/sightcall/universal/agent/RefreshTokenCallback;->onRefreshTokenSuccess(Lcom/sightcall/universal/agent/RefreshTokenCallback$Success;)V

    return-void
.end method
