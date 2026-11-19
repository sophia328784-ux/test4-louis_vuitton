.class final Lcom/perfectcorp/uma/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/uma/m;


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    throw p3
.end method
