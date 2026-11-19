.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/base/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/base/e$b;,
        Lcom/perfectcorp/thirdparty/com/google/common/base/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/perfectcorp/thirdparty/com/google/common/base/e;
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/base/e$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/e$a;

    return-object v0
.end method

.method public static d()Lcom/perfectcorp/thirdparty/com/google/common/base/e;
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/base/e$b;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/e$b;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract c(Ljava/lang/Object;)I
.end method

.method public abstract e(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method
