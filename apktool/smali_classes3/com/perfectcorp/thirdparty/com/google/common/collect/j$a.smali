.class Lcom/perfectcorp/thirdparty/com/google/common/collect/j$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimaps$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimaps$a<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/g;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/e;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/e$b;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/e;)V

    return-object v0
.end method
