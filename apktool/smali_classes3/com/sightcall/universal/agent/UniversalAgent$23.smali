.class Lcom/sightcall/universal/agent/UniversalAgent$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->syncFcmToken()V
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

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$23;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$23;->val$agent:Lcom/sightcall/universal/agent/Agent;

    iput-object p3, p0, Lcom/sightcall/universal/agent/UniversalAgent$23;->val$token:Ljava/lang/String;

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

    move-result-object p0

    const-string p1, "FCM Token update failure"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
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

    invoke-static {}, Lcom/sightcall/universal/agent/UniversalAgent;->n()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string v0, "FCM Token update success"

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    iget-object p1, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p1, p1, Lokhttp3/Response;->r:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$23;->val$agent:Lcom/sightcall/universal/agent/Agent;

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$23;->val$token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/agent/Agent;->fcmToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$23;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p1}, Lcom/sightcall/universal/agent/UniversalAgent;->e(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/util/Lazy;

    move-result-object p1

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$23;->val$agent:Lcom/sightcall/universal/agent/Agent;

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$23;->val$agent:Lcom/sightcall/universal/agent/Agent;

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
