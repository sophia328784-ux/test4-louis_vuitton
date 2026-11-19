.class public Lcom/batch/android/o1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/n1/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/FailReason;)V
    .locals 2

    .line 52
    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object p0

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/v0/l;->d(J)V

    return-void
.end method

.method public a(Lcom/batch/android/g1/b;)V
    .locals 3

    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object p0

    invoke-virtual {p1}, Lcom/batch/android/g1/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/batch/android/g1/b;->e()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/batch/android/v0/l;->a(Ljava/lang/String;J)V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/batch/android/g1/b;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string v0, "app.project.key"

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
