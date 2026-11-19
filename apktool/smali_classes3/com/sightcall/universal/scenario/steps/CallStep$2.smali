.class Lcom/sightcall/universal/scenario/steps/CallStep$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;


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


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/scenario/steps/CallStep;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep$2;->this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep$2;->this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->a(Lcom/sightcall/universal/scenario/steps/CallStep;)Lnet/rtccloud/sdk/DataChannelModule;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/DataChannelModule;->sendInBand(Ljava/lang/Object;)Z

    return-void
.end method
