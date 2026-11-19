.class public final LCrashDetail$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCrashDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "LCrashDetail;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "CrashDetail$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "LCrashDetail;",
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
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lokio/ByteString;->f:Lokio/ByteString;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    move-result-wide v0

    move-object v2, p0

    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->g()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x1

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {p1, v3}, Lcom/squareup/wire/ProtoReader;->m(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->i()Lokio/ByteString;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->i()Lokio/ByteString;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->e(J)Lokio/ByteString;

    move-result-object p1

    new-instance v0, LCrashDetail;

    invoke-direct {v0, p0, v2, p1}, LCrashDetail;-><init>(Lokio/ByteString;Lokio/ByteString;Lokio/ByteString;)V

    return-object v0
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, LCrashDetail;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p2, LCrashDetail;->e:Lokio/ByteString;

    iget-object v0, p2, LCrashDetail;->f:Lokio/ByteString;

    sget-object v1, Lokio/ByteString;->f:Lokio/ByteString;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v3, p1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x2

    invoke-virtual {v3, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, LCrashDetail;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    iget-object v0, p2, LCrashDetail;->e:Lokio/ByteString;

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    iget-object p0, p2, LCrashDetail;->f:Lokio/ByteString;

    sget-object p2, Lokio/ByteString;->f:Lokio/ByteString;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v2, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_0
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    invoke-virtual {v2, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, LCrashDetail;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->b()Lokio/ByteString;

    move-result-object p0

    iget-object v0, p1, LCrashDetail;->f:Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->e()I

    move-result p0

    iget-object p1, p1, LCrashDetail;->e:Lokio/ByteString;

    sget-object v1, Lokio/ByteString;->f:Lokio/ByteString;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v3, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr p0, p1

    :cond_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    invoke-virtual {v3, p1, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_1
    return p0
.end method
