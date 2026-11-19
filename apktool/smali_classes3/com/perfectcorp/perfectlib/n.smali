.class public final synthetic Lcom/perfectcorp/perfectlib/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/n;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/n;->d:Ljava/lang/Object;

    iput p2, p0, Lcom/perfectcorp/perfectlib/n;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/perfectcorp/perfectlib/n;->b:I

    iget v1, p0, Lcom/perfectcorp/perfectlib/n;->c:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/n;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->m(ILjava/util/List;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->i(I)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->c(Ljava/util/List;)Lcom/perfectcorp/perfectlib/ph/utility/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->j(Lcom/perfectcorp/perfectlib/ph/utility/a;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->d(Lcom/perfectcorp/perfectlib/ph/utility/a;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->k:Lcom/perfectcorp/perfectlib/ph/utility/a;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
