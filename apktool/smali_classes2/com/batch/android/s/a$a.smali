.class Lcom/batch/android/s/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/n1/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/s/a;->a(Ljava/util/List;Lcom/batch/android/s/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/s/a$b;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/batch/android/s/a;


# direct methods
.method public constructor <init>(Lcom/batch/android/s/a;Lcom/batch/android/s/a$b;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/batch/android/s/a$a;->c:Lcom/batch/android/s/a;

    iput-object p2, p0, Lcom/batch/android/s/a$a;->a:Lcom/batch/android/s/a$b;

    iput-object p3, p0, Lcom/batch/android/s/a$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/e/o0$d;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/batch/android/s/a$a;->c:Lcom/batch/android/s/a;

    invoke-virtual {p1}, Lcom/batch/android/e/o0$d;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/batch/android/s/a;->a(I)V

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/batch/android/s/a$a;->a:Lcom/batch/android/s/a$b;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/batch/android/s/a$b;->a(Lcom/batch/android/t/b;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/s/a$a;->c:Lcom/batch/android/s/a;

    invoke-virtual {v0}, Lcom/batch/android/s/a;->m()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/s/a$a;->a:Lcom/batch/android/s/a$b;

    invoke-interface {p0, v1}, Lcom/batch/android/s/a$b;->a(Lcom/batch/android/t/b;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/batch/android/s/a$a;->c:Lcom/batch/android/s/a;

    iget-object v2, p0, Lcom/batch/android/s/a$a;->b:Ljava/util/List;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p1, v3}, Lcom/batch/android/s/a;->a(Ljava/util/List;Ljava/util/List;Z)V

    iget-object p1, p0, Lcom/batch/android/s/a$a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    iget-object v0, p0, Lcom/batch/android/s/a$a;->a:Lcom/batch/android/s/a$b;

    if-eqz p1, :cond_1

    invoke-interface {v0, v1}, Lcom/batch/android/s/a$b;->a(Lcom/batch/android/t/b;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/batch/android/s/a$a;->b:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/t/b;

    invoke-interface {v0, p0}, Lcom/batch/android/s/a$b;->a(Lcom/batch/android/t/b;)V

    return-void
.end method
