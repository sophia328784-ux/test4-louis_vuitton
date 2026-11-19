.class public final synthetic Lcom/perfectcorp/perfectlib/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;I)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/k;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/k;->c:Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;

    iput p2, p0, Lcom/perfectcorp/perfectlib/k;->d:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/k;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/perfectcorp/perfectlib/k;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/k;->e:Ljava/util/List;

    iget v2, p0, Lcom/perfectcorp/perfectlib/k;->d:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/k;->c:Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->c:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->i(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/EffectId;->n:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    instance-of v5, v4, Lcom/perfectcorp/perfectlib/ph/utility/a;

    if-eqz v5, :cond_0

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v2, v0, :cond_0

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/utility/a;

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {p0, v4}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->j(Lcom/perfectcorp/perfectlib/ph/utility/a;)V

    invoke-virtual {p0, v4}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->d(Lcom/perfectcorp/perfectlib/ph/utility/a;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->k:Lcom/perfectcorp/perfectlib/ph/utility/a;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string p0, "No valid "

    const-string v1, " effect id"

    invoke-static {p0, v0, v1}, Llc0;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v3

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->i(I)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->b(Ljava/util/List;Z)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->c(Ljava/util/List;)Lcom/perfectcorp/perfectlib/ph/utility/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->j(Lcom/perfectcorp/perfectlib/ph/utility/a;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->d(Lcom/perfectcorp/perfectlib/ph/utility/a;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->k:Lcom/perfectcorp/perfectlib/ph/utility/a;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
