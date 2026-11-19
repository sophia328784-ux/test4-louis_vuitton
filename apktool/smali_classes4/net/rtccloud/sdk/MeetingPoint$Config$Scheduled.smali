.class public Lnet/rtccloud/sdk/MeetingPoint$Config$Scheduled;
.super Lnet/rtccloud/sdk/MeetingPoint$Config;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/MeetingPoint$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Scheduled"
.end annotation


# instance fields
.field public final endTime:I

.field public final startTime:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Type;->SCHEDULED:Lnet/rtccloud/sdk/MeetingPoint$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lnet/rtccloud/sdk/MeetingPoint$Config;-><init>(Lnet/rtccloud/sdk/MeetingPoint$Type;Ljava/lang/String;Ljava/lang/String;I)V

    iput p3, p0, Lnet/rtccloud/sdk/MeetingPoint$Config$Scheduled;->startTime:I

    iput p4, p0, Lnet/rtccloud/sdk/MeetingPoint$Config$Scheduled;->endTime:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/rtccloud/sdk/MeetingPoint$Config$Scheduled;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scheduled{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint$Config;->type:Lnet/rtccloud/sdk/MeetingPoint$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint$Config;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', location=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint$Config;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/rtccloud/sdk/MeetingPoint$Config$Scheduled;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/rtccloud/sdk/MeetingPoint$Config$Scheduled;->endTime:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
