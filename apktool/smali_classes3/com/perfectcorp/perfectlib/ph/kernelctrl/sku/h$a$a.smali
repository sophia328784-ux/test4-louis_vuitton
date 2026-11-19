.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->a:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->b:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->c:Z

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    return-void
.end method
