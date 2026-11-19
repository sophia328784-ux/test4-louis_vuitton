.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/i;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/i;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;->b:Ljava/util/Collection;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->b(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method
