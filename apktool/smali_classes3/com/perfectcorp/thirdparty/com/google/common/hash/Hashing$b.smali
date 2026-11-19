.class abstract Lcom/perfectcorp/thirdparty/com/google/common/hash/Hashing$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/com/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/hash/i;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/Hashing$b;->a:Lcom/perfectcorp/thirdparty/com/google/common/hash/HashFunction;

    return-void
.end method
