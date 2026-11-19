.class Lcom/sightcall/universal/agent/UniversalAgent$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->requestNotificationTest(Lcom/sightcall/universal/agent/RequestNotificationTestCallback;)V
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
        "Lcom/sightcall/universal/agent/AgentPushNotificationTestsResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;

.field final synthetic val$agent:Lcom/sightcall/universal/agent/Agent;

.field final synthetic val$cb:Lcom/sightcall/universal/agent/RequestNotificationTestCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/RequestNotificationTestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$18;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$18;->val$agent:Lcom/sightcall/universal/agent/Agent;

    iput-object p3, p0, Lcom/sightcall/universal/agent/UniversalAgent$18;->val$cb:Lcom/sightcall/universal/agent/RequestNotificationTestCallback;

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
            "Lcom/sightcall/universal/agent/AgentPushNotificationTestsResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->o(Lretrofit2/Call;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$18;->val$cb:Lcom/sightcall/universal/agent/RequestNotificationTestCallback;

    new-instance v0, Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Error;

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/RequestNotificationTestCallback;->onRequestNotificationTestError(Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Error;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/AgentPushNotificationTestsResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/AgentPushNotificationTestsResponse;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->p(Lretrofit2/Call;Lretrofit2/Response;)V

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$18;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iget-object v2, p0, Lcom/sightcall/universal/agent/UniversalAgent$18;->val$agent:Lcom/sightcall/universal/agent/Agent;

    invoke-static {v1, v2, p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->k(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lretrofit2/Call;Lretrofit2/Response;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$18;->val$cb:Lcom/sightcall/universal/agent/RequestNotificationTestCallback;

    new-instance p1, Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Error;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/RequestNotificationTestCallback;->onRequestNotificationTestError(Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Error;)V

    return-void

    :cond_0
    iget-object p1, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p1, p1, Lokhttp3/Response;->r:Z

    if-eqz p1, :cond_2

    iget-object p1, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p1, Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-virtual {p1}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/agent/AgentPushNotificationTestsResponse;

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/AgentPushNotificationTestsResponse;->getAttributes()Lcom/sightcall/universal/agent/AgentPushNotificationTestsResponse$Attributes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/AgentPushNotificationTestsResponse$Attributes;->getSuccess()Z

    move-result p1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$18;->val$cb:Lcom/sightcall/universal/agent/RequestNotificationTestCallback;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Success;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Success;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/RequestNotificationTestCallback;->onRequestNotificationTestSuccess(Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Success;)V

    return-void

    :cond_1
    new-instance p1, Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Error;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/RequestNotificationTestCallback;->onRequestNotificationTestError(Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Error;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$18;->val$cb:Lcom/sightcall/universal/agent/RequestNotificationTestCallback;

    new-instance p1, Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Error;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/RequestNotificationTestCallback;->onRequestNotificationTestError(Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Error;)V

    return-void
.end method
