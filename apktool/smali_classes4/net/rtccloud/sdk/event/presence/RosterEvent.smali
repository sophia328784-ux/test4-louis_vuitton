.class public final Lnet/rtccloud/sdk/event/presence/RosterEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final delta:I

.field private final size:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/rtccloud/sdk/event/presence/RosterEvent;->delta:I

    iput p2, p0, Lnet/rtccloud/sdk/event/presence/RosterEvent;->size:I

    return-void
.end method


# virtual methods
.method public delta()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/event/presence/RosterEvent;->delta:I

    return p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/event/presence/RosterEvent;->size:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RosterEvent{delta="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/rtccloud/sdk/event/presence/RosterEvent;->delta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/rtccloud/sdk/event/presence/RosterEvent;->size:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
