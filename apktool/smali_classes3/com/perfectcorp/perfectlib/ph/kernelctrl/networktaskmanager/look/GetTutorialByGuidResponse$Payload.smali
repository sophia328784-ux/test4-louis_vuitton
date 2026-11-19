.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;
.super Ljava/lang/Object;


# instance fields
.field public final action_url:Ljava/lang/String;

.field public final brandId:Ljava/lang/String;

.field public final customer_id:I

.field public final lastModified:J

.field public final makeup_version:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final product_desc:Ljava/lang/String;

.field public final product_id:Ljava/lang/String;

.field public final type:Ljava/lang/String;

.field public final vendor:Ljava/lang/String;

.field public final zipURL:Ljava/lang/String;

.field public final zipURLs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;->product_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;->type:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;->customer_id:I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;->makeup_version:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;->lastModified:J

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;->vendor:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;->product_desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;->action_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;->zipURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;->zipURLs:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/GetTutorialByGuidResponse$Payload;->brandId:Ljava/lang/String;

    return-void
.end method
