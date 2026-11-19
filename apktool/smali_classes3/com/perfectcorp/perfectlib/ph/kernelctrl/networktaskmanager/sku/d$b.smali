.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final lastModified:J

.field private final mask:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$a;

.field private final productGUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$b;->productGUID:Ljava/lang/String;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$a;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$b;->mask:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$a;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$b;->lastModified:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$b;->productGUID:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$a;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$b;->mask:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$a;

    return-object p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$b;->lastModified:J

    return-wide v0
.end method
