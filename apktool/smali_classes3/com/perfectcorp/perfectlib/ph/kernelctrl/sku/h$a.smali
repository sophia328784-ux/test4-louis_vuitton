.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->a:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;->a:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->b:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;->b:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->c:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;->c:Z

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    return-void
.end method
