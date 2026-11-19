.class Lcom/sightcall/universal/agent/UniversalAgent$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/agent/FetchCodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->onCodeCreated(Lcom/sightcall/universal/fcm/messages/Code$Created;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$33;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchCodeError(Lcom/sightcall/universal/agent/FetchCodeCallback$Error;)V
    .locals 0

    return-void
.end method

.method public onFetchCodeSuccess(Lcom/sightcall/universal/agent/FetchCodeCallback$Success;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/FetchCodeCallback$Success;->code()Lcom/sightcall/universal/agent/Code;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$33;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->f(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/util/Lazy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
