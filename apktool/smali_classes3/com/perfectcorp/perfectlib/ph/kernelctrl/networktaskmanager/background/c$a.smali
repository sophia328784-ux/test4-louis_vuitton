.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final downloadCheckSum:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "downloadchecksum"
    .end annotation
.end field

.field public final downloadFileSize:J

.field public final downloadURL:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "downloadurl"
    .end annotation
.end field

.field public final expiredDate:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "expireddate"
    .end annotation
.end field

.field public final guid:Ljava/lang/String;

.field public final lastModified:J

.field public final name:Ljava/lang/String;

.field public final publishDate:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "publishdate"
    .end annotation
.end field

.field public final thumbnail:Ljava/lang/String;

.field public final tid:Ljava/lang/String;

.field public final type:Ljava/lang/String;

.field public final usageType:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "usage_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->tid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->thumbnail:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->expiredDate:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->lastModified:J

    iput-wide v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->downloadFileSize:J

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->usageType:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->downloadURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->downloadCheckSum:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->publishDate:Ljava/lang/String;

    return-void
.end method
