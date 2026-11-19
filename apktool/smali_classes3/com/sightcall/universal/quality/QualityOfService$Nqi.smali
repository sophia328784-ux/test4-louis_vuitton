.class public Lcom/sightcall/universal/quality/QualityOfService$Nqi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/quality/QualityOfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nqi"
.end annotation


# instance fields
.field public final localAudio:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "la"
    .end annotation
.end field

.field public final localVideo:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "lv"
    .end annotation
.end field

.field public final remoteAudio:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "ra"
    .end annotation
.end field

.field public final remoteVideo:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "rv"
    .end annotation
.end field

.field public final timestamp:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "t"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Call$StatsHistory$Nqi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lnet/rtccloud/sdk/Call$StatsHistory$Entry;->timestamp:I

    iput v0, p0, Lcom/sightcall/universal/quality/QualityOfService$Nqi;->timestamp:I

    iget v0, p1, Lnet/rtccloud/sdk/Call$StatsHistory$Nqi;->localAudio:I

    iput v0, p0, Lcom/sightcall/universal/quality/QualityOfService$Nqi;->localAudio:I

    iget v0, p1, Lnet/rtccloud/sdk/Call$StatsHistory$Nqi;->localVideo:I

    iput v0, p0, Lcom/sightcall/universal/quality/QualityOfService$Nqi;->localVideo:I

    iget v0, p1, Lnet/rtccloud/sdk/Call$StatsHistory$Nqi;->remoteAudio:I

    iput v0, p0, Lcom/sightcall/universal/quality/QualityOfService$Nqi;->remoteAudio:I

    iget p1, p1, Lnet/rtccloud/sdk/Call$StatsHistory$Nqi;->remoteVideo:I

    iput p1, p0, Lcom/sightcall/universal/quality/QualityOfService$Nqi;->remoteVideo:I

    return-void
.end method
