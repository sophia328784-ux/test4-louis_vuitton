.class public final LStackHistoryBufferEntry$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LStackHistoryBufferEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "LStackHistoryBufferEntry;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "StackHistoryBufferEntry$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "LStackHistoryBufferEntry;",
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
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    move-result-wide v0

    const/4 p0, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->g()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/squareup/wire/ProtoReader;->m(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->o()J

    move-result-wide v2

    move-wide v6, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->o()J

    move-result-wide v2

    move-wide v4, v2

    goto :goto_0

    :cond_2
    sget-object p0, LBacktraceFrame;->m:LBacktraceFrame$Companion$ADAPTER$1;

    invoke-virtual {p0, p1}, LBacktraceFrame$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->e(J)Lokio/ByteString;

    move-result-object v8

    new-instance v2, LStackHistoryBufferEntry;

    move-object v3, p0

    check-cast v3, LBacktraceFrame;

    invoke-direct/range {v2 .. v8}, LStackHistoryBufferEntry;-><init>(LBacktraceFrame;JJLokio/ByteString;)V

    return-object v2
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 5

    check-cast p2, LStackHistoryBufferEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p2, LStackHistoryBufferEntry;->e:LBacktraceFrame;

    if-eqz p0, :cond_0

    sget-object v0, LBacktraceFrame;->m:LBacktraceFrame$Companion$ADAPTER$1;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_0
    iget-wide v0, p2, LStackHistoryBufferEntry;->f:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_1
    iget-wide v0, p2, LStackHistoryBufferEntry;->g:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 5

    check-cast p2, LStackHistoryBufferEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    iget-wide v0, p2, LStackHistoryBufferEntry;->g:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_0
    iget-wide v0, p2, LStackHistoryBufferEntry;->f:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    iget-object p0, p2, LStackHistoryBufferEntry;->e:LBacktraceFrame;

    if-eqz p0, :cond_2

    sget-object p2, LBacktraceFrame;->m:LBacktraceFrame$Companion$ADAPTER$1;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 6

    check-cast p1, LStackHistoryBufferEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->e()I

    move-result p0

    iget-object v0, p1, LStackHistoryBufferEntry;->e:LBacktraceFrame;

    if-eqz v0, :cond_0

    sget-object v1, LBacktraceFrame;->m:LBacktraceFrame$Companion$ADAPTER$1;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    :cond_0
    iget-wide v0, p1, LStackHistoryBufferEntry;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    invoke-static {v0, v1, v5, v4, p0}, Lfc;->c(JLcom/squareup/wire/ProtoAdapterKt$commonUint64$1;II)I

    move-result p0

    :cond_1
    iget-wide v0, p1, LStackHistoryBufferEntry;->g:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    invoke-static {v0, v1, v5, p1, p0}, Lfc;->c(JLcom/squareup/wire/ProtoAdapterKt$commonUint64$1;II)I

    move-result p0

    :cond_2
    return p0
.end method
