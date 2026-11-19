.class public Lcom/perfectcorp/perfectlib/ph/template/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 23
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/util/Collection;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 21
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/util/Collection;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 22
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/util/Collection;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;JJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/a;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/a;->b:Ljava/util/List;

    iput-wide p3, p0, Lcom/perfectcorp/perfectlib/ph/template/a;->c:J

    iput-wide p5, p0, Lcom/perfectcorp/perfectlib/ph/template/a;->d:J

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "Id"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/a;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReferencedIds"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/perfectcorp/perfectlib/ph/template/a;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, p0, Lcom/perfectcorp/perfectlib/ph/template/a;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "LastModified"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method
