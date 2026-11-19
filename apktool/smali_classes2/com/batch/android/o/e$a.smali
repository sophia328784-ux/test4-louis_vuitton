.class Lcom/batch/android/o/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/n1/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/o/e;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/o/e;


# direct methods
.method public constructor <init>(Lcom/batch/android/o/e;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/o/e$a;->a:Lcom/batch/android/o/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/o/e$a;Ljava/util/List;Lcom/batch/android/j1/g;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/batch/android/o/e$a;->a(Ljava/util/List;Lcom/batch/android/j1/g;)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;Lcom/batch/android/j1/g;)V
    .locals 1

    .line 26
    sget-object v0, Lcom/batch/android/j1/g;->b:Lcom/batch/android/j1/g;

    if-eq p2, v0, :cond_0

    .line 27
    iget-object p0, p0, Lcom/batch/android/o/e$a;->a:Lcom/batch/android/o/e;

    invoke-static {p0}, Lcom/batch/android/o/e;->c(Lcom/batch/android/o/e;)Lcom/batch/android/o/e$b;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/batch/android/o/e$b;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/batch/android/o/e$a;Ljava/util/List;Lcom/batch/android/j1/g;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/batch/android/o/e$a;->b(Ljava/util/List;Lcom/batch/android/j1/g;)V

    return-void
.end method

.method private synthetic b(Ljava/util/List;Lcom/batch/android/j1/g;)V
    .locals 1

    sget-object v0, Lcom/batch/android/j1/g;->b:Lcom/batch/android/j1/g;

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/o/e$a;->a:Lcom/batch/android/o/e;

    invoke-static {p0}, Lcom/batch/android/o/e;->c(Lcom/batch/android/o/e;)Lcom/batch/android/o/e$b;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/batch/android/o/e$b;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 28
    iget-object p0, p0, Lcom/batch/android/o/e$a;->a:Lcom/batch/android/o/e;

    invoke-static {p0}, Lcom/batch/android/o/e;->b(Lcom/batch/android/o/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public a(Lcom/batch/android/FailReason;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/FailReason;",
            "Ljava/util/List<",
            "Lcom/batch/android/o/b;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object p1, p0, Lcom/batch/android/o/e$a;->a:Lcom/batch/android/o/e;

    invoke-static {p1}, Lcom/batch/android/o/e;->a(Lcom/batch/android/o/e;)Lcom/batch/android/o/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/o/h;->c()V

    .line 25
    iget-object p1, p0, Lcom/batch/android/o/e$a;->a:Lcom/batch/android/o/e;

    iget-object p1, p1, Lcom/batch/android/o/e;->a:Lcom/batch/android/j1/e;

    new-instance v0, Lcom/batch/android/o/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/batch/android/o/i;-><init>(Lcom/batch/android/o/e$a;Ljava/util/List;I)V

    invoke-virtual {p1, v0}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/h;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/o/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/o/e$a;->a:Lcom/batch/android/o/e;

    invoke-static {v0}, Lcom/batch/android/o/e;->a(Lcom/batch/android/o/e;)Lcom/batch/android/o/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/o/h;->d()V

    iget-object v0, p0, Lcom/batch/android/o/e$a;->a:Lcom/batch/android/o/e;

    iget-object v0, v0, Lcom/batch/android/o/e;->a:Lcom/batch/android/j1/e;

    new-instance v1, Lcom/batch/android/o/i;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/batch/android/o/i;-><init>(Lcom/batch/android/o/e$a;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/h;)V

    return-void
.end method
