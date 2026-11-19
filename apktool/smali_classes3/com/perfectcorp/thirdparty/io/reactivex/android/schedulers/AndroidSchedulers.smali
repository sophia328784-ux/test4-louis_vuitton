.class public abstract Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/a;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/a;-><init>()V

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Scheduler Callable returned null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->a:Ljava/lang/Throwable;

    throw v0
.end method

.method public static a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "scheduler == null"

    invoke-static {v0}, Lr81;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
