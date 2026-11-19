.class Lcom/batch/android/l/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchTagCollectionsFetchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/l/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/l/e;


# direct methods
.method public constructor <init>(Lcom/batch/android/l/e;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/l/e$b;->a:Lcom/batch/android/l/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/l/e$b;->a:Lcom/batch/android/l/e;

    invoke-static {v0}, Lcom/batch/android/l/e;->b(Lcom/batch/android/l/e;)Lcom/batch/android/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/k/a;->a()V

    iget-object p0, p0, Lcom/batch/android/l/e$b;->a:Lcom/batch/android/l/e;

    invoke-static {p0}, Lcom/batch/android/l/e;->b(Lcom/batch/android/l/e;)Lcom/batch/android/k/a;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/batch/android/l/e$b;->a:Lcom/batch/android/l/e;

    invoke-static {v1}, Lcom/batch/android/l/e;->b(Lcom/batch/android/l/e;)Lcom/batch/android/k/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "t."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {v1, v2, v0}, Lcom/batch/android/k/a;->a(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/l/e$b;->a:Lcom/batch/android/l/e;

    invoke-static {p0}, Lcom/batch/android/l/e;->b(Lcom/batch/android/l/e;)Lcom/batch/android/k/a;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
