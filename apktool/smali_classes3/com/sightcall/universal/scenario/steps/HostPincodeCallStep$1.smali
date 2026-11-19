.class Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/agent/DeleteCodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;->onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteCodeError(Lcom/sightcall/universal/agent/DeleteCodeCallback$Error;)V
    .locals 0

    return-void
.end method

.method public onDeleteCodeSuccess(Lcom/sightcall/universal/agent/DeleteCodeCallback$Success;)V
    .locals 0

    return-void
.end method
