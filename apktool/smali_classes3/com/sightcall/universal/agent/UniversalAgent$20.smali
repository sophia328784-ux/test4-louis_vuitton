.class Lcom/sightcall/universal/agent/UniversalAgent$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->refresh(Lcom/sightcall/universal/agent/RefreshCallback;)V
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

.field final synthetic val$cb:Lcom/sightcall/universal/agent/RefreshCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/RefreshCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->val$agent:Lcom/sightcall/universal/agent/Agent;

    iput-object p3, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->val$cb:Lcom/sightcall/universal/agent/RefreshCallback;

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

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->val$cb:Lcom/sightcall/universal/agent/RefreshCallback;

    new-instance v0, Lcom/sightcall/universal/agent/RefreshCallback$Error;

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/RefreshCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/RefreshCallback;->onRefreshError(Lcom/sightcall/universal/agent/RefreshCallback$Error;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
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

    move-result-object v1

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iget-object v2, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->val$agent:Lcom/sightcall/universal/agent/Agent;

    invoke-static {v0, v2, p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->k(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lretrofit2/Call;Lretrofit2/Response;)Z

    move-result p1

    if-nez p1, :cond_2

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

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->val$cb:Lcom/sightcall/universal/agent/RefreshCallback;

    new-instance p1, Lcom/sightcall/universal/agent/RefreshCallback$Error;

    invoke-direct {p1, v1}, Lcom/sightcall/universal/agent/RefreshCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/RefreshCallback;->onRefreshError(Lcom/sightcall/universal/agent/RefreshCallback$Error;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->val$agent:Lcom/sightcall/universal/agent/Agent;

    invoke-static {p2, p1, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->j(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/IdentityExtractor;Lcom/sightcall/universal/agent/Agent;)V

    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->val$cb:Lcom/sightcall/universal/agent/RefreshCallback;

    new-instance v0, Lcom/sightcall/universal/agent/RefreshCallback$Success;

    iget-object v2, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->val$agent:Lcom/sightcall/universal/agent/Agent;

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-virtual {p2}, Lcom/sightcall/universal/agent/UniversalAgent;->usecases()Ljava/util/List;

    move-result-object v3

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-virtual {p2}, Lcom/sightcall/universal/agent/UniversalAgent;->consent()Lcom/sightcall/universal/agent/Consent;

    move-result-object v4

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-virtual {p2}, Lcom/sightcall/universal/agent/UniversalAgent;->code()Lcom/sightcall/universal/agent/Code;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/universal/agent/RefreshCallback$Success;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/Agent;Ljava/util/List;Lcom/sightcall/universal/agent/Consent;Lcom/sightcall/universal/agent/Code;)V

    invoke-interface {p1, v0}, Lcom/sightcall/universal/agent/RefreshCallback;->onRefreshSuccess(Lcom/sightcall/universal/agent/RefreshCallback$Success;)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->updateAgentInfos()V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$20;->val$cb:Lcom/sightcall/universal/agent/RefreshCallback;

    new-instance p1, Lcom/sightcall/universal/agent/RefreshCallback$Error;

    invoke-direct {p1, v1}, Lcom/sightcall/universal/agent/RefreshCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/RefreshCallback;->onRefreshError(Lcom/sightcall/universal/agent/RefreshCallback$Error;)V

    return-void
.end method
