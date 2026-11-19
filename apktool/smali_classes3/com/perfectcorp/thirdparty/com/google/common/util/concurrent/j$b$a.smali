.class final Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j<",
        "TV;",
        "Ljava/util/List<",
        "TV;>;>.a;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b;Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/com/google/common/collect/ai<",
            "+",
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b$a;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b;

    invoke-direct {p0, p1, p2, p3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j;Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const-string v0, "initialArraySize"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->c(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
