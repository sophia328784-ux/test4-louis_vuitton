.class public Lcom/batch/android/z0/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z0/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/z0/a0$n;,
        Lcom/batch/android/z0/a0$l;,
        Lcom/batch/android/z0/a0$g;,
        Lcom/batch/android/z0/a0$j;,
        Lcom/batch/android/z0/a0$i;,
        Lcom/batch/android/z0/a0$f;,
        Lcom/batch/android/z0/a0$m;,
        Lcom/batch/android/z0/a0$e;,
        Lcom/batch/android/z0/a0$k;,
        Lcom/batch/android/z0/a0$h;,
        Lcom/batch/android/z0/a0$d;,
        Lcom/batch/android/z0/a0$c;,
        Lcom/batch/android/z0/a0$b;
    }
.end annotation


# static fields
.field private static final p:Ljava/math/BigInteger;

.field private static final q:Ljava/math/BigInteger;

.field private static final r:J = -0x80L

.field private static final s:J = 0x7fL

.field private static final t:J = -0x8000L

.field private static final u:J = 0x7fffL

.field private static final v:J = -0x80000000L

.field private static final w:J = 0x7fffffffL


# instance fields
.field private final b:Lcom/batch/android/z0/a0$l;

.field private final c:Lcom/batch/android/z0/a0$g;

.field private final d:Lcom/batch/android/z0/a0$j;

.field private final e:Lcom/batch/android/z0/a0$i;

.field private final f:Lcom/batch/android/z0/a0$f;

.field private final g:Lcom/batch/android/z0/a0$m;

.field private final h:Lcom/batch/android/z0/a0$e;

.field private final i:Lcom/batch/android/z0/a0$k;

.field private final j:Lcom/batch/android/z0/a0$h;

.field private k:Lcom/batch/android/z0/a0$n;

.field private l:J

.field private m:D

.field private n:Ljava/lang/Object;

.field private o:Lcom/batch/android/z0/a0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/batch/android/z0/a0;->p:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/batch/android/z0/a0;->q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/batch/android/z0/a0$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/batch/android/z0/a0$l;-><init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V

    iput-object v0, p0, Lcom/batch/android/z0/a0;->b:Lcom/batch/android/z0/a0$l;

    new-instance v0, Lcom/batch/android/z0/a0$g;

    invoke-direct {v0, p0, v1}, Lcom/batch/android/z0/a0$g;-><init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V

    iput-object v0, p0, Lcom/batch/android/z0/a0;->c:Lcom/batch/android/z0/a0$g;

    new-instance v0, Lcom/batch/android/z0/a0$j;

    invoke-direct {v0, p0, v1}, Lcom/batch/android/z0/a0$j;-><init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V

    iput-object v0, p0, Lcom/batch/android/z0/a0;->d:Lcom/batch/android/z0/a0$j;

    new-instance v0, Lcom/batch/android/z0/a0$i;

    invoke-direct {v0, p0, v1}, Lcom/batch/android/z0/a0$i;-><init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V

    iput-object v0, p0, Lcom/batch/android/z0/a0;->e:Lcom/batch/android/z0/a0$i;

    new-instance v0, Lcom/batch/android/z0/a0$f;

    invoke-direct {v0, p0, v1}, Lcom/batch/android/z0/a0$f;-><init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V

    iput-object v0, p0, Lcom/batch/android/z0/a0;->f:Lcom/batch/android/z0/a0$f;

    new-instance v0, Lcom/batch/android/z0/a0$m;

    invoke-direct {v0, p0, v1}, Lcom/batch/android/z0/a0$m;-><init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V

    iput-object v0, p0, Lcom/batch/android/z0/a0;->g:Lcom/batch/android/z0/a0$m;

    new-instance v0, Lcom/batch/android/z0/a0$e;

    invoke-direct {v0, p0, v1}, Lcom/batch/android/z0/a0$e;-><init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V

    iput-object v0, p0, Lcom/batch/android/z0/a0;->h:Lcom/batch/android/z0/a0$e;

    new-instance v0, Lcom/batch/android/z0/a0$k;

    invoke-direct {v0, p0, v1}, Lcom/batch/android/z0/a0$k;-><init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V

    iput-object v0, p0, Lcom/batch/android/z0/a0;->i:Lcom/batch/android/z0/a0$k;

    new-instance v0, Lcom/batch/android/z0/a0$h;

    invoke-direct {v0, p0, v1}, Lcom/batch/android/z0/a0$h;-><init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V

    iput-object v0, p0, Lcom/batch/android/z0/a0;->j:Lcom/batch/android/z0/a0$h;

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->Z()Lcom/batch/android/z0/a0;

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/z0/a0;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/batch/android/z0/a0;->l:J

    return-wide v0
