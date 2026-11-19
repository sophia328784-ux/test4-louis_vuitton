.class Lcom/sightcall/universal/guest/UniversalGuest$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/guest/UniversalGuest;->cancelAgent(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/guest/HttpAcdRequest;Lcom/sightcall/universal/guest/UniversalGuest$CancelAgentCallback;)V
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
.field final synthetic this$0:Lcom/sightcall/universal/guest/UniversalGuest;

.field final synthetic val$callback:Lcom/sightcall/universal/guest/UniversalGuest$CancelAgentCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/guest/UniversalGuest;Lcom/sightcall/universal/guest/UniversalGuest$CancelAgentCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/guest/UniversalGuest$2;->this$0:Lcom/sightcall/universal/guest/UniversalGuest;

    iput-object p2, p0, Lcom/sightcall/universal/guest/UniversalGuest$2;->val$callback:Lcom/sightcall/universal/guest/UniversalGuest$CancelAgentCallback;

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
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/guest/UniversalGuest$2;->val$callback:Lcom/sightcall/universal/guest/UniversalGuest$CancelAgentCallback;

    invoke-interface {p0}, Lcom/sightcall/universal/guest/UniversalGuest$CancelAgentCallback;->onCancelAgentError()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
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

    iget-object p1, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p1, p1, Lokhttp3/Response;->r:Z

    iget-object p0, p0, Lcom/sightcall/universal/guest/UniversalGuest$2;->val$callback:Lcom/sightcall/universal/guest/UniversalGuest$CancelAgentCallback;

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/sightcall/universal/guest/UniversalGuest$CancelAgentCallback;->onCancelAgentSuccess()V

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sightcall/universal/guest/UniversalGuest$CancelAgentCallback;->onCancelAgentError()V

    return-void
.end method
