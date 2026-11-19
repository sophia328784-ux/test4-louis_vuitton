.class final Lcom/perfectcorp/uma/countly/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/perfectcorp/uma/countly/d;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/uma/countly/d;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/uma/countly/j;->a:Lcom/perfectcorp/uma/countly/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/j;->a:Lcom/perfectcorp/uma/countly/d;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    invoke-virtual {v0}, Lcom/perfectcorp/uma/countly/b;->d()V

    new-instance v1, Lcom/perfectcorp/uma/countly/u;

    invoke-direct {v1}, Lcom/perfectcorp/uma/countly/u;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/uma/countly/b;->a(Lcom/perfectcorp/uma/countly/u;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&sdk_version=2.0&begin_session=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/perfectcorp/uma/countly/b;->e:Lcom/perfectcorp/uma/internal/b;

    iget-wide v4, v1, Lcom/perfectcorp/uma/countly/u;->a:J

    invoke-interface {v3, v4, v5}, Lcom/perfectcorp/uma/internal/b;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/perfectcorp/uma/countly/b;->a:Lcom/perfectcorp/uma/countly/p;

    invoke-virtual {v2, v1}, Lcom/perfectcorp/uma/countly/p;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/perfectcorp/uma/countly/b;->e()V

    sget-object v0, Lcom/perfectcorp/uma/countly/d;->g:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/j;->a:Lcom/perfectcorp/uma/countly/d;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/b;->e:Lcom/perfectcorp/uma/internal/b;

    invoke-interface {v0}, Lcom/perfectcorp/uma/internal/b;->c()Ljava/lang/String;

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/j;->a:Lcom/perfectcorp/uma/countly/d;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/b;->e:Lcom/perfectcorp/uma/internal/b;

    invoke-interface {v0}, Lcom/perfectcorp/uma/internal/b;->d()Ljava/lang/String;

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/j;->a:Lcom/perfectcorp/uma/countly/d;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/d;->d:Lcom/perfectcorp/uma/countly/s;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/s;->a:Lcom/perfectcorp/uma/countly/p;

    invoke-virtual {v0}, Lcom/perfectcorp/uma/countly/p;->a()Lcom/perfectcorp/uma/countly/m;

    move-result-object v0

    const-string v1, "EVENT_TABLE"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/uma/countly/m;->e(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/uma/countly/j;->a:Lcom/perfectcorp/uma/countly/d;

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d;->g()V

    :cond_0
    return-void
.end method
