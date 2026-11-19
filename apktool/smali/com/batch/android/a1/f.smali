.class public Lcom/batch/android/a1/f;
.super Lcom/batch/android/a1/b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z0/h;


# static fields
.field public static final c:Lcom/batch/android/z0/h;

.field public static final d:Lcom/batch/android/z0/h;


# instance fields
.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/batch/android/a1/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/batch/android/a1/f;-><init>(Z)V

    sput-object v0, Lcom/batch/android/a1/f;->c:Lcom/batch/android/z0/h;

    new-instance v0, Lcom/batch/android/a1/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/batch/android/a1/f;-><init>(Z)V

    sput-object v0, Lcom/batch/android/a1/f;->d:Lcom/batch/android/z0/h;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/a1/b;-><init>()V

    iput-boolean p1, p0, Lcom/batch/android/a1/f;->b:Z

    return-void
.end method


# virtual methods
.method public A()Lcom/batch/android/z0/z;
    .locals 0

    sget-object p0, Lcom/batch/android/z0/z;->e:Lcom/batch/android/z0/z;

    return-object p0
.end method

.method public K()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/a1/f;->b:Z

    return p0
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

    .line 6
    invoke-super {p0}, Lcom/batch/android/a1/b;->a()Lcom/batch/android/z0/k;

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

    iget-boolean p0, p0, Lcom/batch/android/a1/f;->b:Z

    invoke-virtual {p1, p0}, Lcom/batch/android/x0/j;->a(Z)Lcom/batch/android/x0/j;

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

.method public b0()Lcom/batch/android/z0/h;
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
    .locals 3

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

    invoke-interface {p1}, Lcom/batch/android/z0/x;->P()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/batch/android/a1/f;->b:Z

    invoke-interface {p1}, Lcom/batch/android/z0/x;->j()Lcom/batch/android/z0/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/batch/android/z0/c;->K()Z

    move-result p1

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v2
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
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/a1/f;->b:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    return p0

    :cond_0
    const/16 p0, 0x4d5

    return p0
.end method

.method public bridge synthetic i()Lcom/batch/android/z0/o;
    .locals 0

    invoke-super {p0}, Lcom/batch/android/a1/b;->i()Lcom/batch/android/z0/o;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic j()Lcom/batch/android/z0/c;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/f;->j()Lcom/batch/android/z0/h;

    move-result-object p0

    return-object p0
.end method

.method public j()Lcom/batch/android/z0/h;
    .locals 0

    .line 5
    return-object p0
.end method

.method public bridge synthetic m()Lcom/batch/android/z0/q;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/f;->b0()Lcom/batch/android/z0/h;

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
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/a1/f;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/a1/f;->s()Ljava/lang/String;

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
