.class public final synthetic Lcom/perfectcorp/perfectlib/l3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/Configuration;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/Configuration;Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/l3;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/l3;->c:Lcom/perfectcorp/perfectlib/Configuration;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/l3;->d:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/perfectcorp/perfectlib/l3;->b:I

    const-string v1, "PerfectLib"

    const-class v2, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/l3;->c:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/l3;->d:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/Configuration;->b:Lcom/perfectcorp/perfectlib/Path;

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/Path;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const-class v1, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    const-class v5, Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    const-class v6, Lcom/perfectcorp/perfectlib/Path;

    filled-new-array {v6, v1, v2, v5}, [Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/perfectcorp/perfectlib/ContentPreloader;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const-string v5, "preload"

    invoke-virtual {v2, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/Configuration;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->e:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    filled-new-array {v4, p0, v5, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ltg0;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ltg0;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "preloadPath is empty, ignore preload step"

    const/4 v0, 0x3

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    :goto_1
    return-object v1

    :pswitch_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/l3;->c:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/l3;->d:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    sget-boolean v4, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->t:Z

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v4

    if-eqz v4, :cond_2

    :try_start_0
    const-class v4, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;

    const-string v5, "initDbAndCleanUp"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/Configuration;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    const-string v4, "updateCacheFirstThenUpdateContent"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lcom/perfectcorp/perfectlib/CacheStrategyContentUpdater;

    invoke-virtual {v5, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lgn0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lgn0;-><init>(Lcom/perfectcorp/perfectlib/Configuration;I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;

    invoke-direct {v4, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v2, v1, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/l3;

    invoke-direct {v1, v0, p0, v3}, Lcom/perfectcorp/perfectlib/l3;-><init>(Lcom/perfectcorp/perfectlib/Configuration;Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v0, v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    const-string v0, "[initDbAndCleanUp] failed."

    invoke-static {v1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    const-string p0, "HttpResponseCache doesn\'t be installed. Please refer to the doc of android.net.http.HttpResponseCache."

    invoke-static {v1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/HttpCacheNotInstalledException;

    const-string v0, "HttpResponseCache doesn\'t be installed, please check starting guide."

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/exceptions/HttpCacheNotInstalledException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
