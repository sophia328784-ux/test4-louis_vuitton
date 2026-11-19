.class abstract Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "LinkedTreeMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

.field public c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

.field public d:I

.field public final synthetic e:Lcom/squareup/moshi/LinkedHashTreeMap;


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/LinkedHashTreeMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->e:Lcom/squareup/moshi/LinkedHashTreeMap;

    iget-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v0, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->e:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget p1, p1, Lcom/squareup/moshi/LinkedHashTreeMap;->f:I

    iput p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/moshi/LinkedHashTreeMap$Node;
    .locals 4

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->e:Lcom/squareup/moshi/LinkedHashTreeMap;

    iget-object v2, v1, Lcom/squareup/moshi/LinkedHashTreeMap;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    iget v1, v1, Lcom/squareup/moshi/LinkedHashTreeMap;->f:I

    iget v2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->d:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->e:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    return-object v0

    :cond_0
    invoke-static {}, Lv7;->c()V

    return-object v3

    :cond_1
    invoke-static {}, Lb21;->x()V

    return-object v3
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->e:Lcom/squareup/moshi/LinkedHashTreeMap;

    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->a()Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->e:Lcom/squareup/moshi/LinkedHashTreeMap;

    invoke-virtual {v2, v0, v1}, Lcom/squareup/moshi/LinkedHashTreeMap;->d(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget v0, v2, Lcom/squareup/moshi/LinkedHashTreeMap;->f:I

    iput v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;->d:I

    return-void

    :cond_0
    invoke-static {}, Lr81;->b()V

    return-void
.end method
