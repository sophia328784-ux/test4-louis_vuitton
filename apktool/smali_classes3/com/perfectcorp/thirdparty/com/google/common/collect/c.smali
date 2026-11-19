.class abstract synthetic Lcom/perfectcorp/thirdparty/com/google/common/collect/c;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/collect/b$a;->a()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/c;->a:[I

    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_0
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/c;->a:[I

    const/4 v1, 0x0

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
