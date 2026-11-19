.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final lastModified:Ljava/lang/Long;

.field public final skuSetId:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "guid"
    .end annotation
.end field

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/a$a;->skuSetId:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/a$a;->type:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/a$a;->lastModified:Ljava/lang/Long;

    return-void
.end method
