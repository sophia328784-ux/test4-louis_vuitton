.class public Lcom/batch/android/a1/d;
.super Lcom/batch/android/a1/b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z0/k;


# static fields
.field private static final c:Ljava/math/BigInteger;

.field private static final d:Ljava/math/BigInteger;

.field private static final e:Ljava/math/BigInteger;

.field private static final f:Ljava/math/BigInteger;

.field private static final g:Ljava/math/BigInteger;

.field private static final h:Ljava/math/BigInteger;

.field private static final i:Ljava/math/BigInteger;

.field private static final j:Ljava/math/BigInteger;


# instance fields
.field private final b:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x80

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/batch/android/a1/d;->c:Ljava/math/BigInteger;

    const-wide/16 v0, 0x7f

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/batch/android/a1/d;->d:Ljava/math/BigInteger;

    const-wide/16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/batch/android/a1/d;->e:Ljava/math/BigInteger;

    const-wide/16 v0, 0x7fff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/batch/android/a1/d;->f:Ljava/math/BigInteger;

    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/batch/android/a1/d;->g:Ljava/math/BigInteger;

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/batch/android/a1/d;->h:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/batch/android/a1/d;->i:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/batch/android/a1/d;->j:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/a1/b;-><init>()V

    iput-object p1, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    return-void
.end method

.method public static a(Lcom/batch/android/z0/r;)Lcom/batch/android/x0/c;
    .locals 1

    invoke-interface {p0}, Lcom/batch/android/z0/r;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/batch/android/x0/c;->v:Lcom/batch/android/x0/c;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/batch/android/z0/r;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/batch/android/x0/c;->w:Lcom/batch/android/x0/c;

    return-object p0

    :cond_1
    invoke-interface {p0}, Lcom/batch/android/z0/r;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/batch/android/x0/c;->x:Lcom/batch/android/x0/c;

    return-object p0

    :cond_2
    invoke-interface {p0}, Lcom/batch/android/z0/r;->V()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/batch/android/x0/c;->y:Lcom/batch/android/x0/c;

    return-object p0

    :cond_3
    sget-object p0, Lcom/batch/android/x0/c;->u:Lcom/batch/android/x0/c;

    return-object p0
.end method


# virtual methods
.method public A()Lcom/batch/android/z0/z;
    .locals 0

    sget-object p0, Lcom/batch/android/z0/z;->f:Lcom/batch/android/z0/z;

    return-object p0
.end method

.method public B()F
    .locals 0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->floatValue()F

    move-result p0

    return p0
.end method

.method public C()D
    .locals 2

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public E()B
    .locals 0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    return p0
.end method

.method public F()S
    .locals 0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    return p0
.end method

.method public H()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    return-object p0
.end method

.method public I()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    return-object p0
.end method

.method public J()J
    .locals 2

    invoke-virtual {p0}, Lcom/batch/android/a1/d;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Lcom/batch/android/x0/f;

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Lcom/batch/android/x0/f;-><init>(Ljava/math/BigInteger;)V

    throw v0
.end method

.method public bridge synthetic L()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->L()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic N()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->N()Z

    move-result p0

    return p0
.end method

.method public O()Z
    .locals 2

    iget-object v0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    sget-object v1, Lcom/batch/android/a1/d;->c:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    sget-object v0, Lcom/batch/android/a1/d;->d:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic P()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->P()Z

    move-result p0

    return p0
.end method

.method public Q()Lcom/batch/android/x0/c;
    .locals 0

    invoke-static {p0}, Lcom/batch/android/a1/d;->a(Lcom/batch/android/z0/r;)Lcom/batch/android/x0/c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic R()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->R()Z

    move-result p0

    return p0
.end method

