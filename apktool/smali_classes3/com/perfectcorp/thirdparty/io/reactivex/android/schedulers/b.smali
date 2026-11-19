.class final Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$b;,
        Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b;->a:Landroid/os/Handler;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$a;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 1

    if-eqz p4, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$b;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b;->a:Landroid/os/Handler;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$b;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-object v0

    :cond_0
    const-string p0, "unit == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
