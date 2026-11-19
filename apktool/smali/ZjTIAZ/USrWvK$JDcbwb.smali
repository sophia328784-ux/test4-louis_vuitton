.class abstract synthetic LZjTIAZ/USrWvK$JDcbwb;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x2171

    sput v0, LZjTIAZ/USrWvK$ELXMqL$etZCba;->lBx:I

    const/16 v0, 0x1fcf

    sput v0, LZjTIAZ/USrWvK$ELXMqL$etZCba;->JVV:I

    invoke-static {}, LZjTIAZ/USrWvK$ELXMqL$etZCba;->values()[LZjTIAZ/USrWvK$ELXMqL$etZCba;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LZjTIAZ/USrWvK$JDcbwb;->a:[I

    :try_start_0
    sget-object v1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->BMP:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, LZjTIAZ/USrWvK$JDcbwb;->a:[I

    sget-object v1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->CPR:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
