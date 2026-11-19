.class final Lcom/perfectcorp/uma/countly/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/perfectcorp/uma/countly/d;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/uma/countly/d;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/uma/countly/l;->c:Lcom/perfectcorp/uma/countly/d;

    iput p2, p0, Lcom/perfectcorp/uma/countly/l;->a:I

    iput-object p3, p0, Lcom/perfectcorp/uma/countly/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/l;->c:Lcom/perfectcorp/uma/countly/d;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    iget v1, p0, Lcom/perfectcorp/uma/countly/l;->a:I

    iget-object v2, p0, Lcom/perfectcorp/uma/countly/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/uma/countly/b;->b(ILjava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/uma/countly/d;->g:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/l;->c:Lcom/perfectcorp/uma/countly/d;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/b;->e:Lcom/perfectcorp/uma/internal/b;

    invoke-interface {v0}, Lcom/perfectcorp/uma/internal/b;->c()Ljava/lang/String;

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/l;->c:Lcom/perfectcorp/uma/countly/d;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/b;->e:Lcom/perfectcorp/uma/internal/b;

    invoke-interface {v0}, Lcom/perfectcorp/uma/internal/b;->d()Ljava/lang/String;

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/l;->c:Lcom/perfectcorp/uma/countly/d;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/d;->d:Lcom/perfectcorp/uma/countly/s;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/s;->a:Lcom/perfectcorp/uma/countly/p;

    invoke-virtual {v0}, Lcom/perfectcorp/uma/countly/p;->a()Lcom/perfectcorp/uma/countly/m;

    move-result-object v0

    const-string v1, "EVENT_TABLE"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/uma/countly/m;->e(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/uma/countly/l;->c:Lcom/perfectcorp/uma/countly/d;

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d;->g()V

    :cond_0
    return-void
.end method
