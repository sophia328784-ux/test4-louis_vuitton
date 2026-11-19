.class public final Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;
.super Lnet/rtccloud/sdk/event/datachannel/DataChannelEvent;
.source "SourceFile"


# instance fields
.field private final id:I

.field private final payload:[B

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/DataChannelModule;ILjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/datachannel/DataChannelEvent;-><init>(Lnet/rtccloud/sdk/DataChannelModule;)V

    iput p2, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->id:I

    iput-object p3, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->uid:Ljava/lang/String;

    iput-object p4, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->payload:[B

    return-void
.end method


# virtual methods
.method public final ack(I)Z
    .locals 2

    invoke-virtual {p0}, Lnet/rtccloud/sdk/event/datachannel/DataChannelEvent;->dataChannel()Lnet/rtccloud/sdk/DataChannelModule;

    move-result-object v0

    iget-object v1, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->uid:Ljava/lang/String;

    iget p0, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->id:I

    invoke-virtual {v0, v1, p0, p1}, Lnet/rtccloud/sdk/DataChannelModule;->ack(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public id()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->id:I

    return p0
.end method

.method public payload()[B
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->payload:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataChannelOutOfBandEvent{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->payload:[B

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->uid:Ljava/lang/String;

    return-object p0
.end method
