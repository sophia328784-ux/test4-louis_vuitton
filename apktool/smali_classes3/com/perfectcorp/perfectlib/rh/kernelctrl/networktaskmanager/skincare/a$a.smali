.class public final Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final qty:I

.field public final skuId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/a$a;->skuId:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/a$a;->qty:I

    return-void
.end method
