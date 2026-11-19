.class Lcom/sightcall/universal/agent/UniversalAgent$14;
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
        "Lcom/sightcall/universal/agent/Identity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;

.field final synthetic val$agentReference:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$cb:Lcom/sightcall/universal/agent/RegisterCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/RegisterCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$14;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$14;->val$cb:Lcom/sightcall/universal/agent/RegisterCallback;

    iput-object p3, p0, Lcom/sightcall/universal/agent/UniversalAgent$14;->val$agentReference:Ljava/util/concurrent/atomic/AtomicReference;

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
            "Lcom/sightcall/universal/agent/Identity;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->o(Lretrofit2/Call;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$14;->val$cb:Lcom/sightcall/universal/agent/RegisterCallback;

    new-instance v0, Lcom/sightcall/universal/agent/RegisterCallback$Error;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/RegisterCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/RegisterCallback;->onRegisterError(Lcom/sightcall/universal/agent/RegisterCallback$Error;)V

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

    iget-object v0, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v0, v0, Lokhttp3/Response;->r:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$14;->val$cb:Lcom/sightcall/universal/agent/RegisterCallback;

    new-instance v0, Lcom/sightcall/universal/agent/RegisterCallback$Error;

    invoke-static {p1, p2, v1}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/RegisterCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/RegisterCallback;->onRegisterError(Lcom/sightcall/universal/agent/RegisterCallback$Error;)V

    return-void

    :cond_0
    iget-object v0, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {v0}, Lcom/sightcall/universal/agent/IdentityExtractor;->extract(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lcom/sightcall/universal/agent/IdentityExtractor;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$14;->val$cb:Lcom/sightcall/universal/agent/RegisterCallback;

    new-instance v0, Lcom/sightcall/universal/agent/RegisterCallback$Error;

    invoke-static {p1, p2, v1}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/RegisterCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/RegisterCallback;->onRegisterError(Lcom/sightcall/universal/agent/RegisterCallback$Error;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$14;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-virtual {v1}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sightcall/universal/agent/UniversalAgent;->m(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;)V

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$14;->val$agentReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/universal/agent/Agent;

    iget-object v2, p0, Lcom/sightcall/universal/agent/UniversalAgent$14;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {v2, v0, v1}, Lcom/sightcall/universal/agent/UniversalAgent;->j(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/IdentityExtractor;Lcom/sightcall/universal/agent/Agent;)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$14;->val$cb:Lcom/sightcall/universal/agent/RegisterCallback;

    new-instance v0, Lcom/sightcall/universal/agent/RegisterCallback$Success;

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/sightcall/universal/agent/RegisterCallback$Success;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/Agent;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/RegisterCallback;->onRegisterSuccess(Lcom/sightcall/universal/agent/RegisterCallback$Success;)V

    return-void
.end method
