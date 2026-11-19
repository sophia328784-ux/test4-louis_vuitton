.class public Lcom/networkbench/agent/impl/m/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field private static final b:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private c:Lcom/networkbench/agent/impl/crash/j;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/m/a;->b:Lcom/networkbench/agent/impl/c/e;

    const/high16 v0, 0x500000

    sput v0, Lcom/networkbench/agent/impl/m/a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/crash/j;

    invoke-direct {v0, p1, p2}, Lcom/networkbench/agent/impl/crash/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/m/a;->c:Lcom/networkbench/agent/impl/crash/j;

    iput-object p1, p0, Lcom/networkbench/agent/impl/m/a;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/networkbench/agent/impl/m/a;->d:Ljava/lang/String;

    return-void
.end method

.method private c()J
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/m/a;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sp file path:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/m/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/m/a;->d()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/m/a;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/shared_prefs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/m/a;->d:Ljava/lang/String;

    const-string v1, ".xml"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 1

    .line 129
    iget-object p0, p0, Lcom/networkbench/agent/impl/m/a;->c:Lcom/networkbench/agent/impl/crash/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/crash/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 128
    iget-object p0, p0, Lcom/networkbench/agent/impl/m/a;->c:Lcom/networkbench/agent/impl/crash/j;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/j;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/networkbench/agent/impl/m/a;->c:Lcom/networkbench/agent/impl/crash/j;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/crash/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 0

    .line 127
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/m/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/networkbench/agent/impl/m/a;->c()J

    move-result-wide v0

    sget-object v2, Lcom/networkbench/agent/impl/m/a;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "current sp size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/m/a;->c:Lcom/networkbench/agent/impl/crash/j;

    invoke-virtual {p0, p2, p1}, Lcom/networkbench/agent/impl/crash/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/networkbench/agent/impl/m/a;->a:I

    if-lt v4, v5, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "single store Info over max_sp_size, storeInfo length is "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", and max_sp_size is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/networkbench/agent/impl/m/a;->a:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v4, v2

    add-long/2addr v4, v0

    sget v2, Lcom/networkbench/agent/impl/m/a;->a:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    iget-object v4, p0, Lcom/networkbench/agent/impl/m/a;->c:Lcom/networkbench/agent/impl/crash/j;

    if-lez v2, :cond_3

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/crash/j;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lcom/networkbench/agent/impl/m/a;->c:Lcom/networkbench/agent/impl/crash/j;

    invoke-virtual {v4, v2}, Lcom/networkbench/agent/impl/crash/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v0, v4

    iget-object v4, p0, Lcom/networkbench/agent/impl/m/a;->c:Lcom/networkbench/agent/impl/crash/j;

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/networkbench/agent/impl/crash/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4, p2, p1}, Lcom/networkbench/agent/impl/crash/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/networkbench/agent/impl/m/a;->c:Lcom/networkbench/agent/impl/crash/j;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/j;->d()V

    return-void
.end method

.method public b(J)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/m/a;->c:Lcom/networkbench/agent/impl/crash/j;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/crash/j;->a(Ljava/lang/String;)V

    return-void
.end method
