.class public Lcom/batch/android/o1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/n1/e;


# instance fields
.field private final a:Lcom/batch/android/v0/f;

.field private final b:Lcom/batch/android/s/a;


# direct methods
.method private constructor <init>(Lcom/batch/android/v0/f;Lcom/batch/android/s/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/o1/c;->a:Lcom/batch/android/v0/f;

    iput-object p2, p0, Lcom/batch/android/o1/c;->b:Lcom/batch/android/s/a;

    return-void
.end method

.method public static a()Lcom/batch/android/o1/c;
    .locals 3

    .line 32
    new-instance v0, Lcom/batch/android/o1/c;

    .line 33
    invoke-static {}, Lcom/batch/android/n/p;->a()Lcom/batch/android/v0/f;

    move-result-object v1

    .line 34
    invoke-static {}, Lcom/batch/android/n/f;->a()Lcom/batch/android/s/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/o1/c;-><init>(Lcom/batch/android/v0/f;Lcom/batch/android/s/a;)V

    return-object v0
.end method

.method private a(Lcom/batch/android/g1/c;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/batch/android/o1/c;->b:Lcom/batch/android/s/a;

    invoke-virtual {v0, p1}, Lcom/batch/android/s/a;->a(Lcom/batch/android/g1/c;)V

    .line 36
    iget-object p0, p0, Lcom/batch/android/o1/c;->a:Lcom/batch/android/v0/f;

    invoke-virtual {p0}, Lcom/batch/android/v0/f;->k()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/FailReason;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while refreshing local campaigns: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalCampaigns"

    invoke-static {v0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/o1/c;->a:Lcom/batch/android/v0/f;

    invoke-virtual {p0}, Lcom/batch/android/v0/f;->k()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/g1/c;",
            ">;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/batch/android/o1/c;->b:Lcom/batch/android/s/a;

    invoke-virtual {v0}, Lcom/batch/android/s/a;->m()V

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/g1/c;

    .line 31
    invoke-direct {p0, v0}, Lcom/batch/android/o1/c;->a(Lcom/batch/android/g1/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method
