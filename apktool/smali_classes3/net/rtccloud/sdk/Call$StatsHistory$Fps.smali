.class public Lnet/rtccloud/sdk/Call$StatsHistory$Fps;
.super Lnet/rtccloud/sdk/Call$StatsHistory$Entry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Call$StatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fps"
.end annotation


# instance fields
.field public final gfps:I

.field public final rfps:I

.field public final sfps:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/Call$StatsHistory$Entry;-><init>(I)V

    iput p2, p0, Lnet/rtccloud/sdk/Call$StatsHistory$Fps;->gfps:I

    iput p3, p0, Lnet/rtccloud/sdk/Call$StatsHistory$Fps;->sfps:I

    iput p4, p0, Lnet/rtccloud/sdk/Call$StatsHistory$Fps;->rfps:I

    return-void
.end method
