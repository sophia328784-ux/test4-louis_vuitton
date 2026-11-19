.class public final enum Lorg/teleal/cling/model/message/header/UpnpHeader$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/model/message/header/UpnpHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum CALLBACK:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum EASYLINK:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum EXT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum EXT_IFACE_MAC:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum HOST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum LOCATION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum MAN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum MAX_AGE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum MX:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum NT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum NTS:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SEQ:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SERVER:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SID:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SOAPACTION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum ST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum TIMEOUT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum USER_AGENT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private headerTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/teleal/cling/model/message/header/UpnpHeader;",
            ">;"
        }
    .end annotation
.end field

.field private httpName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v0, Lorg/teleal/cling/model/message/header/ServiceUSNHeader;

    const-class v2, Lorg/teleal/cling/model/message/header/UDNHeader;

    const-class v3, Lorg/teleal/cling/model/message/header/USNRootDeviceHeader;

    const-class v4, Lorg/teleal/cling/model/message/header/DeviceUSNHeader;

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/Class;

    move-result-object v0

    const-string v2, "USN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v2, v0}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v9, Lorg/teleal/cling/model/message/header/UDNHeader;

    const-class v10, Lorg/teleal/cling/model/message/header/NTEventHeader;

    const-class v4, Lorg/teleal/cling/model/message/header/RootDeviceHeader;

    const-class v5, Lorg/teleal/cling/model/message/header/UDADeviceTypeHeader;

    const-class v6, Lorg/teleal/cling/model/message/header/UDAServiceTypeHeader;

    const-class v7, Lorg/teleal/cling/model/message/header/DeviceTypeHeader;

    const-class v8, Lorg/teleal/cling/model/message/header/ServiceTypeHeader;

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Class;

    move-result-object v0

    const-string v4, "NT"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v4, v0}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    move v0, v3

    new-instance v3, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v4, Lorg/teleal/cling/model/message/header/EASYLINKHeader;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "EASYLINK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5, v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v3, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EASYLINK:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v5, Lorg/teleal/cling/model/message/header/NTSHeader;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    const-string v6, "NTS"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v6, v5}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v5, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v6, Lorg/teleal/cling/model/message/header/HostHeader;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    const-string v7, "HOST"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v7, v6}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v5, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->HOST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v6, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v7, Lorg/teleal/cling/model/message/header/ServerHeader;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    const-string v8, "SERVER"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v8, v7}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v6, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v7, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v8, Lorg/teleal/cling/model/message/header/LocationHeader;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    const-string v9, "LOCATION"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v9, v8}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v7, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v8, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v9, Lorg/teleal/cling/model/message/header/MaxAgeHeader;

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x7

    const-string v11, "CACHE-CONTROL"

    const-string v12, "MAX_AGE"

    invoke-direct {v8, v12, v10, v11, v9}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v8, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v9, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v10, Lorg/teleal/cling/model/message/header/UserAgentHeader;

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v10

    const/16 v11, 0x8

    const-string v12, "USER-AGENT"

    const-string v13, "USER_AGENT"

    invoke-direct {v9, v13, v11, v12, v10}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v9, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v10, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v11, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    filled-new-array {v11}, [Ljava/lang/Class;

    move-result-object v11

    const/16 v12, 0x9

    const-string v13, "CONTENT-TYPE"

    const-string v14, "CONTENT_TYPE"

    invoke-direct {v10, v14, v12, v13, v11}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v10, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v11, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v12, Lorg/teleal/cling/model/message/header/MANHeader;

    filled-new-array {v12}, [Ljava/lang/Class;

    move-result-object v12

    const-string v13, "MAN"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v13, v12}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v11, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MAN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v12, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v13, Lorg/teleal/cling/model/message/header/MXHeader;

    filled-new-array {v13}, [Ljava/lang/Class;

    move-result-object v13

    const-string v14, "MX"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v14, v13}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v12, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MX:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v13, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v22, Lorg/teleal/cling/model/message/header/STCustomHeader;

    const-class v23, Lorg/teleal/cling/model/message/header/DMSAllHeader;

    const-class v14, Lorg/teleal/cling/model/message/header/STAllHeader;

    const-class v15, Lorg/teleal/cling/model/message/header/RootDeviceHeader;

    const-class v16, Lorg/teleal/cling/model/message/header/UDADeviceTypeHeader;

    const-class v17, Lorg/teleal/cling/model/message/header/UDAServiceTypeHeader;

    const-class v18, Lorg/teleal/cling/model/message/header/DeviceTypeHeader;

    const-class v19, Lorg/teleal/cling/model/message/header/ServiceTypeHeader;

    const-class v20, Lorg/teleal/cling/model/message/header/UDNHeader;

    const-class v21, Lorg/teleal/cling/model/message/header/EASYLINKHeader;

    filled-new-array/range {v14 .. v23}, [Ljava/lang/Class;

    move-result-object v14

    const-string v15, "ST"

    const/16 v0, 0xc

    invoke-direct {v13, v15, v0, v15, v14}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v13, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v14, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v0, Lorg/teleal/cling/model/message/header/EXTHeader;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v15, "EXT"

    move-object/from16 v17, v1

    const/16 v1, 0xd

    invoke-direct {v14, v15, v1, v15, v0}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v14, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v15, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v0, Lorg/teleal/cling/model/message/header/SoapActionHeader;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SOAPACTION"

    move-object/from16 v18, v2

    const/16 v2, 0xe

    invoke-direct {v15, v1, v2, v1, v0}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v15, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v1, Lorg/teleal/cling/model/message/header/TimeoutHeader;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "TIMEOUT"

    move-object/from16 v19, v3

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v2, v1}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->TIMEOUT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/teleal/cling/model/message/header/CallbackHeader;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "CALLBACK"

    move-object/from16 v20, v0

    const/16 v0, 0x10

    invoke-direct {v1, v3, v0, v3, v2}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CALLBACK:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SID"

    move-object/from16 v21, v1

    const/16 v1, 0x11

    invoke-direct {v0, v3, v1, v3, v2}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/teleal/cling/model/message/header/EventSequenceHeader;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SEQ"

    move-object/from16 v22, v0

    const/16 v0, 0x12

    invoke-direct {v1, v3, v0, v3, v2}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SEQ:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x13

    move-object/from16 v23, v1

    const-string v1, "X-CLING-IFACE-MAC"

    move-object/from16 v24, v4

    const-string v4, "EXT_IFACE_MAC"

    invoke-direct {v0, v4, v3, v1, v2}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v4, v24

    move-object/from16 v20, v0

    const/4 v0, 0x0

    filled-new-array/range {v1 .. v20}, [Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    move-result-object v1

    sput-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->$VALUES:[Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type$1;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->values()[Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->byName:Ljava/util/Map;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->httpName:Ljava/lang/String;

    iput-object p4, p0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->headerTypes:[Ljava/lang/Class;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/teleal/cling/model/message/header/UpnpHeader$Type;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->byName:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/message/header/UpnpHeader$Type;
    .locals 1

    const-class v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/model/message/header/UpnpHeader$Type;
    .locals 1

    sget-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->$VALUES:[Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0}, [Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    return-object v0
.end method


# virtual methods
.method public final b()[Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->headerTypes:[Ljava/lang/Class;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->httpName:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/lang/Class;)Z
    .locals 4

    iget-object p0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->headerTypes:[Ljava/lang/Class;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
