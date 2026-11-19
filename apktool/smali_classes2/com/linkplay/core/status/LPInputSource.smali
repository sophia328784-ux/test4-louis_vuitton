.class public final enum Lcom/linkplay/core/status/LPInputSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkplay/core/status/LPInputSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkplay/core/status/LPInputSource;

.field public static final enum LPBluetooth:Lcom/linkplay/core/status/LPInputSource;

.field public static final enum LPHDMI:Lcom/linkplay/core/status/LPInputSource;

.field public static final enum LPLineIn:Lcom/linkplay/core/status/LPInputSource;

.field public static final enum LPOptical:Lcom/linkplay/core/status/LPInputSource;

.field public static final enum LPRCA:Lcom/linkplay/core/status/LPInputSource;

.field public static final enum LPRadio:Lcom/linkplay/core/status/LPInputSource;

.field public static final enum LPTFCard:Lcom/linkplay/core/status/LPInputSource;

.field public static final enum LPUSB:Lcom/linkplay/core/status/LPInputSource;

.field public static final enum LPWiFi:Lcom/linkplay/core/status/LPInputSource;

.field public static final enum LPXLR:Lcom/linkplay/core/status/LPInputSource;


# instance fields
.field private mode:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/linkplay/core/status/LPInputSource;
    .locals 10

    sget-object v0, Lcom/linkplay/core/status/LPInputSource;->LPLineIn:Lcom/linkplay/core/status/LPInputSource;

    sget-object v1, Lcom/linkplay/core/status/LPInputSource;->LPBluetooth:Lcom/linkplay/core/status/LPInputSource;

    sget-object v2, Lcom/linkplay/core/status/LPInputSource;->LPUSB:Lcom/linkplay/core/status/LPInputSource;

    sget-object v3, Lcom/linkplay/core/status/LPInputSource;->LPRadio:Lcom/linkplay/core/status/LPInputSource;

    sget-object v4, Lcom/linkplay/core/status/LPInputSource;->LPRCA:Lcom/linkplay/core/status/LPInputSource;

    sget-object v5, Lcom/linkplay/core/status/LPInputSource;->LPHDMI:Lcom/linkplay/core/status/LPInputSource;

    sget-object v6, Lcom/linkplay/core/status/LPInputSource;->LPOptical:Lcom/linkplay/core/status/LPInputSource;

    sget-object v7, Lcom/linkplay/core/status/LPInputSource;->LPWiFi:Lcom/linkplay/core/status/LPInputSource;

    sget-object v8, Lcom/linkplay/core/status/LPInputSource;->LPTFCard:Lcom/linkplay/core/status/LPInputSource;

    sget-object v9, Lcom/linkplay/core/status/LPInputSource;->LPXLR:Lcom/linkplay/core/status/LPInputSource;

    filled-new-array/range {v0 .. v9}, [Lcom/linkplay/core/status/LPInputSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/linkplay/core/status/LPInputSource;

    const/4 v1, 0x0

    const-string v2, "line-in"

    const-string v3, "LPLineIn"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPInputSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPInputSource;->LPLineIn:Lcom/linkplay/core/status/LPInputSource;

    new-instance v0, Lcom/linkplay/core/status/LPInputSource;

    const/4 v1, 0x1

    const-string v2, "bluetooth"

    const-string v3, "LPBluetooth"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPInputSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPInputSource;->LPBluetooth:Lcom/linkplay/core/status/LPInputSource;

    new-instance v0, Lcom/linkplay/core/status/LPInputSource;

    const/4 v1, 0x2

    const-string v2, "udisk"

    const-string v3, "LPUSB"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPInputSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPInputSource;->LPUSB:Lcom/linkplay/core/status/LPInputSource;

    new-instance v0, Lcom/linkplay/core/status/LPInputSource;

    const/4 v1, 0x3

    const-string v2, "FM"

    const-string v3, "LPRadio"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPInputSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPInputSource;->LPRadio:Lcom/linkplay/core/status/LPInputSource;

    new-instance v0, Lcom/linkplay/core/status/LPInputSource;

    const/4 v1, 0x4

    const-string v2, "RCA"

    const-string v3, "LPRCA"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPInputSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPInputSource;->LPRCA:Lcom/linkplay/core/status/LPInputSource;

    new-instance v0, Lcom/linkplay/core/status/LPInputSource;

    const/4 v1, 0x5

    const-string v2, "HDMI"

    const-string v3, "LPHDMI"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPInputSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPInputSource;->LPHDMI:Lcom/linkplay/core/status/LPInputSource;

    new-instance v0, Lcom/linkplay/core/status/LPInputSource;

    const/4 v1, 0x6

    const-string v2, "optical"

    const-string v3, "LPOptical"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPInputSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPInputSource;->LPOptical:Lcom/linkplay/core/status/LPInputSource;

    new-instance v0, Lcom/linkplay/core/status/LPInputSource;

    const/4 v1, 0x7

    const-string v2, "wifi"

    const-string v3, "LPWiFi"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPInputSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPInputSource;->LPWiFi:Lcom/linkplay/core/status/LPInputSource;

    new-instance v0, Lcom/linkplay/core/status/LPInputSource;

    const/16 v1, 0x8

    const-string v2, "TFcard"

    const-string v3, "LPTFCard"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPInputSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPInputSource;->LPTFCard:Lcom/linkplay/core/status/LPInputSource;

    new-instance v0, Lcom/linkplay/core/status/LPInputSource;

    const/16 v1, 0x9

    const-string v2, "xlr"

    const-string v3, "LPXLR"

    invoke-direct {v0, v3, v1, v2}, Lcom/linkplay/core/status/LPInputSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkplay/core/status/LPInputSource;->LPXLR:Lcom/linkplay/core/status/LPInputSource;

    invoke-static {}, Lcom/linkplay/core/status/LPInputSource;->$values()[Lcom/linkplay/core/status/LPInputSource;

    move-result-object v0

    sput-object v0, Lcom/linkplay/core/status/LPInputSource;->$VALUES:[Lcom/linkplay/core/status/LPInputSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/linkplay/core/status/LPInputSource;->mode:Ljava/lang/String;

    return-void
.end method

.method public static byOrdinal(Ljava/lang/String;)Lcom/linkplay/core/status/LPInputSource;
    .locals 5

    invoke-static {}, Lcom/linkplay/core/status/LPInputSource;->values()[Lcom/linkplay/core/status/LPInputSource;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/linkplay/core/status/LPInputSource;->mode:Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/linkplay/core/status/LPInputSource;->LPWiFi:Lcom/linkplay/core/status/LPInputSource;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkplay/core/status/LPInputSource;
    .locals 1

    const-class v0, Lcom/linkplay/core/status/LPInputSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkplay/core/status/LPInputSource;

    return-object p0
.end method

.method public static values()[Lcom/linkplay/core/status/LPInputSource;
    .locals 1

    sget-object v0, Lcom/linkplay/core/status/LPInputSource;->$VALUES:[Lcom/linkplay/core/status/LPInputSource;

    invoke-virtual {v0}, [Lcom/linkplay/core/status/LPInputSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkplay/core/status/LPInputSource;

    return-object v0
.end method


# virtual methods
.method public getMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/status/LPInputSource;->mode:Ljava/lang/String;

    return-object p0
.end method
