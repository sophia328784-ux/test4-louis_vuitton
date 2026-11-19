.class abstract synthetic Lcom/cyberfend/cyfsecurity/CYFWebViewService$3;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x2171

    sput v0, LZjTIAZ/USrWvK$ELXMqL$etZCba;->lBx:I

    const/16 v0, 0xb00

    sput v0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->_ZL:I

    const/16 v0, 0x1fcf

    sput v0, LZjTIAZ/USrWvK$ELXMqL$etZCba;->JVV:I

    const/16 v0, 0x1d54

    sput v0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->gSd:I

    invoke-static {}, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->values()[LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFWebViewService$3;->b:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->COMPLETE:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/cyberfend/cyfsecurity/CYFWebViewService$3;->b:[I

    sget-object v3, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->ERROR:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/cyberfend/cyfsecurity/CYFWebViewService$3;->b:[I

    sget-object v3, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->TIMEOUT:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, LZjTIAZ/USrWvK$ELXMqL$etZCba;->values()[LZjTIAZ/USrWvK$ELXMqL$etZCba;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/cyberfend/cyfsecurity/CYFWebViewService$3;->a:[I

    :try_start_3
    sget-object v3, LZjTIAZ/USrWvK$ELXMqL$etZCba;->BMP:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFWebViewService$3;->a:[I

    sget-object v2, LZjTIAZ/USrWvK$ELXMqL$etZCba;->CPR:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
