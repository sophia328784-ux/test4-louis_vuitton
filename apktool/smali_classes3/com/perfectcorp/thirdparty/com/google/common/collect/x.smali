.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/x;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/ak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/ak<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lcom/perfectcorp/thirdparty/com/google/common/collect/x;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/x;

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;->h:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;-><init>(ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;)V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/x;->h:Lcom/perfectcorp/thirdparty/com/google/common/collect/x;

    return-void
.end method
