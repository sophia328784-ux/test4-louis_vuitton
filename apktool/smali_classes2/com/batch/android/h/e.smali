.class public Lcom/batch/android/h/e;
.super Lcom/batch/android/h/a;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "batch_parameter_"

    const-string v1, "system.param."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/batch/android/h/e;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/batch/android/h/a;-><init>(Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;)V

    iput-object p1, p0, Lcom/batch/android/h/e;->e:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;Z)V
    .locals 0

    .line 6
    invoke-direct {p0, p2, p3, p4}, Lcom/batch/android/h/a;-><init>(Lcom/batch/android/h/d;Lcom/batch/android/h/a$a;Z)V

    .line 7
    iput-object p1, p0, Lcom/batch/android/h/e;->e:Landroid/content/Context;

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/batch/android/h/e;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/batch/android/h/a;->a:Lcom/batch/android/h/d;

    iget-object p0, p0, Lcom/batch/android/h/d;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/h/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, Lcom/batch/android/h/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/n/l;->a(Landroid/content/Context;)Lcom/batch/android/e/s;

    move-result-object v0

    invoke-direct {p0}, Lcom/batch/android/h/e;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/e/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/h/e;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/batch/android/h/a;->b:Lcom/batch/android/h/a$a;

    invoke-interface {v0}, Lcom/batch/android/h/a$a;->get()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/h/e;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    iput-object v0, p0, Lcom/batch/android/h/e;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/h/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/n/l;->a(Landroid/content/Context;)Lcom/batch/android/e/s;

    move-result-object v0

    invoke-direct {p0}, Lcom/batch/android/h/e;->e()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/batch/android/h/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/batch/android/e/s;->c(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return v2
.end method
