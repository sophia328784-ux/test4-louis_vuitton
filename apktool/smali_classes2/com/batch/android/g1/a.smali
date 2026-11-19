.class public Lcom/batch/android/g1/a;
.super Lcom/batch/android/g1/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/g1/a$a;
    }
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/Long;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/batch/android/f1/f;->f:Lcom/batch/android/f1/f;

    invoke-direct {p0, v0, p1}, Lcom/batch/android/g1/e;-><init>(Lcom/batch/android/f1/f;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/batch/android/g1/a;->d:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/batch/android/g1/a;->e:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/batch/android/g1/a;->d:J

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/batch/android/g1/a;->e:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/g1/a;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/g1/a;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/batch/android/g1/a$a;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/g1/a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object p0, Lcom/batch/android/g1/a$a;->f:Lcom/batch/android/g1/a$a;

    return-object p0

    :cond_0
    const-string v1, "OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/batch/android/g1/a$a;->b:Lcom/batch/android/g1/a$a;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/batch/android/g1/a;->c:Ljava/lang/String;

    const-string v1, "BUMP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/batch/android/g1/a$a;->c:Lcom/batch/android/g1/a$a;

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/batch/android/g1/a;->c:Ljava/lang/String;

    const-string v1, "RECHECK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/batch/android/g1/a$a;->d:Lcom/batch/android/g1/a$a;

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/batch/android/g1/a;->c:Ljava/lang/String;

    const-string v0, "RESEND"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/batch/android/g1/a$a;->e:Lcom/batch/android/g1/a$a;

    return-object p0

    :cond_4
    sget-object p0, Lcom/batch/android/g1/a$a;->f:Lcom/batch/android/g1/a$a;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g1/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/g1/a;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/batch/android/g1/a;->d:J

    return-wide v0
.end method
