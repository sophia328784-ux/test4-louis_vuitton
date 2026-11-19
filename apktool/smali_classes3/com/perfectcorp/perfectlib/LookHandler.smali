.class public final Lcom/perfectcorp/perfectlib/LookHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/LookHandler$ClearCallback;,
        Lcom/perfectcorp/perfectlib/LookHandler$GetLookInfosWithGuidsCallback;,
        Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateWithGuidsCallback;,
        Lcom/perfectcorp/perfectlib/LookHandler$DeleteLooksCallback;,
        Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;,
        Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;,
        Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;,
        Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;,
        Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateCallback;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/Object;

.field public static volatile h:Lcom/perfectcorp/perfectlib/LookHandler;


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

.field public final b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Lcom/perfectcorp/perfectlib/NailLookHandler;

.field public final f:Lcom/perfectcorp/perfectlib/JewelryLookHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/LookHandler;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/LookHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    new-instance v0, Lcom/perfectcorp/perfectlib/NailLookHandler;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/NailLookHandler;-><init>(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->e:Lcom/perfectcorp/perfectlib/NailLookHandler;

    new-instance v0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/JewelryLookHandler;-><init>(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->f:Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 3

    new-instance v0, Lsa0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsa0;-><init>(Ljava/util/List;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lv40;

    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lv40;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->concatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapIterable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 2

    new-instance v0, Lq6;

    const/16 v1, 0x8

    invoke-direct {v0, p1, p0, p2, v1}, Lq6;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V
    .locals 5

    invoke-static {}, Lcom/perfectcorp/perfectlib/LookHandler;->getInstance()Lcom/perfectcorp/perfectlib/LookHandler;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "LookHandler"

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[cancelOnReleased] add cancelable \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\" to taskDisposables"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    new-instance v1, Let;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[cancelOnReleased] cancelable \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" cancel directly"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->cancel()V

    return-void
.end method

.method public static clearAllCompletable()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;
    .locals 3

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->MAKEUP_LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/CacheCleaner;->e(Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v0

    new-instance v1, Lv40;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lv40;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Le5;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Le5;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;-><init>(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    return-object v0
.end method

.method public static d(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)V
    .locals 5

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->e()Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->m:J

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/NailLookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->e()Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/JewelryLookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static deleteLooksByServerResponse()V
    .locals 11

    const/4 v0, 0x3

    const-string v1, "LookHandler"

    const-string v2, "[deleteLooksByServerResponse] start"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;->b:Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;->a()Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;->b()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v3

    new-instance v4, Lg7;

    const/16 v5, 0x16

    invoke-direct {v4, v5}, Lg7;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sget-object v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/e;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v4

    new-instance v5, Ln40;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Ln40;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;I)V

    invoke-virtual {v4, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->j:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->i:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$f;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Lcom/perfectcorp/perfectlib/y0;

    invoke-direct {v5, v3, v4, v6}, Lcom/perfectcorp/perfectlib/y0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Landroid/database/sqlite/SQLiteDatabase;I)V

    invoke-static {v4, v5}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    :cond_0
    const-string v3, "[deleteLooksByServerResponse] end"

    invoke-static {v0, v1, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v1, "NailLookHandler"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    sget-object v5, Lcom/perfectcorp/perfectlib/hc/preferences/NailLookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v6, "LOOK_LIST_ITEMS"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/perfectcorp/perfectlib/NailLookHandler$2;

    invoke-direct {v8}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>()V

    iget-object v8, v8, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v4, v5, v8}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->j(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v5

    new-instance v8, Lg7;

    const/16 v9, 0x19

    invoke-direct {v8, v9}, Lg7;-><init>(I)V

    invoke-virtual {v5, v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    sget-object v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/e;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v8

    new-instance v9, Ln40;

    const/4 v10, 0x2

    invoke-direct {v9, v5, v10}, Ln40;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;I)V

    invoke-virtual {v8, v9}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v5

    sget-object v8, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->j:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->i:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$f;

    invoke-virtual {v8}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    new-instance v9, Lcom/perfectcorp/perfectlib/y0;

    invoke-direct {v9, v5, v8, v10}, Lcom/perfectcorp/perfectlib/y0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Landroid/database/sqlite/SQLiteDatabase;I)V

    invoke-static {v8, v9}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    :cond_1
    invoke-static {v0, v1, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v1, "JewelryLookHandler"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/preferences/JewelryLookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v2, v6, v7}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/perfectcorp/perfectlib/JewelryLookHandler$2;

    invoke-direct {v5}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>()V

    iget-object v5, v5, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v4, v2, v5}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->j(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v2

    new-instance v4, Lg7;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Lg7;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sget-object v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/e;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v4

    new-instance v5, Ln40;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Ln40;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;I)V

    invoke-virtual {v4, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v2

    sget-object v4, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->j:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->i:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$f;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Lcom/perfectcorp/perfectlib/y0;

    invoke-direct {v5, v2, v4, v6}, Lcom/perfectcorp/perfectlib/y0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Landroid/database/sqlite/SQLiteDatabase;I)V

    invoke-static {v4, v5}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    :cond_2
    invoke-static {v0, v1, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static deleteLooksForFunStickerQualityChanged()V
    .locals 13

    const/4 v0, 0x3

    const-string v1, "LookHandler"

    const-string v2, "[deleteLooksForFunStickerQualityChanged] start"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v2, "GUID"

    const/4 v12, 0x0

    :try_start_0
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v4, "LookInfo"

    const-string v6, "ExtStr3 IS NOT NULL AND ExtStr3 != \'\'"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    invoke-static {v12}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v12}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    invoke-static {v12}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object v2, v3

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[deleteLooksForFunStickerQualityChanged] funStickerLookIds="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->j:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->i:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$f;

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Lcom/perfectcorp/perfectlib/s;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v5}, Lcom/perfectcorp/perfectlib/s;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3, v4}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    const-string v2, "[deleteLooksForFunStickerQualityChanged] end"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_1
    :try_start_2
    const-string v1, "LookInfoDao"

    const-string v2, "getFunStickerLookIds"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v12}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0
