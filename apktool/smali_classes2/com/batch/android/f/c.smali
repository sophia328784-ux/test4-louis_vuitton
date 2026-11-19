.class public Lcom/batch/android/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/f/f;


# static fields
.field private static final a:Ljava/lang/String; = "DomainStore"

.field private static final b:Ljava/lang/Integer;

.field protected static final c:Ljava/lang/Integer;

.field public static final d:Ljava/lang/String; = "batch.com"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/c;->b:Ljava/lang/Integer;

    const v0, 0x2a300

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/c;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/batch/android/f/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/f/c;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string v0, "0"

    const-string v1, "dns.domain.current.error.count"

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string v0, "dns.domain.current.error.last_update.date"

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    sget-object p0, Lcom/batch/android/t0/b;->d:Lcom/batch/android/u0/a;

    const-string v0, "OK"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/u0/b;->b([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/u0/a;

    invoke-virtual {p0}, Lcom/batch/android/u0/a;->j()V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    .line 77
    const-string p0, "batch.com"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/batch/android/f/c;->b()V

    const/4 v0, 0x1

    const-string v1, "dns.domain.current"

    const-string v2, "DomainStore"

    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Set BAParameter key: \'dns.domain.current\' with \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v3

    invoke-virtual {v3, v1, p1, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Remove BAParameter key: \'dns.domain.current\'."

    invoke-static {v2, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "dns.domain.current.last_update.date"

    invoke-virtual {p1, v3, v1, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/batch/android/f/c;->f()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "New current domain: \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 9

    .line 125
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    .line 126
    const-string v0, "dns.domain.current"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v0

    .line 128
    const-string v2, "dns.domain.current.last_update.date"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    const-string v0, "batch.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    .line 130
    :cond_1
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    .line 131
    const-string v0, "dns.domain.original.last_check.date"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_2

    return v0

    .line 132
    :cond_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 133
    sget-object p0, Lcom/batch/android/f/c;->b:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v5, p0

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long p0, v5, v3

    if-gez p0, :cond_3

    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public d()V
    .locals 3

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dns.domain.original.last_check.date"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public e()Ljava/util/Date;
    .locals 3

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string v0, "dns.domain.current.error.last_update.date"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    sget-object v0, Lcom/batch/android/f/a;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "dns.domain.current"

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()I
    .locals 5

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v0

    const-string v1, "0"

    const-string v2, "dns.domain.current.error.count"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/batch/android/f/c;->f()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, v0, v4, p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Increment BAParameter key: \'%s\' by 1, (old value: %d, new value: %d, domain: %s). %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DomainStore"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v0, v4}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dns.domain.current.error.last_update.date"

    invoke-virtual {p0, v2, v0, v4}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Lcom/batch/android/t0/b;->d:Lcom/batch/android/u0/a;

    const-string v0, "KO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/u0/b;->b([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/u0/a;

    invoke-virtual {p0}, Lcom/batch/android/u0/a;->l()V

    return v1
.end method
