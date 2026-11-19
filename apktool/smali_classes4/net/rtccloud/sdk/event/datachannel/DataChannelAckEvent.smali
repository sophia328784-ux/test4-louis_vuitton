.class public final Lnet/rtccloud/sdk/event/datachannel/DataChannelAckEvent;
.super Lnet/rtccloud/sdk/event/datachannel/DataChannelEvent;
.source "SourceFile"


# instance fields
.field private final flag:I

.field private final id:I

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/DataChannelModule;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/datachannel/DataChannelEvent;-><init>(Lnet/rtccloud/sdk/DataChannelModule;)V

    iput p2, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelAckEvent;->id:I

    iput p3, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelAckEvent;->flag:I

    iput-object p4, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelAckEvent;->uid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public flag()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelAckEvent;->flag:I

    return p0
.end method

.method public id()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelAckEvent;->id:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataChannelAckEvent{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelAckEvent;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelAckEvent;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelAckEvent;->flag:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelAckEvent;->uid:Ljava/lang/String;

    return-object p0
.end method
