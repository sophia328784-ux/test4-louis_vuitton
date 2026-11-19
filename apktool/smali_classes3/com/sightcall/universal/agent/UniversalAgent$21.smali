.class Lcom/sightcall/universal/agent/UniversalAgent$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->updateAgentInfos()V
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


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$21;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

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

    invoke-static {}, Lcom/sightcall/universal/agent/UniversalAgent;->n()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string p2, "Agent info update failed"

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$21;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/UniversalAgent;->shouldSyncFcmToken()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$21;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->syncFcmToken()V

    :cond_0
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

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/agent/UniversalAgent;->n()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string p2, "Agent info update successfully"

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$21;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/UniversalAgent;->shouldSyncFcmToken()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$21;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->syncFcmToken()V

    :cond_1
    :goto_0
    return-void
.end method
