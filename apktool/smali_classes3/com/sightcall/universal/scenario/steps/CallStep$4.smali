.class Lcom/sightcall/universal/scenario/steps/CallStep$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/event/LiveTranslationNewSentence;


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

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep$4;->this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newSentence(Ljava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep$4;->this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->b(Lcom/sightcall/universal/scenario/steps/CallStep;)Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object p0

    new-instance v0, Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;

    invoke-direct {v0, p1}, Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;

    invoke-direct {p1, p2}, Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;-><init>(I)V

    invoke-interface {p0, v0, p1}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->onNewMessage(Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;)V

    return-void
.end method
