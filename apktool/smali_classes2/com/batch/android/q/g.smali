.class public Lcom/batch/android/q/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/batch/android/BatchNotificationSource;

.field public d:Z

.field public e:Z

.field public f:Ljava/util/Date;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/batch/android/q/j;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/q/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/batch/android/BatchNotificationSource;Ljava/util/Date;Ljava/util/Map;Lcom/batch/android/q/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/BatchNotificationSource;",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/batch/android/q/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/q/g;->c:Lcom/batch/android/BatchNotificationSource;

    iput-object p2, p0, Lcom/batch/android/q/g;->f:Ljava/util/Date;

    iput-object p3, p0, Lcom/batch/android/q/g;->g:Ljava/util/Map;

    iput-object p4, p0, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/batch/android/q/g;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/batch/android/q/j;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/batch/android/q/g;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/q/g;->i:Ljava/util/List;

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/batch/android/q/g;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/batch/android/q/g;->c:Lcom/batch/android/BatchNotificationSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/q/g;->f:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/q/g;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/q/j;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
