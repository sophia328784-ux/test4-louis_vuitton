.class abstract synthetic Lcom/perfectcorp/common/network/RequestTask$1;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;->values()[Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/perfectcorp/common/network/RequestTask$1;->a:[I

    :try_start_0
    sget-object v1, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;->POST:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/perfectcorp/common/network/RequestTask$1;->a:[I

    sget-object v1, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;->GET:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
