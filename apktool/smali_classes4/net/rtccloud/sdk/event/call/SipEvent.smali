.class public Lnet/rtccloud/sdk/event/call/SipEvent;
.super Lnet/rtccloud/sdk/event/call/CallEvent;
.source "SourceFile"


# instance fields
.field private final sipId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Call;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/call/CallEvent;-><init>(Lnet/rtccloud/sdk/Call;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/event/call/SipEvent;->sipId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public sipId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/call/SipEvent;->sipId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SipEvent{call="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/event/call/CallEvent;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sipId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/rtccloud/sdk/event/call/SipEvent;->sipId:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
