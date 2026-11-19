.class public abstract Lnet/rtccloud/sdk/event/datachannel/DataChannelEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dataChannelModule:Lnet/rtccloud/sdk/DataChannelModule;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/DataChannelModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelEvent;->dataChannelModule:Lnet/rtccloud/sdk/DataChannelModule;

    return-void
.end method


# virtual methods
.method public dataChannel()Lnet/rtccloud/sdk/DataChannelModule;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/datachannel/DataChannelEvent;->dataChannelModule:Lnet/rtccloud/sdk/DataChannelModule;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "DataChannelEvent{}"

    return-object p0
.end method
