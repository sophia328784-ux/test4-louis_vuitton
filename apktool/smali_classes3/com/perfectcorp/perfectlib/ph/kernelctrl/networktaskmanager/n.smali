.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 13

    iget v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;->a:I

    const-string v1, "DownloadMakeupHandle"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    check-cast p1, Ljava/io/File;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    invoke-static {v1, v2, v0, v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->d(Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    move-result-object v0

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->k:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    :cond_0
    iget-object p0, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->b:Ljava/lang/Throwable;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->f(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->t:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->e:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v1, v2, v3, v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;

    iget-object p0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b:Ljava/io/File;

    invoke-direct {v1, p1, v0, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;-><init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Ljava/util/List;Ljava/io/File;)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    goto/16 :goto_3

    :cond_2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->e:Ljava/lang/String;

    new-instance v5, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    invoke-direct {v5}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;-><init>()V

    iput-object v0, v5, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->a:Ljava/lang/String;

    iget-object v6, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->j:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->a:Ljava/lang/String;

    iput-object v6, v5, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->c:Ljava/lang/String;

    sget-object v6, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    iput-object v6, v5, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->n:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v6, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->FILE:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    const/4 v7, 0x3

    const-string v8, "LookHandler is null. SDK might be released."

    if-ne v5, v6, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "downloadLookThumbnail url: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6, v7, v1}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    new-instance v6, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

    invoke-direct {v9, v1}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v9, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-object v10, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->o:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1, v9, v10}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->a(Ljava/util/Collection;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/p;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v9}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/q;

    invoke-direct {v9, v5, v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/q;-><init>(Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;)V

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/r;

    invoke-direct {v5, v6, v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/r;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;I)V

    invoke-virtual {v1, v9, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object v1

    sget-object v5, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {}, Lcom/perfectcorp/perfectlib/LookHandler;->getInstance()Lcom/perfectcorp/perfectlib/LookHandler;

    move-result-object v5

    if-eqz v5, :cond_3

    check-cast v1, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v5, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    goto :goto_1

    :cond_3
    invoke-static {v8}, Lmd;->k(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    :goto_1
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->n:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-virtual {p0, p1, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->g(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;

    move-result-object v1

    new-instance v5, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v9, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->w:Ljava/lang/String;

    iget-object v10, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->y:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;

    iput v2, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->c:I

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->y:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;

    iget-object v8, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v8, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->g:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iget-boolean v9, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->s:Z

    if-eqz v9, :cond_5

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->a()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->a(D)V

    :cond_5
    invoke-virtual {v5, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->set(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$a;

    new-instance v11, Lcom/perfectcorp/common/network/DownloadKey$Guid;

    invoke-direct {v11, v9}, Lcom/perfectcorp/common/network/DownloadKey$Guid;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11, v9}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$a;-><init>(Lcom/perfectcorp/common/network/DownloadTask$Key;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v9, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$a;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {v10}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$a;->a()Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$b;

    move-result-object v9

    invoke-interface {v9}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$b;->a()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;

    move-result-object v9

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/s;

    invoke-direct {v10, p0, v5, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/s;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V

    new-instance v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/r;

    invoke-direct {v11, v5, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/r;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;I)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v12, v11, v10}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v9, v12}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    sget-object v9, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {}, Lcom/perfectcorp/perfectlib/LookHandler;->getInstance()Lcom/perfectcorp/perfectlib/LookHandler;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v3, v9, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v3, v12}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    :goto_2
    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->n:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;

    invoke-virtual {p0, p1, v3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->h(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;

    const/4 v9, 0x4

    invoke-direct {v8, v1, v9}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;-><init>(Ljava/lang/Object;I)V

    sget-object v1, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v3, v8, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->i(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-array v3, v7, [Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    aput-object v6, v3, v4

    aput-object v5, v3, v2

    const/4 v2, 0x2

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->e([Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/t;

    invoke-direct {v2, p0, p1, v0, v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/t;-><init>(Ljava/lang/Object;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/perfectcorp/common/guava/FluentFuture;->b(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object v3

    :goto_3
    return-object v3

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->q:Ljava/util/Set;

    if-eqz p0, :cond_a

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->t:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->t:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->a:Ljava/lang/String;

    invoke-interface {p0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "preload look lack of download component item id="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " look guid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    goto :goto_4

    :cond_9
    if-eqz v2, :cond_b

    :cond_a
    :goto_5
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    goto :goto_6

    :cond_b
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/IdSystemDataNotFoundException;

    iget-object p1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preload look failed, guid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/exceptions/IdSystemDataNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_6
    return-object p0

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
