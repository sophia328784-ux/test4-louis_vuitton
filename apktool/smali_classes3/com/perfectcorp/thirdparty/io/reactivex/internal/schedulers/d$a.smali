.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$b;

.field private synthetic b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$b;

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void
.end method
