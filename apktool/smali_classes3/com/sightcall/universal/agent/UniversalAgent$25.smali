.class Lcom/sightcall/universal/agent/UniversalAgent$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->fetchConsent(Lcom/sightcall/universal/agent/FetchConsentCallback;)V
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
        "Lcom/sightcall/universal/agent/Identity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;

.field final synthetic val$agent:Lcom/sightcall/universal/agent/Agent;

.field final synthetic val$cb:Lcom/sightcall/universal/agent/FetchConsentCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/FetchConsentCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$25;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$25;->val$agent:Lcom/sightcall/universal/agent/Agent;

    iput-object p3, p0, Lcom/sightcall/universal/agent/UniversalAgent$25;->val$cb:Lcom/sightcall/universal/agent/FetchConsentCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Identity;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->o(Lretrofit2/Call;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$25;->val$cb:Lcom/sightcall/universal/agent/FetchConsentCallback;

    new-instance v0, Lcom/sightcall/universal/agent/FetchConsentCallback$Error;

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/FetchConsentCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/FetchConsentCallback;->onFetchConsentError(Lcom/sightcall/universal/agent/FetchConsentCallback$Error;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Identity;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Identity;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->p(Lretrofit2/Call;Lretrofit2/Response;)V

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$25;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iget-object v2, p0, Lcom/sightcall/universal/agent/UniversalAgent$25;->val$agent:Lcom/sightcall/universal/agent/Agent;

    invoke-static {v1, v2, p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->k(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lretrofit2/Call;Lretrofit2/Response;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p1, p1, Lokhttp3/Response;->r:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p1, Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {p1}, Lcom/sightcall/universal/agent/IdentityExtractor;->extract(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lcom/sightcall/universal/agent/IdentityExtractor;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$25;->val$cb:Lcom/sightcall/universal/agent/FetchConsentCallback;

    new-instance p1, Lcom/sightcall/universal/agent/FetchConsentCallback$Error;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/agent/FetchConsentCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/FetchConsentCallback;->onFetchConsentError(Lcom/sightcall/universal/agent/FetchConsentCallback$Error;)V

    return-void

    :cond_1
    iget-object p1, p1, Lcom/sightcall/universal/agent/IdentityExtractor;->consent:Lcom/sightcall/universal/agent/Consent;

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$25;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p2}, Lcom/sightcall/universal/agent/UniversalAgent;->g(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/util/Lazy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p2

    invoke-virtual {p2}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$25;->val$cb:Lcom/sightcall/universal/agent/FetchConsentCallback;

    new-instance p2, Lcom/sightcall/universal/agent/FetchConsentCallback$Success;

    invoke-direct {p2, v0, p1}, Lcom/sightcall/universal/agent/FetchConsentCallback$Success;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/Consent;)V

    invoke-interface {p0, p2}, Lcom/sightcall/universal/agent/FetchConsentCallback;->onFetchConsentSuccess(Lcom/sightcall/universal/agent/FetchConsentCallback$Success;)V

    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$25;->val$cb:Lcom/sightcall/universal/agent/FetchConsentCallback;

    new-instance p1, Lcom/sightcall/universal/agent/FetchConsentCallback$Error;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/agent/FetchConsentCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/FetchConsentCallback;->onFetchConsentError(Lcom/sightcall/universal/agent/FetchConsentCallback$Error;)V

    return-void
.end method
