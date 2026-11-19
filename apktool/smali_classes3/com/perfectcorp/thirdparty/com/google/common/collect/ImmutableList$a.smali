.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;
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
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;-><init>(II)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$a;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$a;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
