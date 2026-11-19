.class public final Lnet/rtccloud/sdk/event/presence/RegistrationEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final rosterLength:I

.field private final status:Lnet/rtccloud/sdk/User$Status;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/User$Status;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/event/presence/RegistrationEvent;->status:Lnet/rtccloud/sdk/User$Status;

    iput p2, p0, Lnet/rtccloud/sdk/event/presence/RegistrationEvent;->rosterLength:I

    return-void
.end method


# virtual methods
.method public rosterLength()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/event/presence/RegistrationEvent;->rosterLength:I

    return p0
.end method

.method public status()Lnet/rtccloud/sdk/User$Status;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/presence/RegistrationEvent;->status:Lnet/rtccloud/sdk/User$Status;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RegistrationEvent{status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/event/presence/RegistrationEvent;->status:Lnet/rtccloud/sdk/User$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rosterLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/rtccloud/sdk/event/presence/RegistrationEvent;->rosterLength:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
