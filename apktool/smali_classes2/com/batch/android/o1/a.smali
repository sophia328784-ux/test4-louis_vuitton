.class public Lcom/batch/android/o1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/n1/a;


# static fields
.field private static final a:J = 0x3a98L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/FailReason;)V
    .locals 2

    .line 155
    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object p0

    const-wide/16 v0, 0x3a98

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/v0/l;->c(J)V

    return-void
.end method

.method public a(Lcom/batch/android/g1/a;)V
    .locals 9

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sget-object v2, Lcom/batch/android/o1/a$a;->a:[I

    invoke-virtual {p1}, Lcom/batch/android/g1/a;->c()Lcom/batch/android/g1/a$a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    const/4 v4, 0x3

    const-wide/16 v5, 0x3a98

    if-eq v2, v4, :cond_2

    const/4 p0, 0x4

    if-eq v2, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v7, p1, Lcom/batch/android/g1/a;->d:J

    cmp-long p0, v7, v0

    if-gtz p0, :cond_1

    :goto_0
    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Lcom/batch/android/v0/l;->c(J)V

    goto :goto_3

    :cond_1
    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object p0

    iget-wide v0, p1, Lcom/batch/android/g1/a;->d:J

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/v0/l;->a(J)V

    goto :goto_3

    :cond_2
    iget-object v2, p1, Lcom/batch/android/g1/a;->e:Ljava/lang/Long;

    if-nez v2, :cond_3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-gez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, v2

    :goto_1
    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/v0/l;->c(J)V

    goto :goto_3

    :cond_5
    iget-object v2, p1, Lcom/batch/android/g1/a;->e:Ljava/lang/Long;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-gez v0, :cond_6

    goto :goto_2

    :cond_6
    move-object p0, v2

    :cond_7
    :goto_2
    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/v0/l;->d(J)V

    :cond_8
    :goto_3
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/batch/android/g1/a;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string v0, "app.project.key"

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0, v0, p1, v3}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/batch/android/n/x;->a()Lcom/batch/android/v0/i;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcom/batch/android/v0/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method
