.class public final synthetic Lcom/perfectcorp/perfectlib/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;ZI)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/j3;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/j3;->c:Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/j3;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/perfectcorp/perfectlib/j3;->b:I

    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/j3;->d:Z

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/j3;->c:Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->j:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-static {v1, p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->q(ZLcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->j:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->q(ZLcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    const-string v5, "N/A"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/SkuHandler;->m(Ljava/lang/String;)Ljava/util/AbstractSet;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    const-string v5, "[getProductIds] Filter out SKU by product mask. productGuid="

    const-string v6, ", skuGuid="

    invoke-static {v5, v3, v6, v4}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/perfectcorp/perfectlib/ProductId;

    invoke-direct {v3, v2}, Lcom/perfectcorp/perfectlib/ProductId;-><init>(Lcom/perfectcorp/perfectlib/EffectId;)V

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
