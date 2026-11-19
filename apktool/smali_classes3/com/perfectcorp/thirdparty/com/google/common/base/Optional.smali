.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public static a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/base/a;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/a;

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/base/a;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/a;

    return-object p0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/l;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/l;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/l;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/lang/Object;
.end method

.method public abstract d()Z
.end method

.method public abstract f(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract g()Ljava/lang/Object;
.end method
