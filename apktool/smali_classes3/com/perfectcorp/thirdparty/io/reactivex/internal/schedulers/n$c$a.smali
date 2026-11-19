.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;

.field private synthetic b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;->e:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;->g:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
