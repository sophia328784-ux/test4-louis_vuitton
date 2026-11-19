.class public final synthetic Lx7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    iput p4, p0, Lx7;->b:I

    iput-object p1, p0, Lx7;->d:Ljava/lang/Object;

    iput-object p2, p0, Lx7;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lx7;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;I)V
    .locals 0

    .line 12
    iput p4, p0, Lx7;->b:I

    iput-object p1, p0, Lx7;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lx7;->c:Z

    iput-object p3, p0, Lx7;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lx7;->d:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/SkuHandler;

    iget-object v1, p0, Lx7;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    check-cast p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-object v2, p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->valueOfSkuFeatureType(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v2

    iget-object v3, p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->d(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/PerfectEffect;->of(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v2

    iget-object v3, p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    iget-boolean p0, p0, Lx7;->c:Z

    if-eqz p0, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    return-void

    :cond_0
    move-object p0, v3

    :cond_1
    new-instance v1, Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/SkuHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-direct {v1, v2, p0, p2, v0}, Lcom/perfectcorp/perfectlib/ProductInfo;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lx7;->b:I

    iget-boolean v1, p0, Lx7;->c:Z

    iget-object v2, p0, Lx7;->e:Ljava/lang/Object;

    iget-object p0, p0, Lx7;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    check-cast p1, Ljava/lang/Boolean;

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->a:Ljava/util/regex/Pattern;

    new-instance p1, Lho0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v2, v1, v0}, Lho0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/common/network/ProgressCallback;

    check-cast v2, Ljava/lang/String;

    check-cast p1, Lcom/perfectcorp/common/utility/Triple;

    sget-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    const-wide/16 v3, 0x0

    invoke-interface {p0, v3, v4}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    if-eqz v1, :cond_0

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;

    invoke-direct {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;-><init>()V

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;)V

    check-cast p0, Ljava/util/Set;

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->d(Ljava/util/Set;Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Lx1;

    const/16 v0, 0x1b

    invoke-direct {p1, v0}, Lx1;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/perfectcorp/common/utility/Triple;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->g(Ljava/util/Collection;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->B(ILjava/util/Collection;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lx7;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lx7;->e:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x192

    if-eq v2, v3, :cond_0

    return-object p1

    :cond_0
    iget-boolean p0, p0, Lx7;->c:Z

    invoke-static {v0, v1, p0}, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->a(Landroid/content/Context;Landroid/content/Intent;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p1, Ll8;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ll8;-><init>(I)V

    new-instance v0, Lmt;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lmt;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/Task;->g(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
