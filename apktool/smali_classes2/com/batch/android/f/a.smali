.class public Lcom/batch/android/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/f/e;


# static fields
.field public static final b:I = 0x3

.field public static final c:I = 0x5

.field private static final d:Z = false

.field private static final e:Ljava/lang/String; = "DomainManager"

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/batch/android/f/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "batch.com"

    const-string v1, "batch.io"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/a;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/f/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/f/a;->a:Lcom/batch/android/f/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/f/b;Z)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/f/a;->f()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/f/a;->a:Lcom/batch/android/f/f;

    invoke-interface {p0}, Lcom/batch/android/f/f;->f()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "batch.com"

    :goto_1
    invoke-virtual {p1, p0}, Lcom/batch/android/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/batch/android/f/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/batch/android/f/a;->a:Lcom/batch/android/f/f;

    invoke-interface {p0}, Lcom/batch/android/f/f;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/batch/android/f/a;->a:Lcom/batch/android/f/f;

    invoke-interface {p0, p1}, Lcom/batch/android/f/f;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/f/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/batch/android/f/a;->a:Lcom/batch/android/f/f;

    invoke-interface {p0}, Lcom/batch/android/f/f;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/batch/android/f/a;->a:Lcom/batch/android/f/f;

    invoke-interface {p0, p1}, Lcom/batch/android/f/f;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/f/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/f/a;->a:Lcom/batch/android/f/f;

    invoke-interface {p0}, Lcom/batch/android/f/f;->c()Z

    move-result p0

    return p0
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/f/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/batch/android/f/a;->a:Lcom/batch/android/f/f;

    invoke-interface {p0}, Lcom/batch/android/f/f;->d()V

    return-void
.end method

.method public e()V
    .locals 8

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/batch/android/f/a;->f()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/batch/android/f/a;->a:Lcom/batch/android/f/f;

    invoke-interface {v3}, Lcom/batch/android/f/f;->e()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object p0, p0, Lcom/batch/android/f/a;->a:Lcom/batch/android/f/f;

    invoke-interface {p0}, Lcom/batch/android/f/f;->g()I

    return-void

    :cond_1
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v0, v4, v0

    const-string v1, "DomainManager"

    if-gez v0, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Skip incrementation due to delay case: \'%d\' ms, should be less than \'%d\' ms"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Incrementation due to delay: \'%d\' ms,  is greater than \'%d\' ms"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/batch/android/f/a;->a:Lcom/batch/android/f/f;

    invoke-interface {v0}, Lcom/batch/android/f/f;->g()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/batch/android/f/a;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/f/a;->a:Lcom/batch/android/f/f;

    invoke-interface {v1}, Lcom/batch/android/f/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    return-void

    :cond_4
    iget-object p0, p0, Lcom/batch/android/f/a;->a:Lcom/batch/android/f/f;

    invoke-interface {p0, v0}, Lcom/batch/android/f/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method public f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/batch/android/f/a;->f()Z

    move-result v0

    const-string v1, "batch.com"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/batch/android/f/a;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/batch/android/f/a;->a:Lcom/batch/android/f/f;

    invoke-interface {v2}, Lcom/batch/android/f/f;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/batch/android/f/a;->a:Lcom/batch/android/f/f;

    invoke-interface {p0}, Lcom/batch/android/f/f;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
