.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/q$e;
.super Ljava/util/AbstractCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/q;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$e;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$e;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/t;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$e;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/t;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/q;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$e;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    return p0
.end method
