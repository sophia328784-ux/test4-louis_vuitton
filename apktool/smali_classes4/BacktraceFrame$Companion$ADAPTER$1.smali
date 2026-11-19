.class public final LBacktraceFrame$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LBacktraceFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "LBacktraceFrame;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "BacktraceFrame$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "LBacktraceFrame;",
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
    .locals 21

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-wide v7, v3

    move-wide v9, v7

    move-wide v11, v9

    move-wide v14, v11

    move-wide/from16 v17, v14

    move-object v13, v5

    move-object/from16 v16, v13

    move-object/from16 v19, v16

    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->g()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    packed-switch v3, :pswitch_data_0

    invoke-virtual {v0, v3}, Lcom/squareup/wire/ProtoReader;->m(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->o()J

    move-result-wide v3

    move-wide/from16 v17, v3

    goto :goto_0

    :pswitch_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_0

    :pswitch_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->o()J

    move-result-wide v3

    move-wide v14, v3

    goto :goto_0

    :pswitch_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto :goto_0

    :pswitch_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->o()J

    move-result-wide v3

    move-wide v11, v3

    goto :goto_0

    :pswitch_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->o()J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_0

    :pswitch_7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->o()J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->e(J)Lokio/ByteString;

    move-result-object v20

    new-instance v6, LBacktraceFrame;

    invoke-direct/range {v6 .. v20}, LBacktraceFrame;-><init>(JJJLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Lokio/ByteString;)V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 10

    check-cast p2, LBacktraceFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p2, LBacktraceFrame;->e:J

    iget-object p0, p2, LBacktraceFrame;->l:Ljava/lang/String;

    iget-object v2, p2, LBacktraceFrame;->j:Ljava/lang/String;

    iget-object v3, p2, LBacktraceFrame;->h:Ljava/lang/String;

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, p1, v6, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_0
    iget-wide v0, p2, LBacktraceFrame;->f:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, p1, v6, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_1
    iget-wide v0, p2, LBacktraceFrame;->g:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, p1, v6, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_2
    const-string v0, ""

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    if-nez v1, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v6, p1, v1, v3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_3
    iget-wide v8, p2, LBacktraceFrame;->i:J

    cmp-long v1, v8, v4

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, p1, v1, v3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_4
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    invoke-virtual {v6, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_5
    iget-wide v1, p2, LBacktraceFrame;->k:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_6

    const/4 v3, 0x7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, p1, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {v6, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_7
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 9

    check-cast p2, LBacktraceFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    iget-object v0, p2, LBacktraceFrame;->h:Ljava/lang/String;

    iget-object v1, p2, LBacktraceFrame;->j:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    iget-object p0, p2, LBacktraceFrame;->l:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    if-nez v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v4, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_0
    iget-wide v5, p2, LBacktraceFrame;->k:J

    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    if-eqz p0, :cond_1

    const/4 p0, 0x7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, p1, p0, v5}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x6

    invoke-virtual {v4, p1, p0, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    iget-wide v5, p2, LBacktraceFrame;->i:J

    cmp-long p0, v5, v7

    if-eqz p0, :cond_3

    const/4 p0, 0x5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, p1, p0, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_3
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x4

    invoke-virtual {v4, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_4
    iget-wide v0, p2, LBacktraceFrame;->g:J

    cmp-long p0, v0, v7

    if-eqz p0, :cond_5

    const/4 p0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_5
    iget-wide v0, p2, LBacktraceFrame;->f:J

    cmp-long p0, v0, v7

    if-eqz p0, :cond_6

    const/4 p0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_6
    iget-wide v0, p2, LBacktraceFrame;->e:J

    cmp-long p0, v0, v7

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p1, p0, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 11

    check-cast p1, LBacktraceFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    iget-object v0, p1, LBacktraceFrame;->l:Ljava/lang/String;

    iget-object v1, p1, LBacktraceFrame;->j:Ljava/lang/String;

    iget-object v2, p1, LBacktraceFrame;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lokio/ByteString;->e()I

    move-result p0

    iget-wide v3, p1, LBacktraceFrame;->e:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    invoke-static {v3, v4, v8, v7, p0}, Lfc;->c(JLcom/squareup/wire/ProtoAdapterKt$commonUint64$1;II)I

    move-result p0

    :cond_0
    iget-wide v3, p1, LBacktraceFrame;->f:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    invoke-static {v3, v4, v8, v7, p0}, Lfc;->c(JLcom/squareup/wire/ProtoAdapterKt$commonUint64$1;II)I

    move-result p0

    :cond_1
    iget-wide v3, p1, LBacktraceFrame;->g:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    invoke-static {v3, v4, v8, v7, p0}, Lfc;->c(JLcom/squareup/wire/ProtoAdapterKt$commonUint64$1;II)I

    move-result p0

    :cond_2
    const-string v3, ""

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    if-nez v4, :cond_3

    const/4 v4, 0x4

    invoke-virtual {v7, v4, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr p0, v2

    :cond_3
    iget-wide v9, p1, LBacktraceFrame;->i:J

    cmp-long v2, v9, v5

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    invoke-static {v9, v10, v8, v2, p0}, Lfc;->c(JLcom/squareup/wire/ProtoAdapterKt$commonUint64$1;II)I

    move-result p0

    :cond_4
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x6

    invoke-virtual {v7, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr p0, v1

    :cond_5
    iget-wide v1, p1, LBacktraceFrame;->k:J

    cmp-long p1, v1, v5

    if-eqz p1, :cond_6

    const/4 p1, 0x7

    invoke-static {v1, v2, v8, p1, p0}, Lfc;->c(JLcom/squareup/wire/ProtoAdapterKt$commonUint64$1;II)I

    move-result p0

    :cond_6
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const/16 p1, 0x8

    invoke-virtual {v7, p1, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_7
    return p0
.end method