.end method

.method public static e(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)J
    .locals 5

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->e()Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    move-result-object v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    const-wide/high16 v3, -0x8000000000000000L

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/NailLookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0, v1, v3, v4}, Lcom/perfectcorp/common/utility/j;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->e()Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/JewelryLookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0, v1, v3, v4}, Lcom/perfectcorp/common/utility/j;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0, v1, v3, v4}, Lcom/perfectcorp/common/utility/j;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/perfectcorp/perfectlib/LookHandler;
    .locals 2

    sget-object v0, Lcom/perfectcorp/perfectlib/LookHandler;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfectcorp/perfectlib/LookHandler;->h:Lcom/perfectcorp/perfectlib/LookHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static init(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V
    .locals 3

    const-string v0, "LookHandler"

    const-string v1, "[init] start"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/LookHandler;->h:Lcom/perfectcorp/perfectlib/LookHandler;

    if-nez v0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/LookHandler;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfectcorp/perfectlib/LookHandler;->h:Lcom/perfectcorp/perfectlib/LookHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/perfectcorp/perfectlib/LookHandler;

    invoke-direct {v1, p0}, Lcom/perfectcorp/perfectlib/LookHandler;-><init>(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/LookHandler;->h:Lcom/perfectcorp/perfectlib/LookHandler;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    const-string p0, "LookHandler"

    const-string v0, "[init] end"

    invoke-static {v2, p0, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static release()V
    .locals 5

    const-string v0, "LookHandler"

    const-string v1, "[release] start"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/LookHandler;->h:Lcom/perfectcorp/perfectlib/LookHandler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/LookHandler;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfectcorp/perfectlib/LookHandler;->h:Lcom/perfectcorp/perfectlib/LookHandler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/perfectcorp/perfectlib/LookHandler;->h:Lcom/perfectcorp/perfectlib/LookHandler;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->dispose()V

    sget-object v1, Lcom/perfectcorp/perfectlib/LookHandler;->h:Lcom/perfectcorp/perfectlib/LookHandler;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/LookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v1, Lcom/perfectcorp/perfectlib/LookHandler;->h:Lcom/perfectcorp/perfectlib/LookHandler;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/LookHandler;->e:Lcom/perfectcorp/perfectlib/NailLookHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "NailLookHandler"

    const-string v4, "[release] start"

    invoke-static {v2, v3, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/NailLookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->dispose()V

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/NailLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const-string v1, "[release] end"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/perfectcorp/perfectlib/LookHandler;->h:Lcom/perfectcorp/perfectlib/LookHandler;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/LookHandler;->f:Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "JewelryLookHandler"

    const-string v4, "[release] start"

    invoke-static {v2, v3, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->dispose()V

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const-string v1, "[release] end"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-object v1, Lcom/perfectcorp/perfectlib/LookHandler;->h:Lcom/perfectcorp/perfectlib/LookHandler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    const-string v0, "LookHandler"

    const-string v1, "[release] end"

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final checkNeedToUpdate(Lcom/perfectcorp/perfectlib/LookType;Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateCallback;)V
    .locals 5

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v1, Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateCallback;

    invoke-static {v1, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateCallback;

    const/4 v1, 0x3

    const-string v2, "LookHandler"

    const-string v3, "[checkNeedToUpdate] start"

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/perfectcorp/perfectlib/LookType;->NAIL:Lcom/perfectcorp/perfectlib/LookType;

    const/4 v4, 0x4

    if-ne v2, p1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->e:Lcom/perfectcorp/perfectlib/NailLookHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "NailLookHandler"

    invoke-static {v1, p1, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p1, La8;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, La8;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v0, Lo40;

    const/4 v1, 0x5

    invoke-direct {v0, p2, v1}, Lo40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateCallback;I)V

    new-instance v1, Lo40;

    invoke-direct {v1, p2, v4}, Lo40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailLookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :cond_0
    sget-object v2, Lcom/perfectcorp/perfectlib/LookType;->JEWELRY:Lcom/perfectcorp/perfectlib/LookType;

    if-ne v2, p1, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->f:Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "JewelryLookHandler"

    invoke-static {v1, p1, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p1, La8;

    invoke-direct {p1, v4}, La8;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v0, Lo40;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lo40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateCallback;I)V

    new-instance v1, Lo40;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lo40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :cond_1
    new-instance p1, La8;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, La8;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v0, Lo40;

    const/4 v2, 0x2

    invoke-direct {v0, p2, v2}, Lo40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateCallback;I)V

    new-instance v2, Lo40;

    invoke-direct {v2, p2, v1}, Lo40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final checkNeedToUpdateWithGuids(Ljava/util/List;Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateWithGuidsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateWithGuidsCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "lookGuids can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateWithGuidsCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateWithGuidsCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[checkNeedToUpdateWithGuids] start, lookGuids.size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "LookHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/LookHandler;->a(Ljava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v2, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lf8;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lf8;-><init>(Ljava/util/concurrent/ConcurrentHashMap;I)V

    invoke-virtual {v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v1, Lna0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, v2}, Lna0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lo2;

    const/4 v2, 0x7

    invoke-direct {v0, p2, v2}, Lo2;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final clearAll(Lcom/perfectcorp/perfectlib/LookType;Lcom/perfectcorp/perfectlib/LookHandler$ClearCallback;)V
    .locals 5

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/LookHandler$ClearCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/LookHandler$ClearCallback;

    const/4 v1, 0x3

    const-string v2, "LookHandler"

    const-string v3, "[clearAll] start"

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/perfectcorp/perfectlib/LookType;->NAIL:Lcom/perfectcorp/perfectlib/LookType;

    const/4 v4, 0x1

    if-ne v2, p1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->e:Lcom/perfectcorp/perfectlib/NailLookHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "NailLookHandler"

    invoke-static {v1, p1, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/NailLookHandler;->clearAllCompletable()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v1, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    new-instance p1, Lxw;

    invoke-direct {p1, p2, v4}, Lxw;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->h(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p1

    new-instance p2, Ln7;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Ln7;-><init>(I)V

    new-instance v0, Ld8;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ld8;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v1, v0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailLookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :cond_0
    sget-object v2, Lcom/perfectcorp/perfectlib/LookType;->JEWELRY:Lcom/perfectcorp/perfectlib/LookType;

    if-ne v2, p1, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->f:Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "JewelryLookHandler"

    invoke-static {v1, p1, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->clearAllCompletable()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v1, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    new-instance p1, Lxw;

    invoke-direct {p1, p2, v4}, Lxw;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->h(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p1

    new-instance p2, Ln7;

    const/16 v0, 0xb

    invoke-direct {p2, v0}, Ln7;-><init>(I)V

    new-instance v0, Ld8;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ld8;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v1, v0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/perfectcorp/perfectlib/LookHandler;->clearAllCompletable()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v1, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lxw;

    invoke-direct {p1, v0, v4}, Lxw;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->h(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p1

    new-instance p2, Ln7;

    const/16 v0, 0xd

    invoke-direct {p2, v0}, Ln7;-><init>(I)V

    new-instance v0, Ld8;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ld8;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v1, v0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final deleteLooks(Ljava/util/List;Lcom/perfectcorp/perfectlib/LookHandler$DeleteLooksCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/LookHandler$DeleteLooksCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "lookGuids can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/LookHandler$DeleteLooksCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/LookHandler$DeleteLooksCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[deleteLooks] start, lookGuids.size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "LookHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/perfectlib/g1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/perfectlib/g1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;-><init>(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lxw;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lxw;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->h(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p1

    new-instance p2, Ln7;

    const/16 v0, 0xe

    invoke-direct {p2, v0}, Ln7;-><init>(I)V

    new-instance v0, Ld8;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ld8;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v1, v0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final download(Lcom/perfectcorp/perfectlib/LookInfo;Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 6

    const-string v0, "lookInfo can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[download] start, lookInfo.getGuid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/LookInfo;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "LookHandler"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v3, "download"

    invoke-direct {v1, v3}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/LookHandler;->c(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/LookInfo;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v3

    new-instance v4, Ly81;

    const/16 v5, 0xa

    invoke-direct {v4, p0, v1, p2, v5}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p2, v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v3, Lcom/perfectcorp/perfectlib/a0;

    invoke-direct {v3, p0, p1, v2}, Lcom/perfectcorp/perfectlib/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v2, p2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p2

    new-instance v2, Lma0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lma0;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;I)V

    new-instance v4, Lna0;

    invoke-direct {v4, p1, v0, v3}, Lna0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v2, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-object v1
.end method

.method public final downloadLooks(Ljava/util/List;Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;",
            ")",
            "Lcom/perfectcorp/perfectlib/Cancelable;"
        }
    .end annotation

    const-string v0, "lookGuids can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[downloadLooks] start, lookGuids.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "LookHandler"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Look GUID list is empty."

    invoke-static {v2, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Let;

    const/16 p1, 0x14

    invoke-direct {p0, v0, p1}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v3, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v1, "downloadLooks"

    invoke-direct {v3, v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/LookHandler;->c(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v1, Lpa0;

    move-object v2, p0

    move-object v8, v3

    move-object v9, v7

    move-object v3, p2

    move-object v7, v5

    move-object v5, p1

    invoke-direct/range {v1 .. v9}, Lpa0;-><init>(Lcom/perfectcorp/perfectlib/LookHandler;Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;ILjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/ConcurrentHashMap;)V

    move-object p0, v6

    move-object v5, v7

    move-object v7, v9

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lqa0;

    move-object v6, v7

    move v7, v4

    move-object v4, v6

    move-object v6, v5

    move-object v5, v3

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lqa0;-><init>(Lcom/perfectcorp/perfectlib/LookHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    move v8, v7

    move-object v7, v4

    move v4, v8

    move-object v8, v3

    move-object v3, v5

    move-object v5, v6

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance p2, Ld20;

    const/4 v1, 0x7

    invoke-direct {p2, v1}, Ld20;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance p2, Ld20;

    const/16 v1, 0x8

    invoke-direct {p2, v1}, Ld20;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/perfectlib/f1;

    move v6, v4

    move-object v4, v3

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/perfectcorp/perfectlib/f1;-><init>(Lcom/perfectcorp/perfectlib/LookHandler;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance p2, Lra0;

    invoke-direct {p2, p0, v0, v7}, Lra0;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/ConcurrentHashMap;)V

    new-instance v1, Lra0;

    invoke-direct {v1, v0, p0, v7}, Lra0;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p0, p2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p1, v2, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-object v8
.end method

.method public final f(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 4

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->F(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->g:Ljava/lang/String;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/LookHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v1, Lcom/perfectcorp/perfectlib/LookInfo;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/perfectcorp/perfectlib/LookInfo;-><init>(Ljava/util/Map;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    :goto_0
    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->g:Ljava/lang/String;

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->f:Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v1, Lcom/perfectcorp/perfectlib/LookInfo;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/perfectcorp/perfectlib/LookInfo;-><init>(Ljava/util/Map;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->e:Lcom/perfectcorp/perfectlib/NailLookHandler;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/NailLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v1, Lcom/perfectcorp/perfectlib/LookInfo;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/perfectcorp/perfectlib/LookInfo;-><init>(Ljava/util/Map;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getList(Lcom/perfectcorp/perfectlib/LookType;Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;)V
    .locals 10

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    const-class v2, Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;

    invoke-static {v2, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;

    const/4 v2, 0x3

    const-string v3, "LookHandler"

    const-string v4, "[getList] start"

    invoke-static {v2, v3, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/perfectcorp/perfectlib/LookType;->NAIL:Lcom/perfectcorp/perfectlib/LookType;

    const/4 v5, 0x5

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x2

    if-ne v3, p1, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->e:Lcom/perfectcorp/perfectlib/NailLookHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "NailLookHandler"

    invoke-static {v2, p1, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/NailLookHandler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p0, Lp40;

    invoke-direct {p0, p2, v8}, Lp40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Lcom/perfectcorp/perfectlib/i;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/perfectlib/i;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v2, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Llc0;

    const/16 v1, 0x11

    invoke-direct {p1, v1}, Llc0;-><init>(I)V

    invoke-virtual {v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v1, Ld20;

    invoke-direct {v1, v7}, Ld20;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v1, Ld20;

    invoke-direct {v1, v6}, Ld20;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/perfectlib/z0;

    invoke-direct {v1, p0, v8}, Lcom/perfectcorp/perfectlib/z0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v1, Lq40;

    invoke-direct {v1, p2, v0}, Lq40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;I)V

    new-instance v0, Lq40;

    invoke-direct {v0, p2, v5}, Lq40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailLookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :cond_1
    sget-object v3, Lcom/perfectcorp/perfectlib/LookType;->JEWELRY:Lcom/perfectcorp/perfectlib/LookType;

    const/4 v9, 0x1

    if-ne v3, p1, :cond_3

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->f:Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "JewelryLookHandler"

    invoke-static {v2, p1, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance p0, Lp40;

    invoke-direct {p0, p2, v0}, Lp40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    new-instance p1, Lcom/perfectcorp/perfectlib/i;

    invoke-direct {p1, p0, v9}, Lcom/perfectcorp/perfectlib/i;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v2, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Ld20;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Ld20;-><init>(I)V

    invoke-virtual {v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v1, Ld20;

    invoke-direct {v1, v7}, Ld20;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v1, Ld20;

    invoke-direct {v1, v6}, Ld20;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/perfectlib/z0;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/perfectlib/z0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v1, Lq40;

    invoke-direct {v1, p2, v0}, Lq40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;I)V

    new-instance v0, Lq40;

    invoke-direct {v0, p2, v9}, Lq40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :cond_3
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/LookHandler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p0, Lp40;

    invoke-direct {p0, p2, v9}, Lp40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    new-instance p1, La8;

    invoke-direct {p1, v5}, La8;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v3, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lv40;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Lv40;-><init>(I)V

    invoke-virtual {v3, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Ld20;

    invoke-direct {v0, v7}, Ld20;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Ld20;

    invoke-direct {v0, v6}, Ld20;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lp7;

    invoke-direct {v0, p0, v1, v9}, Lp7;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v0, Lq40;

    invoke-direct {v0, p2, v8}, Lq40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;I)V

    new-instance v1, Lq40;

    invoke-direct {v1, p2, v2}, Lq40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final getLookInfosWithGuids(Ljava/util/List;Lcom/perfectcorp/perfectlib/LookHandler$GetLookInfosWithGuidsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/LookHandler$GetLookInfosWithGuidsCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "lookGuids can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/LookHandler$GetLookInfosWithGuidsCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/LookHandler$GetLookInfosWithGuidsCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getLookInfosWithGuids] start, lookGuids.size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "LookHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lfw;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lfw;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lv40;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lv40;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->onErrorReturn(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Ld20;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ld20;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lv40;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lv40;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v0, Loa0;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Loa0;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$GetLookInfosWithGuidsCallback;I)V

    new-instance v1, Loa0;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Loa0;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$GetLookInfosWithGuidsCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final syncServer(Lcom/perfectcorp/perfectlib/LookType;Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 12

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v1, Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;

    invoke-static {v1, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;

    const/4 v1, 0x3

    const-string v2, "LookHandler"

    const-string v3, "[syncServer] start"

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/perfectcorp/perfectlib/LookType;->NAIL:Lcom/perfectcorp/perfectlib/LookType;

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "\" to taskDisposables"

    const-string v10, "[cancelOnReleased] add cancelable \""

    const-string v11, "syncServer"

    if-ne v2, p1, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->e:Lcom/perfectcorp/perfectlib/NailLookHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "NailLookHandler"

    invoke-static {v1, p1, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct {v0, v11}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/NailLookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    new-instance v1, Let;

    invoke-direct {v1, v0, v6}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/NailLookHandler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/Cancelable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/Cancelable;->cancel()V

    :cond_0
    new-instance v1, Lcom/perfectcorp/perfectlib/a1;

    invoke-direct {v1, v0, v8}, Lcom/perfectcorp/perfectlib/a1;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v1

    new-instance v2, Ln7;

    invoke-direct {v2, v6}, Ln7;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/z;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v0, v3}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;

    invoke-direct {v2, v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/c3;

    invoke-direct {v1, p0, v0, v7}, Lcom/perfectcorp/perfectlib/c3;-><init>(Lcom/perfectcorp/perfectlib/NailLookHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/c3;

    invoke-direct {v2, p0, v0, v8}, Lcom/perfectcorp/perfectlib/c3;-><init>(Lcom/perfectcorp/perfectlib/NailLookHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v3, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/e0;

    invoke-direct {v1, p0, v0, v5}, Lcom/perfectcorp/perfectlib/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/g;

    invoke-direct {p0, v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/g;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v1, Lm40;

    invoke-direct {v1, p2, v4}, Lm40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;I)V

    new-instance v2, Lm40;

    const/4 v3, 0x5

    invoke-direct {v2, p2, v3}, Lm40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-object v0

    :cond_1
    sget-object v2, Lcom/perfectcorp/perfectlib/LookType;->JEWELRY:Lcom/perfectcorp/perfectlib/LookType;

    if-ne v2, p1, :cond_3

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->f:Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "JewelryLookHandler"

    invoke-static {v1, p1, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct {v0, v11}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    new-instance v1, Let;

    invoke-direct {v1, v0, v6}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/Cancelable;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/Cancelable;->cancel()V

    :cond_2
    new-instance v1, Lcom/perfectcorp/perfectlib/a1;

    invoke-direct {v1, v0, v7}, Lcom/perfectcorp/perfectlib/a1;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v1

    new-instance v2, Ln7;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ln7;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/z;

    invoke-direct {v2, p0, v0, v4}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;

    invoke-direct {v2, v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/b1;

    invoke-direct {v1, p0, v0, v7}, Lcom/perfectcorp/perfectlib/b1;-><init>(Lcom/perfectcorp/perfectlib/JewelryLookHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/b1;

    invoke-direct {v2, p0, v0, v8}, Lcom/perfectcorp/perfectlib/b1;-><init>(Lcom/perfectcorp/perfectlib/JewelryLookHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v3, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/e0;

    invoke-direct {v1, p0, v0, v8}, Lcom/perfectcorp/perfectlib/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/g;

    invoke-direct {p0, v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/g;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v1, Lm40;

    invoke-direct {v1, p2, v8}, Lm40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;I)V

    new-instance v2, Lm40;

    invoke-direct {v2, p2, v7}, Lm40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-object v0

    :cond_3
    new-instance p1, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct {p1, v11}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/LookHandler;->c(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/Cancelable;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/perfectcorp/perfectlib/Cancelable;->cancel()V

    :cond_4
    new-instance v0, Lva0;

    invoke-direct {v0, p1, v7}, Lva0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v0

    new-instance v2, Ln7;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ln7;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v0

    new-instance v2, Lva0;

    invoke-direct {v2, p1, v8}, Lva0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;

    invoke-direct {v2, v3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v0, Lka0;

    invoke-direct {v0, p0, p1, v8}, Lka0;-><init>(Lcom/perfectcorp/perfectlib/LookHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    new-instance v2, Lka0;

    invoke-direct {v2, p0, p1, v7}, Lka0;-><init>(Lcom/perfectcorp/perfectlib/LookHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v3, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance v0, Lla0;

    invoke-direct {v0, p0, p1, v7}, Lla0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/g;

    invoke-direct {v2, v3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/g;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v2, Lm40;

    invoke-direct {v2, p2, v5}, Lm40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;I)V

    new-instance v3, Lm40;

    invoke-direct {v3, p2, v1}, Lm40;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$SyncServerCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-object p1
.end method
