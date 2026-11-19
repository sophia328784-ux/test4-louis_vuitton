.class abstract Lcom/perfectcorp/perfectlib/ProductMappingUtility;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapper;,
        Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapperInterface;
    }
.end annotation


# static fields
.field public static final a:Ld8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld8;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ld8;-><init>(I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->a:Ld8;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;
    .locals 2

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lno0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lno0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->a:Ld8;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lbq0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lbq0;-><init>(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lbq0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v1, v0}, Lbq0;-><init>(Ljava/lang/String;ZI)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    new-instance v0, Lho0;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lho0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    move-object p0, v0

    :goto_0
    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p1
.end method

.method public static c(Ljava/util/List;)Ljava/util/List;
    .locals 7

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_SMOOTHER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v3, v4, :cond_0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v1, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    :try_start_0
    new-instance v5, Lo7;

    const/4 v6, 0x7

    invoke-direct {v5, v3, v4, v6}, Lo7;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v5}, Lo7;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->a(Lcom/perfectcorp/perfectlib/EffectId;)Lcom/perfectcorp/perfectlib/EffectId$Builder;

    move-result-object v1

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "perfectEffect="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProductMappingUtility"

    invoke-static {v3, v2, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
