.class public Lcom/sightcall/universal/quality/QualityOfService$Fps;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/quality/QualityOfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fps"
.end annotation


# instance fields
.field public final gfps:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "g"
    .end annotation
.end field

.field public final rfps:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "r"
    .end annotation
.end field

.field public final sfps:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "s"
    .end annotation
.end field

.field public final timestamp:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "t"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Call$StatsHistory$Fps;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lnet/rtccloud/sdk/Call$StatsHistory$Entry;->timestamp:I

    iput v0, p0, Lcom/sightcall/universal/quality/QualityOfService$Fps;->timestamp:I

    iget v0, p1, Lnet/rtccloud/sdk/Call$StatsHistory$Fps;->gfps:I

    iput v0, p0, Lcom/sightcall/universal/quality/QualityOfService$Fps;->gfps:I

    iget v0, p1, Lnet/rtccloud/sdk/Call$StatsHistory$Fps;->sfps:I

    iput v0, p0, Lcom/sightcall/universal/quality/QualityOfService$Fps;->sfps:I

    iget p1, p1, Lnet/rtccloud/sdk/Call$StatsHistory$Fps;->rfps:I

    iput p1, p0, Lcom/sightcall/universal/quality/QualityOfService$Fps;->rfps:I

    return-void
.end method
