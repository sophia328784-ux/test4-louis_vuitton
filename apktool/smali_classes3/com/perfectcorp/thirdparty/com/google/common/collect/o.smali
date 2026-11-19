.class public interface abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/util/Set;
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 0

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/o;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
