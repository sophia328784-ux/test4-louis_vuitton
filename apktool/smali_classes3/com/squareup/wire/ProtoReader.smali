.class public Lcom/squareup/wire/ProtoReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/ProtoReader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/squareup/wire/ProtoReader;",
        "",
        "Lokio/BufferedSource;",
        "source",
        "<init>",
        "(Lokio/BufferedSource;)V",
        "Companion",
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
.field public final a:Lokio/BufferedSource;

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:Lcom/squareup/wire/FieldEncoding;

.field public final i:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/ProtoReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/ProtoReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/squareup/wire/ProtoReader;->c:J

    const/4 p1, 0x2

    iput p1, p0, Lcom/squareup/wire/ProtoReader;->e:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/squareup/wire/ProtoReader;->f:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/wire/ProtoReader;->g:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/ProtoReader;->i:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/squareup/wire/ProtoWriter;

    iget v1, p0, Lcom/squareup/wire/ProtoReader;->d:I

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokio/BufferedSink;

    invoke-direct {v0, p0}, Lcom/squareup/wire/ProtoWriter;-><init>(Lokio/BufferedSink;)V

    invoke-virtual {p2}, Lcom/squareup/wire/FieldEncoding;->b()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public final b(I)V
    .locals 6

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    const/4 v1, 0x6

    if-ne v0, p1, :cond_0

    iput v1, p0, Lcom/squareup/wire/ProtoReader;->e:I

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->c:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_2

    if-nez p1, :cond_1

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->g:J

    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->c:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->g:J

    iput v1, p0, Lcom/squareup/wire/ProtoReader;->e:I

    return-void

    :cond_1
    const/4 p1, 0x7

    iput p1, p0, Lcom/squareup/wire/ProtoReader;->e:I

    return-void

    :cond_2
    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->c:J

    const-string v3, " but was "

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    const-string v0, "Expected to end at "

    invoke-static/range {v0 .. v5}, Lno0;->p(Ljava/lang/String;JLjava/lang/Object;J)V

    return-void
.end method

.method public final c()J
    .locals 4

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->c:J

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->D0(J)V

    const/4 v2, 0x6

    iput v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->c:J

    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->g:J

    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->c:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->g:J

    return-wide v0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Reader position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Last read tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    const/16 v2, 0x2e

    invoke-static {v1, p0, v2}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()J
    .locals 4

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/squareup/wire/ProtoReader;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->g:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->g:J

    const/4 v2, 0x6

    iput v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

    return-wide v0

    :cond_1
    const-string p0, "Wire recursion limit exceeded"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    const-string p0, "Unexpected call to beginMessage()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public e(J)Lokio/ByteString;
    .locals 9

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    if-ltz v0, :cond_3

    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->g:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->b:J

    iget-wide v5, p0, Lcom/squareup/wire/ProtoReader;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->c:J

    const-string v6, " but was "

    iget-wide v7, p0, Lcom/squareup/wire/ProtoReader;->b:J

    const-string v3, "Expected to end at "

    invoke-static/range {v3 .. v8}, Lno0;->p(Ljava/lang/String;JLjava/lang/Object;J)V

    return-object v2

    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/squareup/wire/ProtoReader;->c:J

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokio/Buffer;

    iget-wide p1, p0, Lokio/Buffer;->c:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->N0(J)Lokio/ByteString;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lokio/ByteString;->f:Lokio/ByteString;

    return-object p0

    :cond_3
    const-string p0, "No corresponding call to beginMessage()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_4
    const-string p0, "Unexpected call to endMessage()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2
.end method

.method public final f()I
    .locals 7

    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->D0(J)V

    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->b:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v3

    if-ltz v3, :cond_0

    return v3

    :cond_0
    and-int/lit8 v3, v3, 0x7f

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->D0(J)V

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v4

    if-ltz v4, :cond_1

    shl-int/lit8 p0, v4, 0x7

    :goto_0
    or-int/2addr p0, v3

    return p0

    :cond_1
    and-int/lit8 v4, v4, 0x7f

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->D0(J)V

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v4

    if-ltz v4, :cond_2

    shl-int/lit8 p0, v4, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v4, v4, 0x7f

    shl-int/lit8 v4, v4, 0xe

    or-int/2addr v3, v4

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->D0(J)V

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v4

    if-ltz v4, :cond_3

    shl-int/lit8 p0, v4, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v4, 0x7f

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v3, v4

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->D0(J)V

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v4

    shl-int/lit8 v5, v4, 0x1c

    or-int/2addr v3, v5

    if-gez v4, :cond_6

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x5

    if-ge v4, v5, :cond_5

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->D0(J)V

    iget-wide v5, p0, Lcom/squareup/wire/ProtoReader;->b:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v5

    if-ltz v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed VARINT. Reader position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Last read tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    const/16 v2, 0x2e

    invoke-static {v1, p0, v2}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    return v3
.end method

