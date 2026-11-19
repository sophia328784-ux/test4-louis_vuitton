.class public interface abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection;"
    }
.end annotation


# virtual methods
.method public synthetic a()Ljava/util/Set;
    .locals 0

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bh;->b()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public abstract b()Ljava/util/NavigableSet;
.end method