.end method

.method public static synthetic b(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0$n;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/batch/android/z0/a0;->k:Lcom/batch/android/z0/a0$n;

    return-object p0
.end method

.method public static synthetic c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/batch/android/z0/a0;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic d(Lcom/batch/android/z0/a0;)D
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/batch/android/z0/a0;->m:D

    return-wide v0
.end method


# virtual methods
.method public A()Lcom/batch/android/z0/z;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/z0/a0;->k:Lcom/batch/android/z0/a0$n;

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$n;->b()Lcom/batch/android/z0/z;

    move-result-object p0

    return-object p0
.end method

.method public D()Lcom/batch/android/z0/d;
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    check-cast p0, Lcom/batch/android/z0/d;

    return-object p0

    :cond_0
    new-instance p0, Lcom/batch/android/x0/m;

    invoke-direct {p0}, Lcom/batch/android/x0/m;-><init>()V

    throw p0
.end method

.method public L()Z
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->A()Lcom/batch/android/z0/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/z0/z;->b()Z

    move-result p0

    return p0
.end method

.method public N()Z
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->A()Lcom/batch/android/z0/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/z0/z;->e()Z

    move-result p0

    return p0
.end method

.method public P()Z
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->A()Lcom/batch/android/z0/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/z0/z;->d()Z

    move-result p0

    return p0
.end method

.method public R()Z
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->A()Lcom/batch/android/z0/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/z0/z;->l()Z

    move-result p0

    return p0
.end method

.method public W()Z
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->A()Lcom/batch/android/z0/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/z0/z;->j()Z

    move-result p0

    return p0
.end method

.method public X()Lcom/batch/android/z0/u;
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    check-cast p0, Lcom/batch/android/z0/u;

    return-object p0

    :cond_0
    new-instance p0, Lcom/batch/android/x0/m;

    invoke-direct {p0}, Lcom/batch/android/x0/m;-><init>()V

    throw p0
.end method

.method public Y()Z
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->A()Lcom/batch/android/z0/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/z0/z;->f()Z

    move-result p0

    return p0
.end method

.method public Z()Lcom/batch/android/z0/a0;
    .locals 1

    sget-object v0, Lcom/batch/android/z0/a0$n;->c:Lcom/batch/android/z0/a0$n;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->k:Lcom/batch/android/z0/a0$n;

    iget-object v0, p0, Lcom/batch/android/z0/a0;->b:Lcom/batch/android/z0/a0$l;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    return-object p0
.end method

.method public a(B[B)Lcom/batch/android/z0/a0;
    .locals 1

    .line 66
    sget-object v0, Lcom/batch/android/z0/a0$n;->l:Lcom/batch/android/z0/a0$n;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->k:Lcom/batch/android/z0/a0$n;

    .line 67
    iget-object v0, p0, Lcom/batch/android/z0/a0;->j:Lcom/batch/android/z0/a0$h;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    .line 68
    invoke-static {p1, p2}, Lcom/batch/android/z0/y;->a(B[B)Lcom/batch/android/z0/i;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/z0/a0;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public a(D)Lcom/batch/android/z0/a0;
    .locals 1

    .line 49
    sget-object v0, Lcom/batch/android/z0/a0$n;->g:Lcom/batch/android/z0/a0$n;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->k:Lcom/batch/android/z0/a0$n;

    .line 50
    iget-object v0, p0, Lcom/batch/android/z0/a0;->e:Lcom/batch/android/z0/a0$i;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    .line 51
    iput-wide p1, p0, Lcom/batch/android/z0/a0;->m:D

    double-to-long p1, p1

    .line 52
    iput-wide p1, p0, Lcom/batch/android/z0/a0;->l:J

    return-object p0
.end method

.method public a(F)Lcom/batch/android/z0/a0;
    .locals 2

    .line 53
    sget-object v0, Lcom/batch/android/z0/a0$n;->g:Lcom/batch/android/z0/a0$n;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->k:Lcom/batch/android/z0/a0$n;

    .line 54
    iget-object v0, p0, Lcom/batch/android/z0/a0;->e:Lcom/batch/android/z0/a0$i;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    float-to-long v0, p1

    .line 55
    iput-wide v0, p0, Lcom/batch/android/z0/a0;->l:J

    return-object p0
.end method

.method public a(J)Lcom/batch/android/z0/a0;
    .locals 1

    .line 45
    sget-object v0, Lcom/batch/android/z0/a0$n;->e:Lcom/batch/android/z0/a0$n;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->k:Lcom/batch/android/z0/a0$n;

    .line 46
    iget-object v0, p0, Lcom/batch/android/z0/a0;->d:Lcom/batch/android/z0/a0$j;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    .line 47
    iput-wide p1, p0, Lcom/batch/android/z0/a0;->l:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/batch/android/z0/a0;
    .locals 1

    .line 59
    sget-object v0, Lcom/batch/android/x0/h;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/batch/android/z0/a0;->b([B)Lcom/batch/android/z0/a0;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/math/BigInteger;)Lcom/batch/android/z0/a0;
    .locals 2

    sget-object v0, Lcom/batch/android/z0/a0;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/batch/android/z0/a0;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/batch/android/z0/a0$n;->e:Lcom/batch/android/z0/a0$n;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->k:Lcom/batch/android/z0/a0$n;

    iget-object v0, p0, Lcom/batch/android/z0/a0;->d:Lcom/batch/android/z0/a0$j;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batch/android/z0/a0;->l:J

    return-object p0

    :cond_0
    sget-object v0, Lcom/batch/android/z0/a0$n;->f:Lcom/batch/android/z0/a0$n;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->k:Lcom/batch/android/z0/a0$n;

    iget-object v0, p0, Lcom/batch/android/z0/a0;->d:Lcom/batch/android/z0/a0$j;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    iput-object p1, p0, Lcom/batch/android/z0/a0;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/batch/android/z0/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/z0/x;",
            ">;)",
            "Lcom/batch/android/z0/a0;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/batch/android/z0/a0$n;->j:Lcom/batch/android/z0/a0$n;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->k:Lcom/batch/android/z0/a0$n;

    .line 61
    iget-object v0, p0, Lcom/batch/android/z0/a0;->h:Lcom/batch/android/z0/a0$e;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    .line 62
    iput-object p1, p0, Lcom/batch/android/z0/a0;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/batch/android/z0/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/batch/android/z0/x;",
            "Lcom/batch/android/z0/x;",
            ">;)",
            "Lcom/batch/android/z0/a0;"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/batch/android/z0/a0$n;->k:Lcom/batch/android/z0/a0$n;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->k:Lcom/batch/android/z0/a0$n;

    .line 64
    iget-object v0, p0, Lcom/batch/android/z0/a0;->i:Lcom/batch/android/z0/a0$k;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    .line 65
    iput-object p1, p0, Lcom/batch/android/z0/a0;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Z)Lcom/batch/android/z0/a0;
    .locals 2

    .line 42
    sget-object v0, Lcom/batch/android/z0/a0$n;->d:Lcom/batch/android/z0/a0$n;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->k:Lcom/batch/android/z0/a0$n;

    .line 43
    iget-object v0, p0, Lcom/batch/android/z0/a0;->c:Lcom/batch/android/z0/a0$g;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 44
    :goto_0
    iput-wide v0, p0, Lcom/batch/android/z0/a0;->l:J

    return-object p0
.end method

.method public a([B)Lcom/batch/android/z0/a0;
    .locals 1

    .line 56
    sget-object v0, Lcom/batch/android/z0/a0$n;->h:Lcom/batch/android/z0/a0$n;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->k:Lcom/batch/android/z0/a0$n;

    .line 57
    iget-object v0, p0, Lcom/batch/android/z0/a0;->f:Lcom/batch/android/z0/a0$f;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    .line 58
    iput-object p1, p0, Lcom/batch/android/z0/a0;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public a()Lcom/batch/android/z0/r;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object p0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    check-cast p0, Lcom/batch/android/z0/r;

    return-object p0

    .line 72
    :cond_0
    new-instance p0, Lcom/batch/android/x0/m;

    invoke-direct {p0}, Lcom/batch/android/x0/m;-><init>()V

    throw p0
.end method

.method public a(Lcom/batch/android/x0/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    invoke-interface {p0, p1}, Lcom/batch/android/z0/x;->a(Lcom/batch/android/x0/j;)V

    return-void
.end method

.method public b([B)Lcom/batch/android/z0/a0;
    .locals 1

    .line 17
    sget-object v0, Lcom/batch/android/z0/a0$n;->i:Lcom/batch/android/z0/a0$n;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->k:Lcom/batch/android/z0/a0$n;

    .line 18
    iget-object v0, p0, Lcom/batch/android/z0/a0;->g:Lcom/batch/android/z0/a0$m;

    iput-object v0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    .line 19
    iput-object p1, p0, Lcom/batch/android/z0/a0;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public b()Lcom/batch/android/z0/e;
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    check-cast p0, Lcom/batch/android/z0/e;

    return-object p0

    :cond_0
    new-instance p0, Lcom/batch/android/x0/m;

    invoke-direct {p0}, Lcom/batch/android/x0/m;-><init>()V

    throw p0
.end method

.method public c()Lcom/batch/android/z0/a;
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    check-cast p0, Lcom/batch/android/z0/a;

    return-object p0

    :cond_0
    new-instance p0, Lcom/batch/android/x0/m;

    invoke-direct {p0}, Lcom/batch/android/x0/m;-><init>()V

    throw p0
.end method

.method public d()Lcom/batch/android/z0/s;
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    check-cast p0, Lcom/batch/android/z0/s;

    return-object p0

    :cond_0
    new-instance p0, Lcom/batch/android/x0/m;

    invoke-direct {p0}, Lcom/batch/android/x0/m;-><init>()V

    throw p0
.end method

.method public e()Lcom/batch/android/z0/b;
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    check-cast p0, Lcom/batch/android/z0/b;

    return-object p0

    :cond_0
    new-instance p0, Lcom/batch/android/x0/m;

    invoke-direct {p0}, Lcom/batch/android/x0/m;-><init>()V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->m()Lcom/batch/android/z0/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f()Lcom/batch/android/z0/t;
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    check-cast p0, Lcom/batch/android/z0/t;

    return-object p0

    :cond_0
    new-instance p0, Lcom/batch/android/x0/m;

    invoke-direct {p0}, Lcom/batch/android/x0/m;-><init>()V

    throw p0
.end method

.method public h()Lcom/batch/android/z0/w;
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    check-cast p0, Lcom/batch/android/z0/w;

    return-object p0

    :cond_0
    new-instance p0, Lcom/batch/android/x0/m;

    invoke-direct {p0}, Lcom/batch/android/x0/m;-><init>()V

    throw p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->m()Lcom/batch/android/z0/q;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public i()Lcom/batch/android/z0/v;
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    check-cast p0, Lcom/batch/android/z0/v;

    return-object p0

    :cond_0
    new-instance p0, Lcom/batch/android/x0/m;

    invoke-direct {p0}, Lcom/batch/android/x0/m;-><init>()V

    throw p0
.end method

.method public j()Lcom/batch/android/z0/c;
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    check-cast p0, Lcom/batch/android/z0/c;

    return-object p0

    :cond_0
    new-instance p0, Lcom/batch/android/x0/m;

    invoke-direct {p0}, Lcom/batch/android/x0/m;-><init>()V

    throw p0
.end method

.method public m()Lcom/batch/android/z0/q;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/z0/a0;->o:Lcom/batch/android/z0/a0$d;

    invoke-interface {p0}, Lcom/batch/android/z0/x;->m()Lcom/batch/android/z0/q;

    move-result-object p0

    return-object p0
.end method

.method public o()Z
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->A()Lcom/batch/android/z0/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/z0/z;->g()Z

    move-result p0

    return p0
.end method

.method public p()Z
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->A()Lcom/batch/android/z0/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/z0/z;->c()Z

    move-result p0

    return p0
.end method

.method public r()Z
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->A()Lcom/batch/android/z0/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/z0/z;->h()Z

    move-result p0

    return p0
.end method

.method public s()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->m()Lcom/batch/android/z0/q;

    move-result-object p0

    invoke-interface {p0}, Lcom/batch/android/z0/x;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->m()Lcom/batch/android/z0/q;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public w()Z
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->A()Lcom/batch/android/z0/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/z0/z;->i()Z

    move-result p0

    return p0
.end method

.method public y()Z
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0;->A()Lcom/batch/android/z0/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/z0/z;->k()Z

    move-result p0

    return p0
.end method
