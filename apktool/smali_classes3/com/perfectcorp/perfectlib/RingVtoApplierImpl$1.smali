.class Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;
.super Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;


# instance fields
.field public final synthetic l:Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;->l:Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;-><init>(Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/perfectcorp/perfectlib/ph/utility/b;)Lcom/perfectcorp/perfectlib/EffectId;
    .locals 1

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/perfectcorp/perfectlib/EffectId$Builder;->m:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    goto :goto_0
.end method

.method public final f(Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;->l:Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;->c(Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;->d(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final i()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;->l:Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;->e()V

    return-void
.end method

.method public final q()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;->l:Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;->f()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final r(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;->g(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final w()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl$1;->l:Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;->h()V

    return-void
.end method
