.class public final Lnet/rtccloud/sdk/event/presence/PresenceUpdateEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final uid:Ljava/lang/String;

.field private final value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/event/presence/PresenceUpdateEvent;->uid:Ljava/lang/String;

    iput p2, p0, Lnet/rtccloud/sdk/event/presence/PresenceUpdateEvent;->value:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PresenceUpdateEvent{uid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/event/presence/PresenceUpdateEvent;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/rtccloud/sdk/event/presence/PresenceUpdateEvent;->value:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/presence/PresenceUpdateEvent;->uid:Ljava/lang/String;

    return-object p0
.end method

.method public value()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/event/presence/PresenceUpdateEvent;->value:I

    return p0
.end method
