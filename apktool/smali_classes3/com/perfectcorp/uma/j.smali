.class final Lcom/perfectcorp/uma/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/uma/p;


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 16
    sget-object p0, Lcom/perfectcorp/uma/countly/d;->i:Lcom/perfectcorp/uma/countly/d$a;

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d$a;->a()Lcom/perfectcorp/uma/countly/d;

    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Lcom/perfectcorp/uma/countly/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    sget-object p0, Lcom/perfectcorp/uma/countly/d;->i:Lcom/perfectcorp/uma/countly/d$a;

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d$a;->a()Lcom/perfectcorp/uma/countly/d;

    move-result-object p0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/uma/countly/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;ID)V
    .locals 6

    sget-object p0, Lcom/perfectcorp/uma/countly/d;->i:Lcom/perfectcorp/uma/countly/d$a;

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d$a;->a()Lcom/perfectcorp/uma/countly/d;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/perfectcorp/uma/countly/d;->e(Ljava/lang/String;Ljava/util/Map;ID)V

    return-void
.end method

.method public final a_()V
    .locals 0

    sget-object p0, Lcom/perfectcorp/uma/countly/d;->i:Lcom/perfectcorp/uma/countly/d$a;

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d$a;->a()Lcom/perfectcorp/uma/countly/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d;->a()V

    return-void
.end method

.method public final b()V
    .locals 0

    sget-object p0, Lcom/perfectcorp/uma/countly/d;->i:Lcom/perfectcorp/uma/countly/d$a;

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d$a;->a()Lcom/perfectcorp/uma/countly/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d;->f()V

    return-void
.end method

.method public final c()V
    .locals 0

    sget-object p0, Lcom/perfectcorp/uma/countly/d;->i:Lcom/perfectcorp/uma/countly/d$a;

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d$a;->a()Lcom/perfectcorp/uma/countly/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d;->g()V

    return-void
.end method