.method public g()I
    .locals 7

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    const/4 v1, 0x7

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    return p0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    :goto_0
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->b:J

    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->c:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_b

    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->Z0()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->f()I

    move-result v0

    const/16 v1, 0x2e

    const-string v3, ". Last read tag: "

    if-eqz v0, :cond_a

    ushr-int/lit8 v4, v0, 0x3

    iput v4, p0, Lcom/squareup/wire/ProtoReader;->f:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_9

    const/4 v5, 0x1

    if-eq v0, v5, :cond_8

    const-string v5, ". Reader position: "

    if-eq v0, v2, :cond_4

    const/4 v6, 0x3

    if-eq v0, v6, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->FIXED32:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->h:Lcom/squareup/wire/FieldEncoding;

    iput v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

    return v4

    :cond_1
    new-instance v2, Ljava/net/ProtocolException;

    const-string v4, "Unexpected field encoding: "

    invoke-static {v0, v4, v5}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected end group. Reader position: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    invoke-static {v2, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/squareup/wire/ProtoReader;->q(I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->h:Lcom/squareup/wire/FieldEncoding;

    iput v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->f()I

    move-result v0

    if-ltz v0, :cond_7

    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->g:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->c:J

    iput-wide v1, p0, Lcom/squareup/wire/ProtoReader;->g:J

    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->b:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/squareup/wire/ProtoReader;->c:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_5

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    return p0

    :cond_5
    invoke-static {}, Lmd;->e()V

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {}, Lr81;->b()V

    const/4 p0, 0x0

    return p0

    :cond_7
    new-instance v2, Ljava/net/ProtocolException;

    const-string v4, "Negative length: "

    invoke-static {v0, v4, v5}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->FIXED64:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->h:Lcom/squareup/wire/FieldEncoding;

    iput v5, p0, Lcom/squareup/wire/ProtoReader;->e:I

    return v4

    :cond_9
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->h:Lcom/squareup/wire/FieldEncoding;

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    return v4

    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected tag 0. Reader position: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    invoke-static {v2, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 p0, -0x1

    return p0

    :cond_c
    const-string p0, "Unexpected call to nextTag()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public h()Lcom/squareup/wire/FieldEncoding;
    .locals 0

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->h:Lcom/squareup/wire/FieldEncoding;

    return-object p0
.end method

.method public i()Lokio/ByteString;
    .locals 2

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->c()J

    move-result-wide v0

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->D0(J)V

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->N0(J)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public j()I
    .locals 6

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected FIXED32 or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Reader position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Last read tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    const/16 v2, 0x2e

    invoke-static {v1, p0, v2}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    const-wide/16 v2, 0x4

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->D0(J)V

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-interface {v0}, Lokio/BufferedSource;->w1()I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/squareup/wire/ProtoReader;->b(I)V

    return v0
.end method

.method public k()J
    .locals 6

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected FIXED64 or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Reader position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Last read tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    const/16 v2, 0x2e

    invoke-static {v1, p0, v2}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    const-wide/16 v2, 0x8

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->D0(J)V

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-interface {v0}, Lokio/BufferedSource;->A0()J

    move-result-wide v2

    invoke-virtual {p0, v1}, Lcom/squareup/wire/ProtoReader;->b(I)V

    return-wide v2
.end method

.method public l()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->c()J

    move-result-wide v0

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->D0(J)V

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->K0(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public m(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->h()Lcom/squareup/wire/FieldEncoding;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/FieldEncoding;->b()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    return-void
.end method

.method public n()I
    .locals 4

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Reader position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Last read tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    const/16 v2, 0x2e

    invoke-static {v1, p0, v2}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->f()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/squareup/wire/ProtoReader;->b(I)V

    return v0
.end method

.method public o()J
    .locals 11

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    const/16 v1, 0x2e

    const-string v2, ". Last read tag: "

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/squareup/wire/ProtoReader;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Reader position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    invoke-static {v3, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    move v5, v0

    :goto_1
    const/16 v6, 0x40

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    const-wide/16 v7, 0x1

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->D0(J)V

    iget-wide v9, p0, Lcom/squareup/wire/ProtoReader;->b:J

    add-long/2addr v9, v7

    iput-wide v9, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-interface {v6}, Lokio/BufferedSource;->readByte()B

    move-result v6

    and-int/lit8 v7, v6, 0x7f

    int-to-long v7, v7

    shl-long/2addr v7, v5

    or-long/2addr v3, v7

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_2

    invoke-virtual {p0, v0}, Lcom/squareup/wire/ProtoReader;->b(I)V

    return-wide v3

    :cond_2
    add-int/lit8 v5, v5, 0x7

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Malformed VARINT. Reader position: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    invoke-static {v3, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p()V
    .locals 2

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->j()I

    return-void

    :cond_0
    const-string p0, "Unexpected call to skip()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->c()J

    move-result-wide v0

    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->k()J

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->o()J

    return-void
.end method

.method public final q(I)V
    .locals 8

    :goto_0
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->b:J

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->Z0()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->f()I

    move-result v1

    const/16 v2, 0x2e

    const-string v3, ". Last read tag: "

    if-eqz v1, :cond_9

    ushr-int/lit8 v4, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_8

    const/4 v5, 0x1

    if-eq v1, v5, :cond_7

    const/4 v6, 0x2

    const-string v7, ". Reader position: "

    if-eq v1, v6, :cond_5

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    iput v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->j()I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unexpected field encoding: "

    invoke-static {v1, v0, v7}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ne v4, p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->b:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected end group. Reader position: "

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_4

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/squareup/wire/ProtoReader;->q(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Wire recursion limit exceeded"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    throw p1

    :cond_5
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->f()I

    move-result v1

    if-ltz v1, :cond_6

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-interface {v0, v4, v5}, Lokio/BufferedSource;->skip(J)V

    goto/16 :goto_0

    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Negative length: "

    invoke-static {v1, v0, v7}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iput v5, p0, Lcom/squareup/wire/ProtoReader;->e:I

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->k()J

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->o()J

    goto/16 :goto_0

    :cond_9
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected tag 0. Reader position: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    invoke-static {v0, p0, v2}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {}, Lmd;->e()V

    return-void
.end method
