.class public final synthetic Lcom/perfectcorp/perfectlib/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/c1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/c1;->e:Ljava/lang/Object;

    iput p2, p0, Lcom/perfectcorp/perfectlib/c1;->c:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/c1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/perfectcorp/perfectlib/c1;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/c1;->d:Ljava/lang/Object;

    iget v3, p0, Lcom/perfectcorp/perfectlib/c1;->c:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/c1;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    check-cast v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->b(IZLjava/lang/Iterable;Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v3, v2}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->v(ILjava/util/List;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    invoke-virtual {p0, v3, v2}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->j(ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    check-cast v2, Ljava/util/Set;

    invoke-virtual {p0, v3, v2}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->n(ILjava/util/Set;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->k(ILjava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->f(I)V

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->F(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    move-result-object v2

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "This is not a jewelry look."

    invoke-static {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/clflurry/b;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Jewelry:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->c:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {v1, v2, v3}, Lcom/perfectcorp/perfectlib/ph/clflurry/b;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/utility/b;

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/ph/utility/b;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v7, v8, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->BRACELET:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v7, v8, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-static {v3, v5}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->e(Ljava/util/ArrayList;Lcom/perfectcorp/perfectlib/PerfectEffect;)Lcom/perfectcorp/perfectlib/ph/utility/b;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->BRACELET:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-static {v4, v3}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->e(Ljava/util/ArrayList;Lcom/perfectcorp/perfectlib/PerfectEffect;)Lcom/perfectcorp/perfectlib/ph/utility/b;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v2, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->j(Ljava/util/ArrayList;Lcom/perfectcorp/perfectlib/ph/clflurry/b;)V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->d:Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl$1;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->v(Ljava/util/List;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/LookNotFoundException;

    const-string v0, "Look guid="

    const-string v1, " is not in database."

    invoke-static {v0, v2, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/exceptions/LookNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
