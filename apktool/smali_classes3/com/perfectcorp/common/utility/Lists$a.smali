.class final Lcom/perfectcorp/common/utility/Lists$a;
.super Ljava/util/AbstractList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/utility/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/common/utility/Lists$a;->b:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "Invalid index "

    if-ltz p1, :cond_2

    iget-object p0, p0, Lcom/perfectcorp/common/utility/Lists$a;->b:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    if-ge p1, v4, :cond_0

    sub-int/2addr p1, v2

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    const-string p0, ", size is "

    invoke-static {p1, v2, v1, p0}, Lo60;->h(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Laz;->v(Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-static {p1, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/perfectcorp/common/utility/l$b;

    iget-object p0, p0, Lcom/perfectcorp/common/utility/Lists$a;->b:Ljava/lang/Iterable;

    invoke-direct {v0, p0}, Lcom/perfectcorp/common/utility/l$b;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public final size()I
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/common/utility/Lists$a;->b:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method
