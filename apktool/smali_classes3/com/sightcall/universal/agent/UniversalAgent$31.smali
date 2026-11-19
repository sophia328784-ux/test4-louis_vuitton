.class Lcom/sightcall/universal/agent/UniversalAgent$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->deleteCode(Lcom/sightcall/universal/agent/Code;Lcom/sightcall/universal/agent/DeleteCodeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;

.field final synthetic val$agent:Lcom/sightcall/universal/agent/Agent;

.field final synthetic val$cb:Lcom/sightcall/universal/agent/DeleteCodeCallback;

.field final synthetic val$code:Lcom/sightcall/universal/agent/Code;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/Code;Lcom/sightcall/universal/agent/DeleteCodeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->val$agent:Lcom/sightcall/universal/agent/Agent;

    iput-object p3, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->val$code:Lcom/sightcall/universal/agent/Code;

    iput-object p4, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->val$cb:Lcom/sightcall/universal/agent/DeleteCodeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private next(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->val$code:Lcom/sightcall/universal/agent/Code;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sightcall/universal/agent/Code;->deleted:Z

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->code()Lcom/sightcall/universal/agent/Code;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->val$code:Lcom/sightcall/universal/agent/Code;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->f(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/util/Lazy;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->val$code:Lcom/sightcall/universal/agent/Code;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->code()Lcom/sightcall/universal/agent/Code;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->val$code:Lcom/sightcall/universal/agent/Code;

    invoke-virtual {v1, v0}, Lcom/sightcall/universal/agent/Code;->correspondsTo(Lcom/sightcall/universal/agent/Code;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->f(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/util/Lazy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->val$code:Lcom/sightcall/universal/agent/Code;

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->val$cb:Lcom/sightcall/universal/agent/DeleteCodeCallback;

    new-instance v1, Lcom/sightcall/universal/agent/DeleteCodeCallback$Success;

    invoke-static {p1, p2, p3}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->val$code:Lcom/sightcall/universal/agent/Code;

    invoke-direct {v1, p1, p0}, Lcom/sightcall/universal/agent/DeleteCodeCallback$Success;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/Code;)V

    invoke-interface {v0, v1}, Lcom/sightcall/universal/agent/DeleteCodeCallback;->onDeleteCodeSuccess(Lcom/sightcall/universal/agent/DeleteCodeCallback$Success;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sightcall/universal/agent/UniversalAgent;->n()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sightcall/universal/agent/UniversalAgent$31;->next(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->p(Lretrofit2/Call;Lretrofit2/Response;)V

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$31;->val$agent:Lcom/sightcall/universal/agent/Agent;

    invoke-static {v0, v1, p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->k(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lretrofit2/Call;Lretrofit2/Response;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sightcall/universal/agent/UniversalAgent$31;->next(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-void
.end method
