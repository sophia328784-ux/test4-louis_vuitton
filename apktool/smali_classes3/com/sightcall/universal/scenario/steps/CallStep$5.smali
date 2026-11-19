.class Lcom/sightcall/universal/scenario/steps/CallStep$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/event/AnnotationTypeCommand;


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

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep$5;->this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public driven()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep$5;->this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    sget-object v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;->Driven:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;

    invoke-interface {p0, v0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->selectUpdateCapability(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;)V

    return-void
.end method

.method public standalone()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep$5;->this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    sget-object v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;->Standalone:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;

    invoke-interface {p0, v0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->selectUpdateCapability(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;)V

    return-void
.end method
