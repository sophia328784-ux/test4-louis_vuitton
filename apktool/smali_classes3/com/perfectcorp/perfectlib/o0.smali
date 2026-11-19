.class public final synthetic Lcom/perfectcorp/perfectlib/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;I)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/o0;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/o0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    iput p2, p0, Lcom/perfectcorp/perfectlib/o0;->d:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/o0;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/perfectcorp/perfectlib/o0;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/o0;->e:Ljava/util/List;

    iget v2, p0, Lcom/perfectcorp/perfectlib/o0;->d:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/o0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->c:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->s(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/perfectcorp/perfectlib/VtoSetting;->builder()Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object v5

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setSkuSetGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->build()Lcom/perfectcorp/perfectlib/VtoSetting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v5, v4, Lcom/perfectcorp/perfectlib/EffectId;->n:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    instance-of v6, v5, Lcom/perfectcorp/perfectlib/ph/utility/b;

    if-eqz v6, :cond_0

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v4, v0, :cond_0

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->r(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->t(Lcom/perfectcorp/perfectlib/ph/utility/b;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->v(Ljava/util/List;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    goto :goto_2

    :cond_5
    const-string p0, "No valid "

    const-string v1, " effect id"

    invoke-static {p0, v0, v1}, Llc0;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_2
    return-object p0

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->s(I)V

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->r(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/utility/b;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/ph/utility/b;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v7, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v6, v7, :cond_6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    sget-object v7, Lcom/perfectcorp/perfectlib/PerfectEffect;->BRACELET:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v6, v7, :cond_7

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-static {v2, v4}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->e(Ljava/util/ArrayList;Lcom/perfectcorp/perfectlib/PerfectEffect;)Lcom/perfectcorp/perfectlib/ph/utility/b;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->BRACELET:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-static {v3, v2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->e(Ljava/util/ArrayList;Lcom/perfectcorp/perfectlib/PerfectEffect;)Lcom/perfectcorp/perfectlib/ph/utility/b;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->t(Lcom/perfectcorp/perfectlib/ph/utility/b;)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->v(Ljava/util/List;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
