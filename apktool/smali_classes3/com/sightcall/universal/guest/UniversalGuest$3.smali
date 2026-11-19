.class Lcom/sightcall/universal/guest/UniversalGuest$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/guest/UniversalGuest;->notifyAgent(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/guest/UniversalGuest$NotifyAgentCallback;)V
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
        "Lcom/sightcall/universal/guest/Calls;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/guest/UniversalGuest;

.field final synthetic val$callback:Lcom/sightcall/universal/guest/UniversalGuest$NotifyAgentCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/guest/UniversalGuest;Lcom/sightcall/universal/guest/UniversalGuest$NotifyAgentCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/guest/UniversalGuest$3;->this$0:Lcom/sightcall/universal/guest/UniversalGuest;

    iput-object p2, p0, Lcom/sightcall/universal/guest/UniversalGuest$3;->val$callback:Lcom/sightcall/universal/guest/UniversalGuest$NotifyAgentCallback;

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
            "Lcom/sightcall/universal/guest/Calls;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/guest/UniversalGuest$3;->val$callback:Lcom/sightcall/universal/guest/UniversalGuest$NotifyAgentCallback;

    invoke-interface {p0}, Lcom/sightcall/universal/guest/UniversalGuest$NotifyAgentCallback;->onNotifyAgentError()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/guest/Calls;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/guest/Calls;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p1, p1, Lokhttp3/Response;->r:Z

    if-eqz p1, :cond_1

    iget-object p1, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p1, Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {p1}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/guest/Calls;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sightcall/universal/guest/Calls;->nextAction()Lcom/sightcall/universal/guest/Calls$Action;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/guest/UniversalGuest$3;->val$callback:Lcom/sightcall/universal/guest/UniversalGuest$NotifyAgentCallback;

    invoke-interface {p0, p1}, Lcom/sightcall/universal/guest/UniversalGuest$NotifyAgentCallback;->onNotifyAgentSuccess(Lcom/sightcall/universal/guest/Calls$Action;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/guest/UniversalGuest$3;->val$callback:Lcom/sightcall/universal/guest/UniversalGuest$NotifyAgentCallback;

    invoke-interface {p0}, Lcom/sightcall/universal/guest/UniversalGuest$NotifyAgentCallback;->onNotifyAgentError()V

    return-void
.end method
