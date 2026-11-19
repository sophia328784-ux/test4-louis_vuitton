.class public final Lnet/rtccloud/sdk/event/call/AudioRouteEvent;
.super Lnet/rtccloud/sdk/event/call/CallEvent;
.source "SourceFile"


# instance fields
.field private final route:Lnet/rtccloud/sdk/AudioModule$AudioRoute;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/AudioModule$AudioRoute;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/call/CallEvent;-><init>(Lnet/rtccloud/sdk/Call;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/event/call/AudioRouteEvent;->route:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    return-void
.end method


# virtual methods
.method public route()Lnet/rtccloud/sdk/AudioModule$AudioRoute;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/call/AudioRouteEvent;->route:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioRouteEvent{call="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/event/call/CallEvent;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/rtccloud/sdk/event/call/AudioRouteEvent;->route:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
