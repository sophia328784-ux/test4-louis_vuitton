.class public final LLogMessage$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLogMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "LLogMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "LogMessage$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "LLogMessage;",
        "com.dynatrace.agent_release"
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
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    move-result-wide v0

    const-string p0, ""

    const/4 v2, 0x0

    move-object v4, p0

    move-object v8, v4

    move-object v9, v8

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->g()I

    move-result p0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoReader;->m(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object p0

    move-object v9, p0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object p0

    move-object v8, p0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()I

    move-result p0

    move v7, p0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()I

    move-result p0

    move v6, p0

    goto :goto_0

    :pswitch_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()I

    move-result p0

    move v5, p0

    goto :goto_0

    :pswitch_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->e(J)Lokio/ByteString;

    move-result-object v10

    new-instance v3, LLogMessage;

    invoke-direct/range {v3 .. v10}, LLogMessage;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v3

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
    .locals 6

    check-cast p2, LLogMessage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p2, LLogMessage;->e:Ljava/lang/String;

    iget-object v0, p2, LLogMessage;->j:Ljava/lang/String;

    iget-object v1, p2, LLogMessage;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v4, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_0
    iget p0, p2, LLogMessage;->f:I

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    if-eqz p0, :cond_1

    const/4 v5, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p1, v5, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_1
    iget p0, p2, LLogMessage;->g:I

    if-eqz p0, :cond_2

    const/4 v5, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p1, v5, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_2
    iget p0, p2, LLogMessage;->h:I

    if-eqz p0, :cond_3

    const/4 v5, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p1, v5, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x5

    invoke-virtual {v4, p1, p0, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_4
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x6

    invoke-virtual {v4, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 5

    check-cast p2, LLogMessage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    iget-object v0, p2, LLogMessage;->e:Ljava/lang/String;

    iget-object v1, p2, LLogMessage;->i:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    iget-object p0, p2, LLogMessage;->j:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    if-nez v3, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v4, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x5

    invoke-virtual {v4, p1, p0, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    iget p0, p2, LLogMessage;->h:I

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    if-eqz p0, :cond_2

    const/4 v3, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    iget p0, p2, LLogMessage;->g:I

    if-eqz p0, :cond_3

    const/4 v3, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_3
    iget p0, p2, LLogMessage;->f:I

    if-eqz p0, :cond_4

    const/4 p2, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p1, p2, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_4
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x1

    invoke-virtual {v4, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 7

    check-cast p1, LLogMessage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    iget-object v0, p1, LLogMessage;->j:Ljava/lang/String;

    iget-object v1, p1, LLogMessage;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lokio/ByteString;->e()I

    move-result p0

    iget-object v2, p1, LLogMessage;->e:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v5, v4, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr p0, v2

    :cond_0
    iget v2, p1, LLogMessage;->f:I

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    if-eqz v2, :cond_1

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr p0, v2

    :cond_1
    iget v2, p1, LLogMessage;->g:I

    if-eqz v2, :cond_2

    const/4 v6, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr p0, v2

    :cond_2
    iget p1, p1, LLogMessage;->h:I

    if-eqz p1, :cond_3

    const/4 v2, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr p0, p1

    :cond_3
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x5

    invoke-virtual {v5, p1, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr p0, p1

    :cond_4
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x6

    invoke-virtual {v5, p1, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_5
    return p0
.end method
