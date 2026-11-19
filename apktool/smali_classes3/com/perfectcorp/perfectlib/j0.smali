.class public final synthetic Lcom/perfectcorp/perfectlib/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/j0;->b:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    iput p2, p0, Lcom/perfectcorp/perfectlib/j0;->c:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/j0;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/j0;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/j0;->b:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    iget v1, p0, Lcom/perfectcorp/perfectlib/j0;->c:I

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->s(I)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/j0;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/j0;->e:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->h(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/utility/b;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/ph/utility/b;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v7, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v6, v7, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/perfectcorp/perfectlib/PerfectEffect;->BRACELET:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v6, v7, :cond_1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-static {v2, v4}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->e(Ljava/util/ArrayList;Lcom/perfectcorp/perfectlib/PerfectEffect;)Lcom/perfectcorp/perfectlib/ph/utility/b;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->BRACELET:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-static {v3, v2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->e(Ljava/util/ArrayList;Lcom/perfectcorp/perfectlib/PerfectEffect;)Lcom/perfectcorp/perfectlib/ph/utility/b;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-virtual {v0, v2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->t(Lcom/perfectcorp/perfectlib/ph/utility/b;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->v(Ljava/util/List;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method
