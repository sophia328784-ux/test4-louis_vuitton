.class public final Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "com/squareup/wire/ProtoAdapterKt$commonStructValue$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "",
        "wire-runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/squareup/wire/ProtoReader32;->h()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    :goto_1
    invoke-interface {p1}, Lcom/squareup/wire/ProtoReader32;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    invoke-interface {p1}, Lcom/squareup/wire/ProtoReader32;->e()V

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->r:Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;

    invoke-virtual {v1, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->q:Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;

    invoke-virtual {v1, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    invoke-virtual {v1, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/squareup/wire/ProtoReader32;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/DoubleProtoAdapter;

    invoke-virtual {v1, p1}, Lcom/squareup/wire/DoubleProtoAdapter;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :pswitch_5
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->s:Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;

    invoke-virtual {v1, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lcom/squareup/wire/ProtoReader32;->l(I)Lokio/ByteString;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    move-result-wide v0

    const/4 p0, 0x0

    :goto_0
    move-object v2, p0

    :goto_1
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->g()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->p()V

    goto :goto_1

    :pswitch_0
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->r:Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->q:Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_3
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_4
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/DoubleProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/DoubleProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_5
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->s:Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->e(J)Lokio/ByteString;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->s:Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    return-void

    :cond_0
    instance-of p0, p2, Ljava/lang/Number;

    if-eqz p0, :cond_1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    sget-object p2, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/DoubleProtoAdapter;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    return-void

    :cond_1
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    return-void

    :cond_2
    instance-of p0, p2, Ljava/lang/Boolean;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    return-void

    :cond_3
    instance-of p0, p2, Ljava/util/Map;

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    check-cast p2, Ljava/util/Map;

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->q:Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;

    invoke-virtual {v0, p1, p0, p2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    return-void

    :cond_4
    instance-of p0, p2, Ljava/util/List;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->r:Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    return-void

    :cond_5
    const-string p0, "unexpected struct value: "

    invoke-static {p2, p0}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->s:Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void

    :cond_0
    instance-of p0, p2, Ljava/lang/Number;

    if-eqz p0, :cond_1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    sget-object p2, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/DoubleProtoAdapter;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void

    :cond_1
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void

    :cond_2
    instance-of p0, p2, Ljava/lang/Boolean;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void

    :cond_3
    instance-of p0, p2, Ljava/util/Map;

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    check-cast p2, Ljava/util/Map;

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->q:Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;

    invoke-virtual {v0, p1, p0, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void

    :cond_4
    instance-of p0, p2, Ljava/util/List;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->r:Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void

    :cond_5
    const-string p0, "unexpected struct value: "

    invoke-static {p2, p0}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->a:Lcom/squareup/wire/FieldEncoding;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/squareup/wire/ProtoWriter;->b:Lcom/squareup/wire/ProtoWriter$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 p2, p2, 0x3

    invoke-virtual {v0}, Lcom/squareup/wire/FieldEncoding;->a()I

    move-result v0

    or-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->b(I)V

    invoke-virtual {p0, p3}, Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;->h(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->b(I)V

    invoke-virtual {p0, p1, p3}, Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;->d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public final g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lcom/squareup/wire/ReverseProtoWriter;->b()I

    move-result v0

    invoke-virtual {p0, p1, p3}, Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;->e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/squareup/wire/ReverseProtoWriter;->b()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/squareup/wire/ReverseProtoWriter;->g(I)V

    iget-object p0, p0, Lcom/squareup/wire/ProtoAdapter;->a:Lcom/squareup/wire/FieldEncoding;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/squareup/wire/ProtoWriter;->b:Lcom/squareup/wire/ProtoWriter$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 p2, p2, 0x3

    invoke-virtual {p0}, Lcom/squareup/wire/FieldEncoding;->a()I

    move-result p0

    or-int/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->g(I)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->s:Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->i(ILjava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    sget-object p1, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/DoubleProtoAdapter;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    return p0

    :cond_2
    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    instance-of p0, p1, Ljava/util/Map;

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    check-cast p1, Ljava/util/Map;

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->q:Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;

    invoke-virtual {v0, p0, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    return p0

    :cond_4
    instance-of p0, p1, Ljava/util/List;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->r:Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    return p0

    :cond_5
    const-string p0, "unexpected struct value: "

    invoke-static {p1, p0}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final i(ILjava/lang/Object;)I
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;->h(Ljava/lang/Object;)I

    move-result p0

    sget-object p2, Lcom/squareup/wire/ProtoWriter;->b:Lcom/squareup/wire/ProtoWriter$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p2}, Lcom/squareup/wire/FieldEncoding;->a()I

    move-result p2

    or-int/2addr p1, p2

    invoke-static {p1}, Lcom/squareup/wire/ProtoWriter$Companion;->a(I)I

    move-result p1

    invoke-static {p0}, Lcom/squareup/wire/ProtoWriter$Companion;->a(I)I

    move-result p2

    add-int/2addr p2, p1

    add-int/2addr p2, p0

    return p2

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    return p0
.end method
