.class Lcom/batch/android/z0/a0$e;
.super Lcom/batch/android/z0/a0$d;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/z0/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic c:Lcom/batch/android/z0/a0;


# direct methods
.method private constructor <init>(Lcom/batch/android/z0/a0;)V
    .locals 1

    iput-object p1, p0, Lcom/batch/android/z0/a0$e;->c:Lcom/batch/android/z0/a0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/batch/android/z0/a0$d;-><init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/batch/android/z0/a0;Lcom/batch/android/z0/a0$a;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/batch/android/z0/a0$e;-><init>(Lcom/batch/android/z0/a0;)V

    return-void
.end method


# virtual methods
.method public A()Lcom/batch/android/z0/z;
    .locals 0

    sget-object p0, Lcom/batch/android/z0/z;->j:Lcom/batch/android/z0/z;

    return-object p0
.end method

.method public Z()Lcom/batch/android/z0/f;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$e;->l()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/z0/y;->a(Ljava/util/List;)Lcom/batch/android/z0/f;

    move-result-object p0

    return-object p0
.end method

.method public a(I)Lcom/batch/android/z0/x;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/batch/android/z0/a0$e;->l()Ljava/util/List;

    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 34
    invoke-static {}, Lcom/batch/android/z0/y;->d()Lcom/batch/android/z0/m;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/z0/x;

    return-object p0
.end method

.method public a(Lcom/batch/android/x0/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$e;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/batch/android/x0/j;->d(I)Lcom/batch/android/x0/j;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/z0/x;

    invoke-interface {v0, p1}, Lcom/batch/android/z0/x;->a(Lcom/batch/android/x0/j;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Lcom/batch/android/z0/a;
    .locals 0

    return-object p0
.end method

.method public get(I)Lcom/batch/android/z0/x;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$e;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/z0/x;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/batch/android/z0/x;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$e;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public l()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/z0/x;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/z0/a0$e;->c:Lcom/batch/android/z0/a0;

    invoke-static {p0}, Lcom/batch/android/z0/a0;->c(Lcom/batch/android/z0/a0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic m()Lcom/batch/android/z0/q;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$e;->Z()Lcom/batch/android/z0/f;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/z0/a0$e;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
