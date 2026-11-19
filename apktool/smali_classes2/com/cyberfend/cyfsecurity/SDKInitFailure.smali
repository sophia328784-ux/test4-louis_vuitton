.class public final enum Lcom/cyberfend/cyfsecurity/SDKInitFailure;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyberfend/cyfsecurity/SDKInitFailure;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMMON_ADDITIONAL_DEVICE_INFO_FAILURE:Lcom/cyberfend/cyfsecurity/SDKInitFailure;

.field private static final synthetic GnaWzB:[Lcom/cyberfend/cyfsecurity/SDKInitFailure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lshort;"
        }
    .end annotation
.end field

.field public static final enum MOTION_SENSOR_FAILURE:Lcom/cyberfend/cyfsecurity/SDKInitFailure;

.field public static final enum ORIENTATION_SENSOR_FAILURE:Lcom/cyberfend/cyfsecurity/SDKInitFailure;

.field public static final enum SYSTEM_INFO_FAILURE:Lcom/cyberfend/cyfsecurity/SDKInitFailure;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    const-string v1, "CjAz||psT\u007ffsgiqy`f~~h"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberfend/cyfsecurity/SDKInitFailure;->MOTION_SENSOR_FAILURE:Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    new-instance v1, Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    const-string v2, "Aw\\v}fntX~{cfsykfxtjlgcesg"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cyberfend/cyfsecurity/SDKInitFailure;->ORIENTATION_SENSOR_FAILURE:Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    new-instance v2, Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    const-string v3, "MjX~||paUu|h|yyyeuoi{glu~kmbjyaiqVNNX"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/cyberfend/cyfsecurity/SDKInitFailure;->COMMON_ADDITIONAL_DEVICE_INFO_FAILURE:Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    new-instance v3, Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    const-string v4, "]|Fgv\u007fpi_wzcsw~t|xn"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cyberfend/cyfsecurity/SDKInitFailure;->SYSTEM_INFO_FAILURE:Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    filled-new-array {v0, v1, v2, v3}, [Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/SDKInitFailure;->GnaWzB:[Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyberfend/cyfsecurity/SDKInitFailure;
    .locals 1

    const-class v0, Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    return-object p0
.end method

.method public static values()[Lcom/cyberfend/cyfsecurity/SDKInitFailure;
    .locals 1

    sget-object v0, Lcom/cyberfend/cyfsecurity/SDKInitFailure;->GnaWzB:[Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    invoke-virtual {v0}, [Lcom/cyberfend/cyfsecurity/SDKInitFailure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    return-object v0
.end method
