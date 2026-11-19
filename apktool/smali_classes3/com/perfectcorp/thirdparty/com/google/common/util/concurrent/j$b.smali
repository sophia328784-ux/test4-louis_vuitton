.class final Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b;
.super Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j<",
        "TV;",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b;Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;Z)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b$a;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->b(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;)V

    return-void
.end method
