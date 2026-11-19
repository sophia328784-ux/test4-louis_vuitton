.class public final Lcom/squareup/wire/ReverseProtoWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/ReverseProtoWriter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/squareup/wire/ReverseProtoWriter;",
        "",
        "<init>",
        "()V",
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


# static fields
.field public static final h:[B


# instance fields
.field public a:Lokio/Buffer;

.field public b:Lokio/Buffer;

.field public final c:Lokio/Buffer$UnsafeCursor;

.field public d:[B

.field public e:I

.field public final f:Lkotlin/Lazy;

.field public final g:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/ReverseProtoWriter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/ReverseProtoWriter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/squareup/wire/ReverseProtoWriter;->h:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->c:Lokio/Buffer$UnsafeCursor;

    sget-object v0, Lcom/squareup/wire/ReverseProtoWriter;->h:[B

    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lit0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lit0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->f:Lkotlin/Lazy;

    new-instance v1, Lxn0;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lxn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->g:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    sget-object v1, Lcom/squareup/wire/ReverseProtoWriter;->h:[B

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->c:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    iget v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->skip(J)V

    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    iget-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    invoke-virtual {v0, v2}, Lokio/Buffer;->u0(Lokio/Source;)J

    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    iget-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    iput-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    iput-object v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->c:J

    long-to-int v0, v0

    iget-object v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    array-length v1, v1

    iget p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    sub-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1
.end method

.method public final c(I)V
    .locals 8

    iget v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/wire/ReverseProtoWriter;->a()V

    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    iget-object v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->c:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0, v1}, Lokio/Buffer;->C(Lokio/Buffer$UnsafeCursor;)V

    if-lez p1, :cond_5

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_4

    iget-object v2, v1, Lokio/Buffer$UnsafeCursor;->b:Lokio/Buffer;

    if-eqz v2, :cond_3

    iget-boolean v3, v1, Lokio/Buffer$UnsafeCursor;->c:Z

    if-eqz v3, :cond_2

    iget-wide v3, v2, Lokio/Buffer;->c:J

    invoke-virtual {v2, p1}, Lokio/Buffer;->k0(I)Lokio/Segment;

    move-result-object p1

    iget v5, p1, Lokio/Segment;->c:I

    rsub-int v5, v5, 0x2000

    iput v0, p1, Lokio/Segment;->c:I

    int-to-long v6, v5

    add-long/2addr v6, v3

    iput-wide v6, v2, Lokio/Buffer;->c:J

    iput-object p1, v1, Lokio/Buffer$UnsafeCursor;->d:Lokio/Segment;

    iput-wide v3, v1, Lokio/Buffer$UnsafeCursor;->e:J

    iget-object p1, p1, Lokio/Segment;->a:[B

    iput-object p1, v1, Lokio/Buffer$UnsafeCursor;->f:[B

    rsub-int v2, v5, 0x2000

    iput v2, v1, Lokio/Buffer$UnsafeCursor;->g:I

    iput v0, v1, Lokio/Buffer$UnsafeCursor;->h:I

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p1, p1

    if-ne v0, p1, :cond_1

    iget-object p1, v1, Lokio/Buffer$UnsafeCursor;->f:[B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    iget p1, v1, Lokio/Buffer$UnsafeCursor;->h:I

    iput p1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    return-void

    :cond_1
    const-string p0, "Check failed."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "expandBuffer() only permitted for read/write buffers"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "not attached to a buffer"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "minByteCount > Segment.SIZE: "

    invoke-static {p1, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return-void

    :cond_5
    const-string p0, "minByteCount <= 0: "

    invoke-static {p1, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lokio/ByteString;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lokio/ByteString;->e()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    sub-int/2addr v0, v1

    iget-object v3, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    invoke-virtual {p1, v0, v2, v3, v1}, Lokio/ByteString;->c(II[BI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    iget v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    add-int/lit8 v1, v0, -0x4

    iput v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    iget-object p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    add-int/lit8 v2, v0, -0x3

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    add-int/lit8 v1, v0, -0x2

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-void
.end method

.method public final f(J)V
    .locals 8

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    add-int/lit8 v2, v1, -0x8

    iput v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    iget-object p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    add-int/lit8 v3, v1, -0x7

    const-wide/16 v4, 0xff

    and-long v6, p1, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, p0, v2

    add-int/lit8 v2, v1, -0x6

    ushr-long v6, p1, v0

    and-long/2addr v6, v4

    long-to-int v0, v6

    int-to-byte v0, v0

    aput-byte v0, p0, v3

    add-int/lit8 v0, v1, -0x5

    const/16 v3, 0x10

    ushr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v1, -0x4

    const/16 v3, 0x18

    ushr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    add-int/lit8 v0, v1, -0x3

    const/16 v3, 0x20

    ushr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v1, -0x2

    const/16 v3, 0x28

    ushr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v0, 0x30

    ushr-long v6, p1, v0

    and-long/2addr v6, v4

    long-to-int v0, v6

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    and-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    return-void
.end method

.method public final g(I)V
    .locals 4

    sget-object v0, Lcom/squareup/wire/ProtoWriter;->b:Lcom/squareup/wire/ProtoWriter$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/squareup/wire/ProtoWriter$Companion;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    :goto_0
    and-int/lit8 v0, p1, -0x80

    iget-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    ushr-int/lit8 p1, p1, 0x7

    move v1, v0

    goto :goto_0

    :cond_0
    int-to-byte p0, p1

    aput-byte p0, v2, v1

    return-void
.end method

.method public final h(J)V
    .locals 7

    sget-object v0, Lcom/squareup/wire/ProtoWriter;->b:Lcom/squareup/wire/ProtoWriter$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/squareup/wire/ProtoWriter$Companion;->b(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    :goto_0
    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    iget-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    const-wide/16 v3, 0x7f

    and-long/2addr v3, p1

    const-wide/16 v5, 0x80

    or-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    move v1, v0

    goto :goto_0

    :cond_0
    long-to-int p0, p1

    int-to-byte p0, p0

    aput-byte p0, v2, v1

    return-void
.end method
