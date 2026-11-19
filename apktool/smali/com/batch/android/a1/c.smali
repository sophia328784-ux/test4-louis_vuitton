.class public Lcom/batch/android/a1/c;
.super Lcom/batch/android/a1/b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/a1/c$b;,
        Lcom/batch/android/a1/c$a;
    }
.end annotation


# static fields
.field private static final c:Lcom/batch/android/a1/c;


# instance fields
.field private final b:[Lcom/batch/android/z0/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/batch/android/a1/c;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/batch/android/z0/x;

    invoke-direct {v0, v1}, Lcom/batch/android/a1/c;-><init>([Lcom/batch/android/z0/x;)V

    sput-object v0, Lcom/batch/android/a1/c;->c:Lcom/batch/android/a1/c;

    return-void
.end method

.method public constructor <init>([Lcom/batch/android/z0/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/a1/b;-><init>()V

    iput-object p1, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/batch/android/z0/x;)V
    .locals 1

    invoke-interface {p1}, Lcom/batch/android/z0/x;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/batch/android/z0/x;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static b0()Lcom/batch/android/z0/f;
    .locals 1

    sget-object v0, Lcom/batch/android/a1/c;->c:Lcom/batch/android/a1/c;

    return-object v0
.end method


# virtual methods
.method public A()Lcom/batch/android/z0/z;
    .locals 0

    sget-object p0, Lcom/batch/android/z0/z;->j:Lcom/batch/android/z0/z;

    return-object p0
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

.method public bridge synthetic P()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->P()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic R()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->R()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic W()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->W()Z

    move-result p0

    return p0
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

.method public bridge synthetic a()Lcom/batch/android/z0/k;
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/batch/android/a1/b;->a()Lcom/batch/android/z0/k;

    move-result-object p0

    return-object p0
.end method

.method public a(I)Lcom/batch/android/z0/x;
    .locals 1

    .line 22
    iget-object p0, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    array-length v0, p0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 23
    aget-object p0, p0, p1

    return-object p0

    .line 24
    :cond_0
    invoke-static {}, Lcom/batch/android/a1/k;->b0()Lcom/batch/android/z0/m;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/batch/android/x0/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/batch/android/x0/j;->d(I)Lcom/batch/android/x0/j;

    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 27
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/batch/android/z0/x;->a(Lcom/batch/android/x0/j;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic a0()Lcom/batch/android/z0/n;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->a0()Lcom/batch/android/z0/n;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b()Lcom/batch/android/z0/j;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->b()Lcom/batch/android/z0/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c()Lcom/batch/android/z0/a;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/c;->c()Lcom/batch/android/z0/f;

    move-result-object p0

    return-object p0
.end method

.method public c()Lcom/batch/android/z0/f;
    .locals 0

    .line 5
    return-object p0
.end method

.method public c0()Lcom/batch/android/z0/f;
    .locals 0

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
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/batch/android/z0/x;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/batch/android/z0/x;

    instance-of v1, p1, Lcom/batch/android/a1/c;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/batch/android/a1/c;

    iget-object p0, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    iget-object p1, p1, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    invoke-interface {p1}, Lcom/batch/android/z0/x;->L()Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-interface {p1}, Lcom/batch/android/z0/x;->c()Lcom/batch/android/z0/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/batch/android/a1/c;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/batch/android/z0/a;->size()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-interface {p1}, Lcom/batch/android/z0/a;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    aget-object v3, v3, v1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/batch/android/z0/x;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v2

    :cond_7
    return v0
.end method

.method public bridge synthetic f()Lcom/batch/android/z0/m;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->f()Lcom/batch/android/z0/m;

    move-result-object p0

    return-object p0
.end method

.method public get(I)Lcom/batch/android/z0/x;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    aget-object p0, p0, p1

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public bridge synthetic i()Lcom/batch/android/z0/o;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->i()Lcom/batch/android/z0/o;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/batch/android/z0/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/batch/android/a1/c$b;

    iget-object p0, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    invoke-direct {v0, p0}, Lcom/batch/android/a1/c$b;-><init>([Lcom/batch/android/z0/x;)V

    return-object v0
.end method

.method public bridge synthetic j()Lcom/batch/android/z0/h;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->j()Lcom/batch/android/z0/h;

    move-result-object p0

    return-object p0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/z0/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/batch/android/a1/c$a;

    iget-object p0, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    invoke-direct {v0, p0}, Lcom/batch/android/a1/c$a;-><init>([Lcom/batch/android/z0/x;)V

    return-object v0
.end method

.method public bridge synthetic m()Lcom/batch/android/z0/q;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/c;->c0()Lcom/batch/android/z0/f;

    move-result-object p0

    return-object p0
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
    .locals 3

    iget-object v0, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string p0, "[]"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/batch/android/z0/x;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/batch/android/z0/x;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    array-length p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string p0, "[]"

    return-object p0

    :cond_0
    const-string v0, "["

    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/batch/android/a1/c;->a(Ljava/lang/StringBuilder;Lcom/batch/android/z0/x;)V

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/batch/android/a1/c;->b:[Lcom/batch/android/z0/x;

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Lcom/batch/android/a1/c;->a(Ljava/lang/StringBuilder;Lcom/batch/android/z0/x;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic w()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->w()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic y()Z
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->y()Z

    move-result p0

    return p0
.end method
