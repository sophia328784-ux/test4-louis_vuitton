.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final alignMode:Ljava/lang/String;

.field public final animated:Z

.field public final bestDisplayFrame:I

.field public final enabled:Z

.field public final image:Ljava/lang/String;

.field public final imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->enabled:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->animated:Z

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->bestDisplayFrame:I

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->imageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->alignMode:Ljava/lang/String;

    return-void
.end method
