.class Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl$1;
.super Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;


# instance fields
.field public final synthetic l:Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl$1;->l:Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;-><init>(Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/perfectcorp/perfectlib/ph/utility/b;)Lcom/perfectcorp/perfectlib/EffectId;
    .locals 1

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->WATCH:Lcom/perfectcorp/perfectlib/PerfectEffect;

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

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl$1;->l:Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;->b(Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final i()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl$1;->l:Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;->c()V

    return-void
.end method

.method public final q()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl$1;->l:Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;->d()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final r(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;->e(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final w()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl$1;->l:Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;->f()V

    return-void
.end method
