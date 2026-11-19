.class Lcom/sightcall/universal/agent/UniversalAgent$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->register(Lcom/sightcall/universal/agent/registration/RegistrationRequest;Lcom/sightcall/universal/agent/RegisterCallback;Z)V
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
        "Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;

.field final synthetic val$agentReference:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$api:Lcom/sightcall/universal/agent/AgentApi;

.field final synthetic val$cb:Lcom/sightcall/universal/agent/RegisterCallback;

.field final synthetic val$env:Lcom/sightcall/universal/api/Environment;

.field final synthetic val$refreshCallback:Lretrofit2/Callback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/RegisterCallback;Lcom/sightcall/universal/api/Environment;Ljava/util/concurrent/atomic/AtomicReference;Lcom/sightcall/universal/agent/AgentApi;Lretrofit2/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$16;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$16;->val$cb:Lcom/sightcall/universal/agent/RegisterCallback;

    iput-object p3, p0, Lcom/sightcall/universal/agent/UniversalAgent$16;->val$env:Lcom/sightcall/universal/api/Environment;

    iput-object p4, p0, Lcom/sightcall/universal/agent/UniversalAgent$16;->val$agentReference:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lcom/sightcall/universal/agent/UniversalAgent$16;->val$api:Lcom/sightcall/universal/agent/AgentApi;

    iput-object p6, p0, Lcom/sightcall/universal/agent/UniversalAgent$16;->val$refreshCallback:Lretrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->o(Lretrofit2/Call;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$16;->val$cb:Lcom/sightcall/universal/agent/RegisterCallback;

    new-instance v0, Lcom/sightcall/universal/agent/RegisterCallback$Error;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/RegisterCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/RegisterCallback;->onRegisterError(Lcom/sightcall/universal/agent/RegisterCallback$Error;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->p(Lretrofit2/Call;Lretrofit2/Response;)V

    iget-object v0, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v0, v0, Lokhttp3/Response;->r:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$16;->val$cb:Lcom/sightcall/universal/agent/RegisterCallback;

    new-instance v0, Lcom/sightcall/universal/agent/RegisterCallback$Error;

    invoke-static {p1, p2, v1}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/RegisterCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/RegisterCallback;->onRegisterError(Lcom/sightcall/universal/agent/RegisterCallback$Error;)V

    return-void

    :cond_0
    iget-object v0, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {v0}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$16;->val$cb:Lcom/sightcall/universal/agent/RegisterCallback;

    new-instance v0, Lcom/sightcall/universal/agent/RegisterCallback$Error;

    invoke-static {p1, p2, v1}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/RegisterCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/RegisterCallback;->onRegisterError(Lcom/sightcall/universal/agent/RegisterCallback$Error;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$16;->val$env:Lcom/sightcall/universal/api/Environment;

    invoke-static {v0, p1}, Lcom/sightcall/universal/agent/Agent;->create(Lcom/sightcall/universal/agent/registration/RegistrationResponse;Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/agent/Agent;

    move-result-object p1

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$16;->val$agentReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Agent;->token()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/universal/api/Headers$Authorization$Bearer;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$Bearer;

    move-result-object p1

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$16;->val$api:Lcom/sightcall/universal/agent/AgentApi;

    invoke-interface {p2, p1}, Lcom/sightcall/universal/agent/AgentApi;->refresh(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;)Lretrofit2/Call;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$16;->val$refreshCallback:Lretrofit2/Callback;

    invoke-interface {p1, p0}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method
