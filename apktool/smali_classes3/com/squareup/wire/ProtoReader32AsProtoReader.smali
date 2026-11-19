.class public final Lcom/squareup/wire/ProtoReader32AsProtoReader;
.super Lcom/squareup/wire/ProtoReader;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/squareup/wire/ProtoReader32AsProtoReader;",
        "Lcom/squareup/wire/ProtoReader;",
        "Lcom/squareup/wire/ProtoReader32;",
        "delegate",
        "<init>",
        "(Lcom/squareup/wire/ProtoReader32;)V",
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


# instance fields
.field public final j:Lcom/squareup/wire/ProtoReader32;


# direct methods
.method public constructor <init>(Lcom/squareup/wire/ProtoReader32;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-direct {p0, v0}, Lcom/squareup/wire/ProtoReader;-><init>(Lokio/BufferedSource;)V

    iput-object p1, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    return-void
.end method


# virtual methods
.method public final a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    invoke-interface {p0, p1, p2, p3}, Lcom/squareup/wire/ProtoReader32;->k(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    return-void
.end method

.method public final d()J
    .locals 2

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    invoke-interface {p0}, Lcom/squareup/wire/ProtoReader32;->h()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final e(J)Lokio/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    long-to-int p1, p1

    invoke-interface {p0, p1}, Lcom/squareup/wire/ProtoReader32;->l(I)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    invoke-interface {p0}, Lcom/squareup/wire/ProtoReader32;->nextTag()I

    move-result p0

    return p0
.end method

.method public final h()Lcom/squareup/wire/FieldEncoding;
    .locals 0

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    invoke-interface {p0}, Lcom/squareup/wire/ProtoReader32;->g()Lcom/squareup/wire/FieldEncoding;

    move-result-object p0

    return-object p0
.end method

.method public final i()Lokio/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    invoke-interface {p0}, Lcom/squareup/wire/ProtoReader32;->b()Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final j()I
    .locals 0

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    invoke-interface {p0}, Lcom/squareup/wire/ProtoReader32;->c()I

    move-result p0

    return p0
.end method

.method public final k()J
    .locals 2

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    invoke-interface {p0}, Lcom/squareup/wire/ProtoReader32;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    invoke-interface {p0}, Lcom/squareup/wire/ProtoReader32;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final m(I)V
    .locals 0

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    invoke-interface {p0, p1}, Lcom/squareup/wire/ProtoReader32;->f(I)V

    return-void
.end method

.method public final n()I
    .locals 0

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    invoke-interface {p0}, Lcom/squareup/wire/ProtoReader32;->j()I

    move-result p0

    return p0
.end method

.method public final o()J
    .locals 2

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    invoke-interface {p0}, Lcom/squareup/wire/ProtoReader32;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public final p()V
    .locals 0

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    invoke-interface {p0}, Lcom/squareup/wire/ProtoReader32;->e()V

    return-void
.end method
