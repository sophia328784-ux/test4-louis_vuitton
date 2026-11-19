.class Lcom/sightcall/universal/agent/UniversalAgent$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/agent/RegisterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->register(Lcom/sightcall/universal/agent/registration/RegistrationRequest;Lcom/sightcall/universal/agent/RegisterCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;

.field final synthetic val$_cb:Lcom/sightcall/universal/agent/RegisterCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/RegisterCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$13;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$13;->val$_cb:Lcom/sightcall/universal/agent/RegisterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegisterError(Lcom/sightcall/universal/agent/RegisterCallback$Error;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$13;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->d(Lcom/sightcall/universal/agent/UniversalAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$13;->val$_cb:Lcom/sightcall/universal/agent/RegisterCallback;

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/RegisterCallback;->onRegisterError(Lcom/sightcall/universal/agent/RegisterCallback$Error;)V

    return-void
.end method

.method public onRegisterSuccess(Lcom/sightcall/universal/agent/RegisterCallback$Success;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$13;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->d(Lcom/sightcall/universal/agent/UniversalAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$13;->val$_cb:Lcom/sightcall/universal/agent/RegisterCallback;

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/RegisterCallback;->onRegisterSuccess(Lcom/sightcall/universal/agent/RegisterCallback$Success;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p0

    new-instance v0, Lcom/sightcall/universal/agent/RegistrationEvent;

    iget-object p1, p1, Lcom/sightcall/universal/agent/RegisterCallback$Success;->agent:Lcom/sightcall/universal/agent/Agent;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/RegistrationEvent;-><init>(Lcom/sightcall/universal/agent/Agent;)V

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
