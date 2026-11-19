.class public final LThread$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "LThread;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Thread$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "LThread;",
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
    .locals 17

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->d()J

    move-result-wide v1

    const/4 v8, 0x0

    const-string v9, ""

    const-wide/16 v10, 0x0

    move-wide v12, v10

    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->g()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    sget-object v15, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

    sget-object v16, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    packed-switch v14, :pswitch_data_0

    invoke-virtual {v0, v14}, Lcom/squareup/wire/ProtoReader;->m(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->o()J

    move-result-wide v12

    goto :goto_0

    :pswitch_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->o()J

    move-result-wide v10

    goto :goto_0

    :pswitch_4
    sget-object v14, LMemoryDump;->j:LMemoryDump$Companion$ADAPTER$1;

    invoke-virtual {v14, v0}, LMemoryDump$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_5
    sget-object v14, LBacktraceFrame;->m:LBacktraceFrame$Companion$ADAPTER$1;

    invoke-virtual {v14, v0}, LBacktraceFrame$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_6
    sget-object v14, LRegister;->g:LRegister$Companion$ADAPTER$1;

    invoke-virtual {v14, v0}, LRegister$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :pswitch_8
    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->n()I

    move-result v8

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->e(J)Lokio/ByteString;

    move-result-object v0

    move v1, v8

    move-object v2, v9

    move-wide v8, v10

    move-wide v10, v12

    move-object v12, v0

    new-instance v0, LThread;

    invoke-direct/range {v0 .. v12}, LThread;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JJLokio/ByteString;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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
    .locals 5

    check-cast p2, LThread;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p2, LThread;->e:I

    iget-object v0, p2, LThread;->f:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    invoke-virtual {v2, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_0
    const-string p0, ""

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    if-nez p0, :cond_1

    const/4 p0, 0x2

    invoke-virtual {v1, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_1
    sget-object p0, LRegister;->g:LRegister$Companion$ADAPTER$1;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/4 v0, 0x3

    iget-object v2, p2, LThread;->i:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/4 v0, 0x7

    iget-object v2, p2, LThread;->j:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/16 v0, 0x9

    iget-object v1, p2, LThread;->k:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object p0, LBacktraceFrame;->m:LBacktraceFrame$Companion$ADAPTER$1;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/4 v0, 0x4

    iget-object v1, p2, LThread;->l:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object p0, LMemoryDump;->j:LMemoryDump$Companion$ADAPTER$1;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/4 v0, 0x5

    iget-object v1, p2, LThread;->m:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    iget-wide v0, p2, LThread;->g:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_2
    iget-wide v0, p2, LThread;->h:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_3

    const/16 p0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 6

    check-cast p2, LThread;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    iget-object v0, p2, LThread;->f:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    iget-wide v1, p2, LThread;->h:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, p1, p0, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_0
    iget-wide v1, p2, LThread;->g:J

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, p1, p0, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    sget-object p0, LMemoryDump;->j:LMemoryDump$Companion$ADAPTER$1;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/4 v1, 0x5

    iget-object v2, p2, LThread;->m:Ljava/util/List;

    invoke-virtual {p0, p1, v1, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    sget-object p0, LBacktraceFrame;->m:LBacktraceFrame$Companion$ADAPTER$1;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/4 v1, 0x4

    iget-object v2, p2, LThread;->l:Ljava/util/List;

    invoke-virtual {p0, p1, v1, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p2, LThread;->k:Ljava/util/List;

    invoke-virtual {v1, p1, v2, v3}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p2, LThread;->j:Ljava/util/List;

    invoke-virtual {v1, p1, v2, v3}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    sget-object v1, LRegister;->g:LRegister$Companion$ADAPTER$1;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p2, LThread;->i:Ljava/util/List;

    invoke-virtual {v1, p1, v2, v3}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    iget p0, p2, LThread;->e:I

    if-eqz p0, :cond_3

    const/4 p2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    invoke-virtual {v0, p1, p2, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 6

    check-cast p1, LThread;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    iget-object v0, p1, LThread;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lokio/ByteString;->e()I

    move-result p0

    iget v1, p1, LThread;->e:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    invoke-virtual {v3, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr p0, v1

    :cond_0
    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v2, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    :cond_1
    sget-object v0, LRegister;->g:LRegister$Companion$ADAPTER$1;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v3, p1, LThread;->i:Ljava/util/List;

    invoke-virtual {v0, v1, v3}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {v2}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/4 v1, 0x7

    iget-object v3, p1, LThread;->j:Ljava/util/List;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v2}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p1, LThread;->k:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, p0

    sget-object p0, LBacktraceFrame;->m:LBacktraceFrame$Companion$ADAPTER$1;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/4 v1, 0x4

    iget-object v2, p1, LThread;->l:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    sget-object v0, LMemoryDump;->j:LMemoryDump$Companion$ADAPTER$1;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p1, LThread;->m:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, p0

    iget-wide v1, p1, LThread;->g:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, p0, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_2
    iget-wide p0, p1, LThread;->h:J

    cmp-long v1, p0, v3

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v5, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_3
    return v0
.end method
