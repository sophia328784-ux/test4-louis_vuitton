.class Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/guest/UniversalGuest$NotifyAgentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyAgentError()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;

    sget-object v1, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->interrupt()V

    return-void
.end method

.method public onNotifyAgentSuccess(Lcom/sightcall/universal/guest/Calls$Action;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;

    sget-object v1, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$2;->$SwitchMap$com$sightcall$universal$guest$Calls$Action:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;

    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;->d(Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->call(Ljava/lang/String;)V

    return-void
.end method
