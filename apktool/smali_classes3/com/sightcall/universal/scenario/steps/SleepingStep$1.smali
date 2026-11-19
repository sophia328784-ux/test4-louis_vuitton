.class Lcom/sightcall/universal/scenario/steps/SleepingStep$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/scenario/steps/SleepingStep;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/scenario/steps/SleepingStep;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/scenario/steps/SleepingStep;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/SleepingStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/SleepingStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/SleepingStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/SleepingStep;

    sget-object v1, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/SleepingStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/SleepingStep;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sightcall/universal/scenario/Step;

    invoke-static {p0, v0}, Lcom/sightcall/universal/scenario/steps/SleepingStep;->access$000(Lcom/sightcall/universal/scenario/steps/SleepingStep;[Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method
