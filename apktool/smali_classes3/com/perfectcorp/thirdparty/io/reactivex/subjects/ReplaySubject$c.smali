.class final Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;
.super Ljava/util/concurrent/atomic/AtomicInteger;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;

.field public d:Ljava/lang/Object;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;->e:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->e(Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;)V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;->e:Z

    return p0
.end method
