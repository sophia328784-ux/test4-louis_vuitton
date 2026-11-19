.class public final Lnet/rtccloud/sdk/util/EncodingParameters$Video;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/util/EncodingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Video"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;
    }
.end annotation


# instance fields
.field private final noiseSensitivity:Z

.field private final threads:I

.field private final vp8CpuUsage:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video;->vp8CpuUsage:I

    iput p2, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video;->threads:I

    iput-boolean p3, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video;->noiseSensitivity:Z

    return-void
.end method


# virtual methods
.method public noiseSensitivity()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video;->noiseSensitivity:Z

    return p0
.end method

.method public threads()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video;->threads:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video{vp8CpuUsage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video;->vp8CpuUsage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", threads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video;->threads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", noiseSensitivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video;->noiseSensitivity:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ld21;->q(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public vp8CpuUsage()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video;->vp8CpuUsage:I

    return p0
.end method
