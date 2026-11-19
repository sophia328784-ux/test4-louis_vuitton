.class public interface abstract Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ProductIdCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ProductIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/JewelryVtoApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProductIdCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ProductId;",
            ">;)V"
        }
    .end annotation
.end method
