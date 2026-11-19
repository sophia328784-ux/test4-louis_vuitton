.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/ae;
.super Lcom/perfectcorp/thirdparty/com/google/gson/internal/aa;


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot allocate "

    invoke-static {p1, v0}, Lpq0;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
