.class Lcom/sightcall/universal/agent/UniversalAgent$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->updateIdentity(Lcom/sightcall/universal/agent/Identity;Lcom/sightcall/universal/agent/UpdateIdentityCallback;)V
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

.field final synthetic val$cb:Lcom/sightcall/universal/agent/UpdateIdentityCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/UpdateIdentityCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$24;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$24;->val$agent:Lcom/sightcall/universal/agent/Agent;

    iput-object p3, p0, Lcom/sightcall/universal/agent/UniversalAgent$24;->val$cb:Lcom/sightcall/universal/agent/UpdateIdentityCallback;

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

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$24;->val$cb:Lcom/sightcall/universal/agent/UpdateIdentityCallback;

    new-instance v0, Lcom/sightcall/universal/agent/UpdateIdentityCallback$Error;

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/UpdateIdentityCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/UpdateIdentityCallback;->onUpdateIdentityError(Lcom/sightcall/universal/agent/UpdateIdentityCallback$Error;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$24;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$24;->val$agent:Lcom/sightcall/universal/agent/Agent;

    invoke-static {v0, v1, p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->k(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lretrofit2/Call;Lretrofit2/Response;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v0, v0, Lokhttp3/Response;->r:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$24;->val$cb:Lcom/sightcall/universal/agent/UpdateIdentityCallback;

    new-instance v0, Lcom/sightcall/universal/agent/UpdateIdentityCallback$Success;

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    iget-object p2, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p2, Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-direct {v0, p1, p2}, Lcom/sightcall/universal/agent/UpdateIdentityCallback$Success;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/api/JsonApi$Wrapper;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/UpdateIdentityCallback;->onUpdateIdentitySuccess(Lcom/sightcall/universal/agent/UpdateIdentityCallback$Success;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$24;->val$cb:Lcom/sightcall/universal/agent/UpdateIdentityCallback;

    new-instance v0, Lcom/sightcall/universal/agent/UpdateIdentityCallback$Error;

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/UpdateIdentityCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/UpdateIdentityCallback;->onUpdateIdentityError(Lcom/sightcall/universal/agent/UpdateIdentityCallback$Error;)V

    return-void
.end method
