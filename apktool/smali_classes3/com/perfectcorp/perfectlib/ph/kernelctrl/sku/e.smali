.class public Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$d;,
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$a;,
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$c;,
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;->b:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;->b:Ljava/lang/Throwable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;->b:Ljava/lang/Throwable;

    throw p0
.end method
