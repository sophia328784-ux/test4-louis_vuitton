.class public final Lnet/rtccloud/sdk/event/acd/AcdReadyEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final request:Lnet/rtccloud/sdk/AcdModule$Request;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/AcdModule$Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/event/acd/AcdReadyEvent;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    return-void
.end method


# virtual methods
.method public request()Lnet/rtccloud/sdk/AcdModule$Request;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/acd/AcdReadyEvent;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AcdReadyEvent{request="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/event/acd/AcdReadyEvent;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/acd/AcdReadyEvent;->request:Lnet/rtccloud/sdk/AcdModule$Request;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AcdModule$Request;->uid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
