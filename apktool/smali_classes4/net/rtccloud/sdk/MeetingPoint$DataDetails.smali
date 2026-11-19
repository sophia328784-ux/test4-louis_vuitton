.class public final Lnet/rtccloud/sdk/MeetingPoint$DataDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/MeetingPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataDetails"
.end annotation


# instance fields
.field final endTime:I

.field final location:Ljava/lang/String;

.field public final mpid:Ljava/lang/String;

.field final startTime:I

.field final title:Ljava/lang/String;

.field final type:Lnet/rtccloud/sdk/MeetingPoint$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->mpid:Ljava/lang/String;

    iput-object p3, p0, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->title:Ljava/lang/String;

    iput-object p4, p0, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->location:Ljava/lang/String;

    iput p5, p0, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->startTime:I

    iput p6, p0, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->endTime:I

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    sget-object p1, Lnet/rtccloud/sdk/MeetingPoint$Type;->PERMANENT:Lnet/rtccloud/sdk/MeetingPoint$Type;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->type:Lnet/rtccloud/sdk/MeetingPoint$Type;

    return-void

    :cond_0
    sget-object p1, Lnet/rtccloud/sdk/MeetingPoint$Type;->ADHOC:Lnet/rtccloud/sdk/MeetingPoint$Type;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->type:Lnet/rtccloud/sdk/MeetingPoint$Type;

    return-void

    :cond_1
    sget-object p1, Lnet/rtccloud/sdk/MeetingPoint$Type;->SCHEDULED:Lnet/rtccloud/sdk/MeetingPoint$Type;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->type:Lnet/rtccloud/sdk/MeetingPoint$Type;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataDetails{mpid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->mpid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->type:Lnet/rtccloud/sdk/MeetingPoint$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', location=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->endTime:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
