.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

.field public final synthetic c:Ljava/util/Collection;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public final synthetic e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;Ljava/util/Collection;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;->c:Ljava/util/Collection;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;->f:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;->c:Ljava/util/Collection;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c0;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-direct {v1, v3, v4, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/q;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;->f:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-direct {v1, v2, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/q;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/r;

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/r;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v3, v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {}, Lcom/perfectcorp/perfectlib/LookHandler;->getInstance()Lcom/perfectcorp/perfectlib/LookHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-object v2

    :cond_0
    const-string p0, "LookHandler is null. SDK might be released."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
