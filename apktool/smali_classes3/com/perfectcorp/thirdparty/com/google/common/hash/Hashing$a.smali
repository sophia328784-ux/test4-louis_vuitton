.class abstract enum Lcom/perfectcorp/thirdparty/com/google/common/hash/Hashing$a;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/hash/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/thirdparty/com/google/common/hash/Hashing$a;",
        ">;",
        "Lcom/perfectcorp/thirdparty/com/google/common/hash/h<",
        "Ljava/util/zip/Checksum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/thirdparty/com/google/common/hash/Hashing$a;


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/com/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/g;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/hash/Hashing$a;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/Hashing$a;->a:Lcom/perfectcorp/thirdparty/com/google/common/hash/Hashing$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "CRC_32"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/Hashing$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/hash/HashFunction;

    return-void
.end method
