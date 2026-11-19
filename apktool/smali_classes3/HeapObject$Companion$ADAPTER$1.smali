.class public final LHeapObject$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHeapObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "LHeapObject;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "HeapObject$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "LHeapObject;",
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
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v8, v4

    move-wide v11, v8

    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->g()I

    move-result p0

    const/4 v6, -0x1

    if-eq p0, v6, :cond_0

    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoReader;->m(I)V

    goto :goto_0

    :pswitch_0
    sget-object p0, LBacktraceFrame;->m:LBacktraceFrame$Companion$ADAPTER$1;

    invoke-virtual {p0, p1}, LBacktraceFrame$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->o()J

    move-result-wide v11

    goto :goto_0

    :pswitch_2
    sget-object p0, LBacktraceFrame;->m:LBacktraceFrame$Companion$ADAPTER$1;

    invoke-virtual {p0, p1}, LBacktraceFrame$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->o()J

    move-result-wide v8

    goto :goto_0

    :pswitch_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->o()J

    move-result-wide v4

    goto :goto_0

    :pswitch_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->o()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->e(J)Lokio/ByteString;

    move-result-object p0

    new-instance v0, LHeapObject;

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v8

    move-wide v8, v11

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, LHeapObject;-><init>(JJJLjava/util/List;JLjava/util/List;Lokio/ByteString;)V

    return-object v0

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
    .locals 6

    check-cast p2, LHeapObject;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p2, LHeapObject;->e:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_0
    iget-wide v0, p2, LHeapObject;->f:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_1
    iget-wide v0, p2, LHeapObject;->g:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_2
    sget-object p0, LBacktraceFrame;->m:LBacktraceFrame$Companion$ADAPTER$1;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v5, p2, LHeapObject;->i:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v5}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    iget-wide v0, p2, LHeapObject;->h:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/4 v0, 0x6

    iget-object v1, p2, LHeapObject;->j:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 6

    check-cast p2, LHeapObject;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    sget-object p0, LBacktraceFrame;->m:LBacktraceFrame$Companion$ADAPTER$1;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p2, LHeapObject;->j:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    iget-wide v0, p2, LHeapObject;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, p1, v4, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/4 v0, 0x4

    iget-object v1, p2, LHeapObject;->i:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    iget-wide v0, p2, LHeapObject;->g:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    iget-wide v0, p2, LHeapObject;->f:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    iget-wide v0, p2, LHeapObject;->e:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v5, p1, p0, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 8

    check-cast p1, LHeapObject;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->e()I

    move-result p0

    iget-wide v0, p1, LHeapObject;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-static {v0, v1, v5, v4, p0}, Lfc;->c(JLcom/squareup/wire/ProtoAdapterKt$commonUint64$1;II)I

    move-result p0

    :cond_0
    iget-wide v0, p1, LHeapObject;->f:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    invoke-static {v0, v1, v5, v4, p0}, Lfc;->c(JLcom/squareup/wire/ProtoAdapterKt$commonUint64$1;II)I

    move-result p0

    :cond_1
    iget-wide v0, p1, LHeapObject;->g:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    invoke-static {v0, v1, v5, v4, p0}, Lfc;->c(JLcom/squareup/wire/ProtoAdapterKt$commonUint64$1;II)I

    move-result p0

    :cond_2
    sget-object v0, LBacktraceFrame;->m:LBacktraceFrame$Companion$ADAPTER$1;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object v1

    const/4 v4, 0x4

    iget-object v6, p1, LHeapObject;->i:Ljava/util/List;

    invoke-virtual {v1, v4, v6}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v1, p0

    iget-wide v6, p1, LHeapObject;->h:J

    cmp-long p0, v6, v2

    if-eqz p0, :cond_3

    const/4 p0, 0x5

    invoke-static {v6, v7, v5, p0, v1}, Lfc;->c(JLcom/squareup/wire/ProtoAdapterKt$commonUint64$1;II)I

    move-result v1

    :cond_3
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    move-result-object p0

    const/4 v0, 0x6

    iget-object p1, p1, LHeapObject;->j:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