.method public T()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public V()Z
    .locals 2

    iget-object v0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    sget-object v1, Lcom/batch/android/a1/d;->i:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    sget-object v0, Lcom/batch/android/a1/d;->j:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic W()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->W()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic X()Lcom/batch/android/z0/u;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/d;->a0()Lcom/batch/android/z0/n;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic Y()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->Y()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic Z()Lcom/batch/android/z0/i;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->Z()Lcom/batch/android/z0/i;

    move-result-object p0

    return-object p0
.end method

.method public a()Lcom/batch/android/z0/k;
    .locals 0

    .line 40
    return-object p0
.end method

.method public bridge synthetic a()Lcom/batch/android/z0/r;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/batch/android/a1/d;->a()Lcom/batch/android/z0/k;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/batch/android/x0/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Lcom/batch/android/x0/j;->a(Ljava/math/BigInteger;)Lcom/batch/android/x0/j;

    return-void
.end method

.method public a0()Lcom/batch/android/z0/n;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic b()Lcom/batch/android/z0/j;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->b()Lcom/batch/android/z0/j;

    move-result-object p0

    return-object p0
.end method

.method public b0()Lcom/batch/android/z0/k;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic c()Lcom/batch/android/z0/f;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->c()Lcom/batch/android/z0/f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d()Lcom/batch/android/z0/l;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->d()Lcom/batch/android/z0/l;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e()Lcom/batch/android/z0/g;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->e()Lcom/batch/android/z0/g;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/batch/android/z0/x;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/batch/android/z0/x;

    invoke-interface {p1}, Lcom/batch/android/z0/x;->o()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Lcom/batch/android/z0/x;->a()Lcom/batch/android/z0/r;

    move-result-object p1

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-interface {p1}, Lcom/batch/android/z0/u;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic f()Lcom/batch/android/z0/m;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->f()Lcom/batch/android/z0/m;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic h()Lcom/batch/android/z0/p;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->h()Lcom/batch/android/z0/p;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Lcom/batch/android/a1/d;->g:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    sget-object v1, Lcom/batch/android/a1/d;->h:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    sget-object v0, Lcom/batch/android/a1/d;->i:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    sget-object v1, Lcom/batch/android/a1/d;->j:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const/16 p0, 0x20

    ushr-long v2, v0, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic i()Lcom/batch/android/z0/o;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->i()Lcom/batch/android/z0/o;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic j()Lcom/batch/android/z0/h;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->j()Lcom/batch/android/z0/h;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic m()Lcom/batch/android/z0/q;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/d;->b0()Lcom/batch/android/z0/k;

    move-result-object p0

    return-object p0
.end method

.method public n()S
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/a1/d;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    return p0

    :cond_0
    new-instance v0, Lcom/batch/android/x0/f;

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Lcom/batch/android/x0/f;-><init>(Ljava/math/BigInteger;)V

    throw v0
.end method

.method public bridge synthetic o()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->o()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic p()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->p()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic r()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->r()Z

    move-result p0

    return p0
.end method

.method public s()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public t()J
    .locals 2

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/d;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Z
    .locals 2

    iget-object v0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    sget-object v1, Lcom/batch/android/a1/d;->g:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    sget-object v0, Lcom/batch/android/a1/d;->h:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public v()Z
    .locals 2

    iget-object v0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    sget-object v1, Lcom/batch/android/a1/d;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    sget-object v0, Lcom/batch/android/a1/d;->f:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic w()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->w()Z

    move-result p0

    return p0
.end method

.method public x()B
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/a1/d;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    return p0

    :cond_0
    new-instance v0, Lcom/batch/android/x0/f;

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Lcom/batch/android/x0/f;-><init>(Ljava/math/BigInteger;)V

    throw v0
.end method

.method public bridge synthetic y()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->y()Z

    move-result p0

    return p0
.end method

.method public z()I
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/a1/d;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Lcom/batch/android/x0/f;

    iget-object p0, p0, Lcom/batch/android/a1/d;->b:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Lcom/batch/android/x0/f;-><init>(Ljava/math/BigInteger;)V

    throw v0
.end method
