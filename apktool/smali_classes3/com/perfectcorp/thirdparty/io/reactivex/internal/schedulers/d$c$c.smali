.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

.field private final b:Ljava/lang/Runnable;

.field private synthetic c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$c;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c$c;->b:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$c;->a(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void
.end method
