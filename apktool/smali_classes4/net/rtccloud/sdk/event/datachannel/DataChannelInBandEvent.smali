.class public final Lnet/rtccloud/sdk/event/datachannel/DataChannelInBandEvent;
.super Lnet/rtccloud/sdk/event/datachannel/DataChannelEvent;
.source "SourceFile"


# instance fields
.field private final payload:[B


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/DataChannelModule;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/datachannel/DataChannelEvent;-><init>(Lnet/rtccloud/sdk/DataChannelModule;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelInBandEvent;->payload:[B

    return-void
.end method


# virtual methods
.method public payload()[B
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelInBandEvent;->payload:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataChannelInBandEvent{payload="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelInBandEvent;->payload:[B

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
