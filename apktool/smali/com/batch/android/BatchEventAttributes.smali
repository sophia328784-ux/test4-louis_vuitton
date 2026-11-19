.class public Lcom/batch/android/BatchEventAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LABEL_KEY:Ljava/lang/String; = "$label"

.field public static final TAGS_KEY:Ljava/lang/String; = "$tags"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/o/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/batch/android/BatchEventAttributes;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/batch/android/o/f;)Lcom/batch/android/BatchEventAttributes;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/BatchEventAttributes;->a:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public getAttributes()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/o/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/BatchEventAttributes;->a:Ljava/util/Map;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchEventAttributes;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getTags()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/BatchEventAttributes;->b:Ljava/util/Set;

    return-object p0
.end method

.method public put(Ljava/lang/String;D)Lcom/batch/android/BatchEventAttributes;
    .locals 1

    .line 25
    new-instance v0, Lcom/batch/android/o/f;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    sget-object p3, Lcom/batch/android/l1/a;->g:Lcom/batch/android/l1/a;

    invoke-direct {v0, p2, p3}, Lcom/batch/android/o/f;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-direct {p0, p1, v0}, Lcom/batch/android/BatchEventAttributes;->a(Ljava/lang/String;Lcom/batch/android/o/f;)Lcom/batch/android/BatchEventAttributes;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;F)Lcom/batch/android/BatchEventAttributes;
    .locals 2

    .line 24
    new-instance v0, Lcom/batch/android/o/f;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    sget-object v1, Lcom/batch/android/l1/a;->g:Lcom/batch/android/l1/a;

    invoke-direct {v0, p2, v1}, Lcom/batch/android/o/f;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-direct {p0, p1, v0}, Lcom/batch/android/BatchEventAttributes;->a(Ljava/lang/String;Lcom/batch/android/o/f;)Lcom/batch/android/BatchEventAttributes;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lcom/batch/android/BatchEventAttributes;
    .locals 2

    .line 26
    new-instance v0, Lcom/batch/android/o/f;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v1, Lcom/batch/android/l1/a;->f:Lcom/batch/android/l1/a;

    invoke-direct {v0, p2, v1}, Lcom/batch/android/o/f;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-direct {p0, p1, v0}, Lcom/batch/android/BatchEventAttributes;->a(Ljava/lang/String;Lcom/batch/android/o/f;)Lcom/batch/android/BatchEventAttributes;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/batch/android/BatchEventAttributes;
    .locals 1

    .line 27
    new-instance v0, Lcom/batch/android/o/f;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object p3, Lcom/batch/android/l1/a;->f:Lcom/batch/android/l1/a;

    invoke-direct {v0, p2, p3}, Lcom/batch/android/o/f;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-direct {p0, p1, v0}, Lcom/batch/android/BatchEventAttributes;->a(Ljava/lang/String;Lcom/batch/android/o/f;)Lcom/batch/android/BatchEventAttributes;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Lcom/batch/android/BatchEventAttributes;)Lcom/batch/android/BatchEventAttributes;
    .locals 2

    .line 30
    new-instance v0, Lcom/batch/android/o/f;

    sget-object v1, Lcom/batch/android/l1/a;->k:Lcom/batch/android/l1/a;

    invoke-direct {v0, p2, v1}, Lcom/batch/android/o/f;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-direct {p0, p1, v0}, Lcom/batch/android/BatchEventAttributes;->a(Ljava/lang/String;Lcom/batch/android/o/f;)Lcom/batch/android/BatchEventAttributes;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchEventAttributes;
    .locals 2

    const-string v0, "$label"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/batch/android/BatchEventAttributes;->c:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Lcom/batch/android/o/f;

    sget-object v1, Lcom/batch/android/l1/a;->e:Lcom/batch/android/l1/a;

    invoke-direct {v0, p2, v1}, Lcom/batch/android/o/f;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-direct {p0, p1, v0}, Lcom/batch/android/BatchEventAttributes;->a(Ljava/lang/String;Lcom/batch/android/o/f;)Lcom/batch/android/BatchEventAttributes;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/net/URI;)Lcom/batch/android/BatchEventAttributes;
    .locals 2

    .line 23
    new-instance v0, Lcom/batch/android/o/f;

    sget-object v1, Lcom/batch/android/l1/a;->j:Lcom/batch/android/l1/a;

    invoke-direct {v0, p2, v1}, Lcom/batch/android/o/f;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-direct {p0, p1, v0}, Lcom/batch/android/BatchEventAttributes;->a(Ljava/lang/String;Lcom/batch/android/o/f;)Lcom/batch/android/BatchEventAttributes;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/Date;)Lcom/batch/android/BatchEventAttributes;
    .locals 3

    .line 29
    new-instance v0, Lcom/batch/android/o/f;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object v1, Lcom/batch/android/l1/a;->i:Lcom/batch/android/l1/a;

    invoke-direct {v0, p2, v1}, Lcom/batch/android/o/f;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-direct {p0, p1, v0}, Lcom/batch/android/BatchEventAttributes;->a(Ljava/lang/String;Lcom/batch/android/o/f;)Lcom/batch/android/BatchEventAttributes;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/batch/android/BatchEventAttributes;
    .locals 2

    .line 28
    new-instance v0, Lcom/batch/android/o/f;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sget-object v1, Lcom/batch/android/l1/a;->h:Lcom/batch/android/l1/a;

    invoke-direct {v0, p2, v1}, Lcom/batch/android/o/f;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-direct {p0, p1, v0}, Lcom/batch/android/BatchEventAttributes;->a(Ljava/lang/String;Lcom/batch/android/o/f;)Lcom/batch/android/BatchEventAttributes;

    move-result-object p0

    return-object p0
.end method

.method public putObjectList(Ljava/lang/String;Ljava/util/List;)Lcom/batch/android/BatchEventAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/batch/android/BatchEventAttributes;",
            ">;)",
            "Lcom/batch/android/BatchEventAttributes;"
        }
    .end annotation

    new-instance v0, Lcom/batch/android/o/f;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p2, Lcom/batch/android/l1/a;->m:Lcom/batch/android/l1/a;

    invoke-direct {v0, v1, p2}, Lcom/batch/android/o/f;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-direct {p0, p1, v0}, Lcom/batch/android/BatchEventAttributes;->a(Ljava/lang/String;Lcom/batch/android/o/f;)Lcom/batch/android/BatchEventAttributes;

    move-result-object p0

    return-object p0
.end method

.method public putStringList(Ljava/lang/String;Ljava/util/List;)Lcom/batch/android/BatchEventAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/batch/android/BatchEventAttributes;"
        }
    .end annotation

    const-string v0, "$tags"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/batch/android/BatchEventAttributes;->b:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance v0, Lcom/batch/android/o/f;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p2, Lcom/batch/android/l1/a;->l:Lcom/batch/android/l1/a;

    invoke-direct {v0, v1, p2}, Lcom/batch/android/o/f;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-direct {p0, p1, v0}, Lcom/batch/android/BatchEventAttributes;->a(Ljava/lang/String;Lcom/batch/android/o/f;)Lcom/batch/android/BatchEventAttributes;

    move-result-object p0

    return-object p0
.end method

.method public validateEventAttributes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/batch/android/o/d;->a(Lcom/batch/android/BatchEventAttributes;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
