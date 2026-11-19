.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final data:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$b;

.field public final makeup:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$b;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$b;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->data:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$b;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->makeup:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;

    return-void
.end method
