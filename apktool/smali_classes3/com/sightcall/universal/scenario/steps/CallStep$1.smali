.class Lcom/sightcall/universal/scenario/steps/CallStep$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/scenario/steps/CallStep;->onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

.field final synthetic val$event:Lnet/rtccloud/sdk/event/call/StatusEvent;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/scenario/steps/CallStep;Lnet/rtccloud/sdk/event/call/StatusEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

    iput-object p2, p0, Lcom/sightcall/universal/scenario/steps/CallStep$1;->val$event:Lnet/rtccloud/sdk/event/call/StatusEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserId()I
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep$1;->val$event:Lnet/rtccloud/sdk/event/call/StatusEvent;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep$1;->val$event:Lnet/rtccloud/sdk/event/call/StatusEvent;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ConferenceModule;->myself()Lnet/rtccloud/sdk/Participant;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Participant;->id()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
