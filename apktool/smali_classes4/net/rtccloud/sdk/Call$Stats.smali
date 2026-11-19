.class public Lnet/rtccloud/sdk/Call$Stats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field public audioPacketLossIn:J

.field public audioPacketMissed:J

.field public cpu:I

.field public timestamp:J

.field public videoGrabRate:F

.field public videoHeightIn:I

.field public videoHeightOut:I

.field public videoIpThroughputIn:J

.field public videoIpThroughputOut:J

.field public videoJitterIn:I

.field public videoPacketLossIn:J

.field public videoRateIn:F

.field public videoRateOut:F

.field public videoWidthIn:I

.field public videoWidthOut:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
