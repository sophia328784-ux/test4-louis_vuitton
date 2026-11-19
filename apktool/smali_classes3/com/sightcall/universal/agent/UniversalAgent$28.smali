.class Lcom/sightcall/universal/agent/UniversalAgent$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->createCode(Lcom/sightcall/universal/agent/CreateCode;Lcom/sightcall/universal/agent/CreateCodeCallback;)V
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
        "Lcom/sightcall/universal/agent/Pincode;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;

.field final synthetic val$agent:Lcom/sightcall/universal/agent/Agent;

.field final synthetic val$cb:Lcom/sightcall/universal/agent/CreateCodeCallback;

.field final synthetic val$create:Lcom/sightcall/universal/agent/CreateCode;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/CreateCodeCallback;Lcom/sightcall/universal/agent/CreateCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->val$agent:Lcom/sightcall/universal/agent/Agent;

    iput-object p3, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->val$cb:Lcom/sightcall/universal/agent/CreateCodeCallback;

    iput-object p4, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->val$create:Lcom/sightcall/universal/agent/CreateCode;

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
            "Lcom/sightcall/universal/agent/Pincode;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->o(Lretrofit2/Call;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->val$cb:Lcom/sightcall/universal/agent/CreateCodeCallback;

    new-instance v1, Lcom/sightcall/universal/agent/CreateCodeCallback$Error;

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->val$create:Lcom/sightcall/universal/agent/CreateCode;

    invoke-direct {v1, p1, p0}, Lcom/sightcall/universal/agent/CreateCodeCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/CreateCode;)V

    invoke-interface {v0, v1}, Lcom/sightcall/universal/agent/CreateCodeCallback;->onCreateCodeError(Lcom/sightcall/universal/agent/CreateCodeCallback$Error;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Pincode;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Pincode;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->p(Lretrofit2/Call;Lretrofit2/Response;)V

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iget-object v2, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->val$agent:Lcom/sightcall/universal/agent/Agent;

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

    invoke-static {p1}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/agent/Pincode;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->val$cb:Lcom/sightcall/universal/agent/CreateCodeCallback;

    new-instance p2, Lcom/sightcall/universal/agent/CreateCodeCallback$Error;

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->val$create:Lcom/sightcall/universal/agent/CreateCode;

    invoke-direct {p2, v0, p0}, Lcom/sightcall/universal/agent/CreateCodeCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/CreateCode;)V

    invoke-interface {p1, p2}, Lcom/sightcall/universal/agent/CreateCodeCallback;->onCreateCodeError(Lcom/sightcall/universal/agent/CreateCodeCallback$Error;)V

    return-void

    :cond_1
    new-instance p2, Lcom/sightcall/universal/agent/Pincode$Relationships;

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->val$create:Lcom/sightcall/universal/agent/CreateCode;

    iget-object v1, v1, Lcom/sightcall/universal/agent/CreateCode;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-direct {p2, v1}, Lcom/sightcall/universal/agent/Pincode$Relationships;-><init>(Lcom/sightcall/universal/agent/Usecase;)V

    iput-object p2, p1, Lcom/sightcall/universal/agent/Pincode;->relationships:Lcom/sightcall/universal/agent/Pincode$Relationships;

    new-instance p2, Lcom/sightcall/universal/agent/Code;

    invoke-direct {p2, p1}, Lcom/sightcall/universal/agent/Code;-><init>(Lcom/sightcall/universal/agent/Pincode;)V

    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p1}, Lcom/sightcall/universal/agent/UniversalAgent;->f(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/util/Lazy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->val$cb:Lcom/sightcall/universal/agent/CreateCodeCallback;

    new-instance v1, Lcom/sightcall/universal/agent/CreateCodeCallback$Success;

    invoke-direct {v1, v0, p2}, Lcom/sightcall/universal/agent/CreateCodeCallback$Success;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/Code;)V

    invoke-interface {p1, v1}, Lcom/sightcall/universal/agent/CreateCodeCallback;->onCreateCodeSuccess(Lcom/sightcall/universal/agent/CreateCodeCallback$Success;)V

    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/UniversalAgent;->shouldSyncFcmToken()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->syncFcmToken()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->val$cb:Lcom/sightcall/universal/agent/CreateCodeCallback;

    new-instance p2, Lcom/sightcall/universal/agent/CreateCodeCallback$Error;

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$28;->val$create:Lcom/sightcall/universal/agent/CreateCode;

    invoke-direct {p2, v0, p0}, Lcom/sightcall/universal/agent/CreateCodeCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/CreateCode;)V

    invoke-interface {p1, p2}, Lcom/sightcall/universal/agent/CreateCodeCallback;->onCreateCodeError(Lcom/sightcall/universal/agent/CreateCodeCallback$Error;)V

    return-void
.end method
