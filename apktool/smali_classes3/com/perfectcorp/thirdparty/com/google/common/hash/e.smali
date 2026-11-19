.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/hash/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/hash/e$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/perfectcorp/thirdparty/com/google/common/hash/j;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/e$a;

    invoke-direct {v0}, Ljava/io/OutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/e$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/hash/j;

    return-object v0
.end method
