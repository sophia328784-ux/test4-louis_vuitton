.class public Lcom/batch/android/z0/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/z0/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/batch/android/z0/x;",
            "Lcom/batch/android/z0/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/batch/android/z0/y$a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lcom/batch/android/z0/s;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/batch/android/z0/y$a;->a:Ljava/util/Map;

    invoke-static {p0}, Lcom/batch/android/z0/y;->a(Ljava/util/Map;)Lcom/batch/android/z0/l;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/batch/android/z0/x;Lcom/batch/android/z0/x;)Lcom/batch/android/z0/y$a;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/batch/android/z0/y$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/batch/android/z0/y$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/batch/android/z0/x;",
            "+",
            "Lcom/batch/android/z0/x;",
            ">;>;)",
            "Lcom/batch/android/z0/y$a;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/z0/x;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/z0/x;

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/z0/y$a;->a(Lcom/batch/android/z0/x;Lcom/batch/android/z0/x;)Lcom/batch/android/z0/y$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public a(Ljava/util/Map$Entry;)Lcom/batch/android/z0/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/batch/android/z0/x;",
            "+",
            "Lcom/batch/android/z0/x;",
            ">;)",
            "Lcom/batch/android/z0/y$a;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/z0/x;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/batch/android/z0/x;

    invoke-virtual {p0, v0, p1}, Lcom/batch/android/z0/y$a;->a(Lcom/batch/android/z0/x;Lcom/batch/android/z0/x;)Lcom/batch/android/z0/y$a;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/batch/android/z0/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lcom/batch/android/z0/x;",
            "+",
            "Lcom/batch/android/z0/x;",
            ">;)",
            "Lcom/batch/android/z0/y$a;"
        }
    .end annotation

    .line 36
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

    .line 37
    invoke-virtual {p0, v0}, Lcom/batch/android/z0/y$a;->a(Ljava/util/Map$Entry;)Lcom/batch/android/z0/y$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method
