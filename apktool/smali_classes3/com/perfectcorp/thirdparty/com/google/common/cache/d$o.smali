.class Lcom/perfectcorp/thirdparty/com/google/common/cache/d$o;
.super Ljava/lang/ref/SoftReference;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/cache/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference<",
        "TV;>;",
        "Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$o;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 6
    const/4 p0, 0x1

    return p0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;
    .locals 0

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$o;

    invoke-direct {p0, p1, p2, p3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$o;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 7
    return-void
.end method

.method public final b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$o;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
