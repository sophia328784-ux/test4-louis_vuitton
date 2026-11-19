.class Lcom/sightcall/universal/guest/UniversalGuest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/guest/UniversalGuest;->requestAgent(Lcom/sightcall/universal/model/Session;Ljava/lang/String;Lcom/sightcall/universal/guest/UniversalGuest$RequestAgentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/sightcall/universal/guest/AgentHttpAcd$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/guest/UniversalGuest;

.field final synthetic val$callback:Lcom/sightcall/universal/guest/UniversalGuest$RequestAgentCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/guest/UniversalGuest;Lcom/sightcall/universal/guest/UniversalGuest$RequestAgentCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/guest/UniversalGuest$1;->this$0:Lcom/sightcall/universal/guest/UniversalGuest;

    iput-object p2, p0, Lcom/sightcall/universal/guest/UniversalGuest$1;->val$callback:Lcom/sightcall/universal/guest/UniversalGuest$RequestAgentCallback;

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
            "Lcom/sightcall/universal/guest/AgentHttpAcd$Result;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/guest/UniversalGuest$1;->val$callback:Lcom/sightcall/universal/guest/UniversalGuest$RequestAgentCallback;

    invoke-interface {p0}, Lcom/sightcall/universal/guest/UniversalGuest$RequestAgentCallback;->onRequestAgentError()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/guest/AgentHttpAcd$Result;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/sightcall/universal/guest/AgentHttpAcd$Result;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v0, p1, Lokhttp3/Response;->r:Z

    if-nez v0, :cond_0

    iget p1, p1, Lokhttp3/Response;->e:I

    const/16 v0, 0x19a

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p1, Lcom/sightcall/universal/guest/AgentHttpAcd$Result;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/guest/UniversalGuest$1;->val$callback:Lcom/sightcall/universal/guest/UniversalGuest$RequestAgentCallback;

    invoke-virtual {p1}, Lcom/sightcall/universal/guest/AgentHttpAcd$Result;->data()Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sightcall/universal/guest/UniversalGuest$RequestAgentCallback;->onRequestAgentSuccess(Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/guest/UniversalGuest$1;->val$callback:Lcom/sightcall/universal/guest/UniversalGuest$RequestAgentCallback;

    invoke-interface {p0}, Lcom/sightcall/universal/guest/UniversalGuest$RequestAgentCallback;->onRequestAgentError()V

    return-void
.end method
