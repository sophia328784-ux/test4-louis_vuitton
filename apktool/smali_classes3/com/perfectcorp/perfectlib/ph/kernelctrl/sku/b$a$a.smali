.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/Collection;

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->a:Ljava/util/Collection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->c:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->d:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->e:Z

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    return-void
.end method
