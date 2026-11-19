.class public Lcom/sightcall/universal/event/CallReportEvent;
.super Lnet/rtccloud/sdk/event/call/CallEvent;
.source "SourceFile"


# instance fields
.field private final session:Lcom/sightcall/universal/model/Session;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/call/CallEvent;-><init>(Lnet/rtccloud/sdk/Call;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sightcall/universal/event/CallReportEvent;->session:Lcom/sightcall/universal/model/Session;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/call/CallEvent;-><init>(Lnet/rtccloud/sdk/Call;)V

    .line 8
    iput-object p2, p0, Lcom/sightcall/universal/event/CallReportEvent;->session:Lcom/sightcall/universal/model/Session;

    return-void
.end method


# virtual methods
.method public activeDuration()J
    .locals 2

    iget-object p0, p0, Lnet/rtccloud/sdk/event/call/CallEvent;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->activeDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public duration()J
    .locals 2

    iget-object p0, p0, Lnet/rtccloud/sdk/event/call/CallEvent;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public result()Lnet/rtccloud/sdk/Call$EndReason;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/call/CallEvent;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->endReason()Lnet/rtccloud/sdk/Call$EndReason;

    move-result-object p0

    return-object p0
.end method

.method public session()Lcom/sightcall/universal/model/Session;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/event/CallReportEvent;->session:Lcom/sightcall/universal/model/Session;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallReportEvent{call="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/event/call/CallEvent;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sightcall/universal/event/CallReportEvent;->duration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", activeDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sightcall/universal/event/CallReportEvent;->activeDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sightcall/universal/event/CallReportEvent;->result()Lnet/rtccloud/sdk/Call$EndReason;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
