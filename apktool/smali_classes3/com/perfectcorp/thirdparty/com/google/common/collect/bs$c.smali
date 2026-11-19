.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$c;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$d<",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bv;

    invoke-super {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$d;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bv;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$c;Ljava/util/Iterator;)V

    return-object v0
.end method
