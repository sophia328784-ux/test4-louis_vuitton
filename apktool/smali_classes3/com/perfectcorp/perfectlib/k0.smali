.class public final synthetic Lcom/perfectcorp/perfectlib/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/k0;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/k0;->d:Ljava/lang/Object;

    iput p2, p0, Lcom/perfectcorp/perfectlib/k0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/perfectcorp/perfectlib/k0;->b:I

    iget v1, p0, Lcom/perfectcorp/perfectlib/k0;->c:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/k0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->z(I)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->s(I)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->q()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
