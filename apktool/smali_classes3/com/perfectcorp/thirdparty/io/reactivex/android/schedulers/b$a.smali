.class final Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$a;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final g:Landroid/os/Handler;

.field public volatile h:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$a;->g:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 2

    if-eqz p4, :cond_2

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$a;->h:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$b;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$a;->g:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$b;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$a;->g:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$a;->g:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-boolean p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$a;->h:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$a;->g:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    const-string p0, "unit == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$a;->h:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$a;->g:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b$a;->h:Z

    return p0
.end method
