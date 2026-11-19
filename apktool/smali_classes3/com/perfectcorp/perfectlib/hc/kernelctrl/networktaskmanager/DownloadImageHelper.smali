.class public abstract Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a(Ljava/util/Collection;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v1, Lcv;

    invoke-direct {v1, p2, p1, v0}, Lcv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Lms;

    const/4 p2, 0x1

    invoke-direct {p1, v0, p2}, Lms;-><init>(II)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p2, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->URL:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p0, v0, v1, p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "append file scheme failed with path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadImageHelper"

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object p0

    :cond_3
    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
