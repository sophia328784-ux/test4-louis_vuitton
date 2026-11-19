.class final Lcom/perfectcorp/uma/q;
.super Lcom/perfectcorp/uma/l;


# virtual methods
.method public final a()Lcom/perfectcorp/uma/p;
    .locals 0

    sget-boolean p0, Lcom/perfectcorp/uma/b;->d:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/perfectcorp/uma/p;->w0:Lcom/perfectcorp/uma/p$a;

    return-object p0

    :cond_0
    const-string p0, "Already terminated! onTerminate() was called."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
