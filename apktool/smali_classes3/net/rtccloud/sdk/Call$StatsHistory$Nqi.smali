.class public Lnet/rtccloud/sdk/Call$StatsHistory$Nqi;
.super Lnet/rtccloud/sdk/Call$StatsHistory$Entry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Call$StatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nqi"
.end annotation


# instance fields
.field public final localAudio:I

.field public final localVideo:I

.field public final remoteAudio:I

.field public final remoteVideo:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/Call$StatsHistory$Entry;-><init>(I)V

    iput p2, p0, Lnet/rtccloud/sdk/Call$StatsHistory$Nqi;->localAudio:I

    iput p3, p0, Lnet/rtccloud/sdk/Call$StatsHistory$Nqi;->localVideo:I

    iput p4, p0, Lnet/rtccloud/sdk/Call$StatsHistory$Nqi;->remoteAudio:I

    iput p5, p0, Lnet/rtccloud/sdk/Call$StatsHistory$Nqi;->remoteVideo:I

    return-void
.end method
