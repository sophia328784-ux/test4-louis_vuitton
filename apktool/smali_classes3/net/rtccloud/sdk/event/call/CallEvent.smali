.class public abstract Lnet/rtccloud/sdk/event/call/CallEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final call:Lnet/rtccloud/sdk/Call;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Call;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/event/call/CallEvent;->call:Lnet/rtccloud/sdk/Call;

    return-void
.end method


# virtual methods
.method public call()Lnet/rtccloud/sdk/Call;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/call/CallEvent;->call:Lnet/rtccloud/sdk/Call;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallEvent{call="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/event/call/CallEvent;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->id()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
