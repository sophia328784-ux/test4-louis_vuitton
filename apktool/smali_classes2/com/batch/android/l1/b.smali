.class public Lcom/batch/android/l1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "InstallDataEditor"

.field private static final e:I = 0x0

.field private static final f:I = 0x1


# instance fields
.field private final a:Lcom/batch/android/l1/j;

.field private final b:[Z

.field private final c:[Ljava/lang/String;

.field private final d:Lcom/batch/android/v0/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/batch/android/l1/j;

    invoke-direct {v0}, Lcom/batch/android/l1/j;-><init>()V

    iput-object v0, p0, Lcom/batch/android/l1/b;->a:Lcom/batch/android/l1/j;

    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/batch/android/l1/b;->b:[Z

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/l1/b;->c:[Ljava/lang/String;

    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/l1/b;->d:Lcom/batch/android/v0/l;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/v0/l$b;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/l1/b;->b:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    aget-boolean v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/batch/android/l1/b;->d:Lcom/batch/android/v0/l;

    invoke-virtual {v2, v0}, Lcom/batch/android/v0/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/batch/android/l1/b;->d:Lcom/batch/android/v0/l;

    invoke-virtual {v4, v0}, Lcom/batch/android/v0/l;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/batch/android/l1/b;->b:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/batch/android/l1/b;->d:Lcom/batch/android/v0/l;

    iget-object v5, p0, Lcom/batch/android/l1/b;->c:[Ljava/lang/String;

    aget-object v1, v5, v1

    invoke-virtual {v4, v0, v1}, Lcom/batch/android/v0/l;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/batch/android/l1/b;->b:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/batch/android/l1/b;->d:Lcom/batch/android/v0/l;

    iget-object v4, p0, Lcom/batch/android/l1/b;->c:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v1, v0, v3}, Lcom/batch/android/v0/l;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/batch/android/l1/b;->c:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/batch/android/l1/b;->d:Lcom/batch/android/v0/l;

    invoke-virtual {p0, v0}, Lcom/batch/android/v0/l;->f(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance p0, Lcom/batch/android/v0/l$b;

    const-string v0, "Error while applying. Make sure Batch is started beforehand, and not globally opted out from."

    const-string v1, "\'context\' was null while saving."

    invoke-direct {p0, v0, v1}, Lcom/batch/android/v0/l$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic a(Ljava/lang/String;DLcom/batch/android/l1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    invoke-virtual {p3, p0, p1, p2}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;D)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;JLcom/batch/android/l1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    invoke-virtual {p3, p0, p1, p2}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Lcom/batch/android/l1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    invoke-virtual {p1, p0}, Lcom/batch/android/l1/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/l1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    invoke-virtual {p2, p0, p1}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/net/URI;Lcom/batch/android/l1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-virtual {p2, p0, p1}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/util/Date;Lcom/batch/android/l1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    invoke-virtual {p2, p0, p1}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;ZLcom/batch/android/l1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    invoke-virtual {p2, p0, p1}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private static synthetic a(Ljava/util/List;Lcom/batch/android/e/c0;)V
    .locals 2

    .line 110
    :try_start_0
    invoke-static {p0}, Lcom/batch/android/v0/l;->c(Ljava/util/List;)V

    const/4 p0, 0x0

    .line 111
    invoke-virtual {p1, p0}, Lcom/batch/android/e/c0;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/batch/android/v0/l$b; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallDataEditor"

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1, p0}, Lcom/batch/android/e/c0;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/l1/i;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/batch/android/l1/b;->a:Lcom/batch/android/l1/j;

    invoke-virtual {p0}, Lcom/batch/android/l1/j;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;JLcom/batch/android/l1/c;)V
    .locals 0

    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/batch/android/l1/b;->a(Ljava/lang/String;JLcom/batch/android/l1/c;)V

    return-void
.end method

.method private static synthetic b(Ljava/lang/String;Lcom/batch/android/l1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-virtual {p1, p0}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic b(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/l1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-virtual {p2, p0, p1}, Lcom/batch/android/l1/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic c(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/l1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-virtual {p2, p0, p1}, Lcom/batch/android/l1/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/l1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/batch/android/l1/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/l1/c;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/l1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/batch/android/l1/b;->b(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/l1/c;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/l1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/batch/android/l1/b;->c(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/l1/c;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;ZLcom/batch/android/l1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/batch/android/l1/b;->a(Ljava/lang/String;ZLcom/batch/android/l1/c;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/String;Ljava/util/Date;Lcom/batch/android/l1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/batch/android/l1/b;->a(Ljava/lang/String;Ljava/util/Date;Lcom/batch/android/l1/c;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/String;DLcom/batch/android/l1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/batch/android/l1/b;->a(Ljava/lang/String;DLcom/batch/android/l1/c;)V

    return-void
.end method

.method public static synthetic j(Ljava/lang/String;Ljava/net/URI;Lcom/batch/android/l1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/batch/android/l1/b;->a(Ljava/lang/String;Ljava/net/URI;Lcom/batch/android/l1/c;)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/String;Lcom/batch/android/l1/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/l1/b;->a(Ljava/lang/String;Lcom/batch/android/l1/c;)V

    return-void
.end method

.method public static synthetic l(Ljava/lang/String;Lcom/batch/android/l1/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/l1/b;->b(Ljava/lang/String;Lcom/batch/android/l1/c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/batch/android/l1/b;
    .locals 4

    .line 105
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/batch/android/l1/b;->a:Lcom/batch/android/l1/j;

    new-instance v2, Lk81;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lk81;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/batch/android/l1/j;->b(Lcom/batch/android/l1/i;)V
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 107
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid tag collection. Ignoring tag collection clear request \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' ."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    const-string v0, "InstallDataEditor"

    invoke-static {v0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/l1/b;
    .locals 4

    const-string v0, "InstallDataEditor"

    .line 97
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :try_start_1
    invoke-static {p2}, Lcom/batch/android/c1/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/batch/android/c1/a$b; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    iget-object p2, p0, Lcom/batch/android/l1/b;->a:Lcom/batch/android/l1/j;

    new-instance v0, Lj81;

    const/4 v2, 0x2

    invoke-direct {v0, v1, p1, v2}, Lj81;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Lcom/batch/android/l1/j;->b(Lcom/batch/android/l1/i;)V

    return-object p0

    .line 100
    :catch_0
    const-string v1, "\' for collection \'"

    const-string v2, "\'."

    .line 101
    const-string v3, "Invalid tag. Please make sure that the tag is made of letters, underscores and numbers only (a-zA-Z0-9_). It also can\'t be longer than 255 characters. Ignoring tag \'"

    invoke-static {v3, p1, v1, p2, v2}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {v0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_1
    move-exception p2

    .line 103
    invoke-virtual {p2, v0, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/l1/b;
    .locals 4

    const-string v0, "InstallDataEditor"

    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p2}, Lcom/batch/android/c1/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/batch/android/c1/a$b; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p2, p0, Lcom/batch/android/l1/b;->a:Lcom/batch/android/l1/j;

    new-instance v0, Lj81;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lj81;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Lcom/batch/android/l1/j;->b(Lcom/batch/android/l1/i;)V

    return-object p0

    :catch_0
    const-string v1, "\' for collection \'"

    const-string v2, "\'."

    const-string v3, "Invalid tag. Please make sure that the tag is made of letters, underscores and numbers only (a-zA-Z0-9_). It also can\'t be longer than 255 characters. Ignoring tag \'"

    invoke-static {v3, p1, v1, p2, v2}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_1
    move-exception p2

    invoke-virtual {p2, v0, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public c()Lcom/batch/android/e/c0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/batch/android/e/c0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/batch/android/e/c0;

    invoke-direct {v0}, Lcom/batch/android/e/c0;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/batch/android/l1/b;->a()V
    :try_end_0
    .catch Lcom/batch/android/v0/l$b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "InstallDataEditor"

    const-string v2, "Failed saving custom user operation for install compatibility."

    invoke-static {v1, v2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/batch/android/l1/b;->b()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/batch/android/l1/b;->a(Ljava/util/List;Lcom/batch/android/e/c0;)V

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Lcom/batch/android/l1/b;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/batch/android/l1/b;->a:Lcom/batch/android/l1/j;

    new-instance v1, Lk81;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lk81;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/batch/android/l1/j;->b(Lcom/batch/android/l1/i;)V

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "InstallDataEditor"

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public save()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/batch/android/l1/b;->a()V
    :try_end_0
    .catch Lcom/batch/android/v0/l$b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "InstallDataEditor"

    const-string v1, "Failed saving custom user operation for install compatibility."

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/batch/android/l1/b;->b()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v0

    new-instance v1, Lcom/batch/android/l1/j;

    invoke-direct {v1, p0}, Lcom/batch/android/l1/j;-><init>(Ljava/util/List;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1}, Lcom/batch/android/v0/l;->a(JLcom/batch/android/l1/j;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;D)Lcom/batch/android/l1/b;
    .locals 2

    .line 82
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    iget-object v0, p0, Lcom/batch/android/l1/b;->a:Lcom/batch/android/l1/j;

    new-instance v1, Ll81;

    invoke-direct {v1, p1, p2, p3}, Ll81;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Lcom/batch/android/l1/j;->b(Lcom/batch/android/l1/i;)V

    return-object p0

    :catch_0
    move-exception p2

    .line 84
    const-string p3, "InstallDataEditor"

    invoke-virtual {p2, p3, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;J)Lcom/batch/android/l1/b;
    .locals 2

    .line 101
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    iget-object v0, p0, Lcom/batch/android/l1/b;->a:Lcom/batch/android/l1/j;

    new-instance v1, Lf81;

    invoke-direct {v1, p1, p2, p3}, Lf81;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/batch/android/l1/j;->b(Lcom/batch/android/l1/i;)V

    return-object p0

    :catch_0
    move-exception p2

    .line 103
    const-string p3, "InstallDataEditor"

    invoke-virtual {p2, p3, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/l1/b;
    .locals 5

    const-string v0, "InstallDataEditor"

    const-string v1, "String attributes can\'t be null or longer than 64 characters. Ignoring attribute \'"

    .line 95
    :try_start_0
    invoke-static {p2}, Lcom/batch/android/c1/a;->a(Ljava/lang/Object;)V

    .line 96
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {p2}, Lcom/batch/android/c1/a;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p2

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/batch/android/l1/b;->a:Lcom/batch/android/l1/j;

    new-instance v3, Lj81;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p2, v4}, Lj81;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/batch/android/l1/j;->b(Lcom/batch/android/l1/i;)V
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 100
    :goto_0
    invoke-virtual {p2, v0, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/net/URI;)Lcom/batch/android/l1/b;
    .locals 4

    const-string v0, "InstallDataEditor"

    :try_start_0
    invoke-static {p2}, Lcom/batch/android/c1/a;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lcom/batch/android/c1/a;->b(Ljava/net/URI;)Z

    move-result v2

    const-string v3, "\'"

    if-eqz v2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "URL attributes can\'t be null or longer than 2048 characters. Ignoring attribute \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/batch/android/c1/a;->a(Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "URL attributes must follow the format \'scheme://[authority][path][?query][#fragment]\'. Ignoring attribute \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/batch/android/l1/b;->a:Lcom/batch/android/l1/j;

    new-instance v0, Li81;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2}, Li81;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/batch/android/l1/j;->b(Lcom/batch/android/l1/i;)V

    return-object p0

    :catch_0
    move-exception p2

    invoke-virtual {p2, v0, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/util/Date;)Lcom/batch/android/l1/b;
    .locals 4

    .line 88
    :try_start_0
    invoke-static {p2}, Lcom/batch/android/c1/a;->a(Ljava/lang/Object;)V

    .line 89
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    invoke-virtual {p2}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Date;

    .line 91
    iget-object v0, p0, Lcom/batch/android/l1/b;->a:Lcom/batch/android/l1/j;

    monitor-enter v0

    .line 92
    :try_start_1
    iget-object v1, p0, Lcom/batch/android/l1/b;->a:Lcom/batch/android/l1/j;

    new-instance v2, Li81;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p2}, Li81;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/batch/android/l1/j;->b(Lcom/batch/android/l1/i;)V

    .line 93
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catch_0
    move-exception p2

    .line 94
    const-string v0, "InstallDataEditor"

    invoke-virtual {p2, v0, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;Z)Lcom/batch/android/l1/b;
    .locals 2

    .line 85
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/c1/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/batch/android/c1/a$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    iget-object v0, p0, Lcom/batch/android/l1/b;->a:Lcom/batch/android/l1/j;

    new-instance v1, Lm81;

    invoke-direct {v1, p1, p2}, Lm81;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/batch/android/l1/j;->b(Lcom/batch/android/l1/i;)V

    return-object p0

    :catch_0
    move-exception p2

    .line 87
    const-string v0, "InstallDataEditor"

    invoke-virtual {p2, v0, p1}, Lcom/batch/android/c1/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/batch/android/l1/b;
    .locals 2

    invoke-static {p1}, Lcom/batch/android/c1/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "InstallDataEditor"

    const-string v0, "setLanguage called with invalid language (must be at least 2 chars)"

    invoke-static {p1, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/l1/b;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/batch/android/l1/b;->b:[Z

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/batch/android/l1/b;
    .locals 2

    invoke-static {p1}, Lcom/batch/android/c1/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "InstallDataEditor"

    const-string v0, "setRegion called with invalid region (must be at least 2 chars)"

    invoke-static {p1, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/l1/b;->c:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/batch/android/l1/b;->b:[Z

    aput-boolean v1, p1, v1

    return-object p0
.end method
