.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$TutorialData$Builder;->f:Z

    return-void
.end method
