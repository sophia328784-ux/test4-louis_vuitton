.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;
    }
.end annotation


# instance fields
.field public final expiredDate:Ljava/lang/String;

.field public final guid:Ljava/lang/String;

.field public final isDownloaded:Z

.field public final lastModified:J

.field public final payload:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;->guid:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;->type:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;->payload:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;->expiredDate:Ljava/lang/String;

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;->e:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;->lastModified:J

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;->f:Z

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;->isDownloaded:Z

    return-void
.end method
