.class Lcom/squareup/moshi/AdapterMethodsFactory$2;
.super Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;
.source "SourceFile"


# virtual methods
.method public final d(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->f:[Lcom/squareup/moshi/JsonAdapter;

    array-length v1, v0

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 p1, 0x1

    aput-object p2, v1, p1

    array-length p1, v0

    invoke-static {v0, v3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    iget-object p1, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->d:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->c:Lcom/sightcall/universal/agent/Usecase$MultipleFormatsMultipartyAdapter;

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, La61;->h()V

    return-void
.end method
