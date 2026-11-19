.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

.field public final b:Ljava/util/Collection;

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->a:Ljava/util/Collection;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;->b:Ljava/util/Collection;

    iget v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->b:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;->c:I

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->c:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;->d:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->d:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;->e:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->e:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;->f:Z

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;->a:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    return-void
.end method
