.class abstract Lcom/batch/android/z0/a0$b;
.super Lcom/batch/android/z0/a0$d;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z0/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/z0/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Lcom/batch/android/z0/a0;


# direct methods
.method private constructor <init>(Lcom/batch/android/z0/a0;)V
    .locals 1

    iput-object p1, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/batch/android/z0/a0$d;-><init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/batch/android/z0/a0$b;-><init>(Lcom/batch/android/z0/a0;)V

    return-void
.end method


# virtual methods
.method public B()F
    .locals 3

    iget-object v0, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->f:Lcom/batch/android/z0/a0$n;

    iget-object v2, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->floatValue()F

    move-result p0

    return p0

    :cond_0
    invoke-static {v2}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->g:Lcom/batch/android/z0/a0$n;

    iget-object p0, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/batch/android/z0/a0;->d(Lcom/batch/android/z0/a0;)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_1
    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    long-to-float p0, v0

    return p0
.end method

.method public C()D
    .locals 3

    iget-object v0, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->f:Lcom/batch/android/z0/a0$n;

    iget-object v2, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {v2}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->g:Lcom/batch/android/z0/a0$n;

    iget-object p0, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/batch/android/z0/a0;->d(Lcom/batch/android/z0/a0;)D

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public E()B
    .locals 2

    iget-object v0, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->f:Lcom/batch/android/z0/a0$n;

    iget-object p0, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method public F()S
    .locals 2

    iget-object v0, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->f:Lcom/batch/android/z0/a0$n;

    iget-object p0, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public I()Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->f:Lcom/batch/android/z0/a0$n;

    iget-object v2, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    :cond_0
    invoke-static {v2}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->g:Lcom/batch/android/z0/a0$n;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/math/BigDecimal;

    iget-object p0, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->d(Lcom/batch/android/z0/a0;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public T()I
    .locals 2

    iget-object v0, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->f:Lcom/batch/android/z0/a0$n;

    iget-object p0, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public X()Lcom/batch/android/z0/u;
    .locals 0

    return-object p0
.end method

.method public t()J
    .locals 2

    iget-object v0, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    invoke-static {v0}, Lcom/batch/android/z0/a0;->b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;

    move-result-object v0

    sget-object v1, Lcom/batch/android/z0/a0$n;->f:Lcom/batch/android/z0/a0$n;

    iget-object p0, p0, Lcom/batch/android/z0/a0$b;->c:Lcom/batch/android/z0/a0;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {p0}, Lcom/batch/android/z0/a0;->a(Lcom/batch/android/z0/a0;)J

    move-result-wide v0

    return-wide v0
.end method
