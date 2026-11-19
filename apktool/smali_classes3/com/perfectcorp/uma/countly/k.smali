.class final Lcom/perfectcorp/uma/countly/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/perfectcorp/uma/countly/d;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/uma/countly/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/uma/countly/k;->b:Lcom/perfectcorp/uma/countly/d;

    iput p2, p0, Lcom/perfectcorp/uma/countly/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/k;->b:Lcom/perfectcorp/uma/countly/d;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    iget v1, p0, Lcom/perfectcorp/uma/countly/k;->a:I

    invoke-virtual {v0}, Lcom/perfectcorp/uma/countly/b;->d()V

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/perfectcorp/uma/countly/u;

    invoke-direct {v3}, Lcom/perfectcorp/uma/countly/u;-><init>()V

    invoke-virtual {v0, v3}, Lcom/perfectcorp/uma/countly/b;->a(Lcom/perfectcorp/uma/countly/u;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&session_duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/perfectcorp/uma/countly/b;->a:Lcom/perfectcorp/uma/countly/p;

    invoke-virtual {v2, v1}, Lcom/perfectcorp/uma/countly/p;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/perfectcorp/uma/countly/b;->e()V

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/uma/countly/k;->b:Lcom/perfectcorp/uma/countly/d;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/d;->d:Lcom/perfectcorp/uma/countly/s;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/s;->a:Lcom/perfectcorp/uma/countly/p;

    invoke-virtual {v0}, Lcom/perfectcorp/uma/countly/p;->a()Lcom/perfectcorp/uma/countly/m;

    move-result-object v0

    const-string v1, "EVENT_TABLE"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/uma/countly/m;->e(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/uma/countly/k;->b:Lcom/perfectcorp/uma/countly/d;

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d;->g()V

    :cond_1
    return-void
.end method
