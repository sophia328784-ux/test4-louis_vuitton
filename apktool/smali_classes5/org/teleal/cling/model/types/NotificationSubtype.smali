.class public final enum Lorg/teleal/cling/model/types/NotificationSubtype;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/model/types/NotificationSubtype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum ALIVE:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum ALL:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum ALLSSDP:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum BYEBYE:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum ContentDirectory:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum DISCOVER:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum DMALL:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum DMSALL:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum EASYLINK:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum GETWAYDEVICE:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum OLD:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum PROPCHANGE:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum UPDATE:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum WFADEVICE:Lorg/teleal/cling/model/types/NotificationSubtype;


# instance fields
.field private headerString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lorg/teleal/cling/model/types/NotificationSubtype;

    const/4 v1, 0x0

    const-string v2, "ssdp:alive"

    const-string v3, "ALIVE"

    invoke-direct {v0, v3, v1, v2}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->ALIVE:Lorg/teleal/cling/model/types/NotificationSubtype;

    new-instance v1, Lorg/teleal/cling/model/types/NotificationSubtype;

    const/4 v2, 0x1

    const-string v3, "ssdp:update"

    const-string v4, "UPDATE"

    invoke-direct {v1, v4, v2, v3}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/model/types/NotificationSubtype;->UPDATE:Lorg/teleal/cling/model/types/NotificationSubtype;

    new-instance v2, Lorg/teleal/cling/model/types/NotificationSubtype;

    const/4 v3, 0x2

    const-string v4, "ssdp:byebye"

    const-string v5, "BYEBYE"

    invoke-direct {v2, v5, v3, v4}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/teleal/cling/model/types/NotificationSubtype;->BYEBYE:Lorg/teleal/cling/model/types/NotificationSubtype;

    new-instance v3, Lorg/teleal/cling/model/types/NotificationSubtype;

    const/4 v4, 0x3

    const-string v5, "ssdp:wiimudevice"

    const-string v6, "ALL"

    invoke-direct {v3, v6, v4, v5}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/teleal/cling/model/types/NotificationSubtype;->ALL:Lorg/teleal/cling/model/types/NotificationSubtype;

    new-instance v4, Lorg/teleal/cling/model/types/NotificationSubtype;

    const/4 v5, 0x4

    const-string v6, "ssdp:all"

    const-string v7, "ALLSSDP"

    invoke-direct {v4, v7, v5, v6}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/teleal/cling/model/types/NotificationSubtype;->ALLSSDP:Lorg/teleal/cling/model/types/NotificationSubtype;

    new-instance v5, Lorg/teleal/cling/model/types/NotificationSubtype;

    const/4 v6, 0x5

    const-string v7, "urn:schemas-upnp-org:device:MediaServer:1"

    const-string v8, "DMSALL"

    invoke-direct {v5, v8, v6, v7}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/teleal/cling/model/types/NotificationSubtype;->DMSALL:Lorg/teleal/cling/model/types/NotificationSubtype;

    new-instance v6, Lorg/teleal/cling/model/types/NotificationSubtype;

    const/4 v7, 0x6

    const-string v8, "urn:schemas-upnp-org:device:MediaRenderer:1"

    const-string v9, "DMALL"

    invoke-direct {v6, v9, v7, v8}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/teleal/cling/model/types/NotificationSubtype;->DMALL:Lorg/teleal/cling/model/types/NotificationSubtype;

    new-instance v7, Lorg/teleal/cling/model/types/NotificationSubtype;

    const/4 v8, 0x7

    const-string v9, "ssdp:easylink"

    const-string v10, "EASYLINK"

    invoke-direct {v7, v10, v8, v9}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/teleal/cling/model/types/NotificationSubtype;->EASYLINK:Lorg/teleal/cling/model/types/NotificationSubtype;

    new-instance v8, Lorg/teleal/cling/model/types/NotificationSubtype;

    const/16 v9, 0x8

    const-string v10, "ssdp:discover"

    const-string v11, "DISCOVER"

    invoke-direct {v8, v11, v9, v10}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/teleal/cling/model/types/NotificationSubtype;->DISCOVER:Lorg/teleal/cling/model/types/NotificationSubtype;

    new-instance v9, Lorg/teleal/cling/model/types/NotificationSubtype;

    const/16 v10, 0x9

    const-string v11, "upnp:propchange"

    const-string v12, "PROPCHANGE"

    invoke-direct {v9, v12, v10, v11}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/teleal/cling/model/types/NotificationSubtype;->PROPCHANGE:Lorg/teleal/cling/model/types/NotificationSubtype;

    new-instance v10, Lorg/teleal/cling/model/types/NotificationSubtype;

    const/16 v11, 0xa

    const-string v12, "urn:schemas-upnp-org:device:InternetGatewayDevice:1"

    const-string v13, "GETWAYDEVICE"

    invoke-direct {v10, v13, v11, v12}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/teleal/cling/model/types/NotificationSubtype;->GETWAYDEVICE:Lorg/teleal/cling/model/types/NotificationSubtype;

    new-instance v11, Lorg/teleal/cling/model/types/NotificationSubtype;

    const/16 v12, 0xb

    const-string v13, "urn:schemas-wifialliance-org:device:WFADevice:1"

    const-string v14, "WFADEVICE"

    invoke-direct {v11, v14, v12, v13}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/teleal/cling/model/types/NotificationSubtype;->WFADEVICE:Lorg/teleal/cling/model/types/NotificationSubtype;

    new-instance v12, Lorg/teleal/cling/model/types/NotificationSubtype;

    const/16 v13, 0xc

    const-string v14, "urn:schemas-upnp-org:service:ContentDirectory:1"

    const-string v15, "ContentDirectory"

    invoke-direct {v12, v15, v13, v14}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/teleal/cling/model/types/NotificationSubtype;->ContentDirectory:Lorg/teleal/cling/model/types/NotificationSubtype;

    new-instance v13, Lorg/teleal/cling/model/types/NotificationSubtype;

    const/16 v14, 0xd

    const-string v15, "ssdp:export"

    move-object/from16 v16, v0

    const-string v0, "OLD"

    invoke-direct {v13, v0, v14, v15}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/teleal/cling/model/types/NotificationSubtype;->OLD:Lorg/teleal/cling/model/types/NotificationSubtype;

    move-object/from16 v0, v16

    filled-new-array/range {v0 .. v13}, [Lorg/teleal/cling/model/types/NotificationSubtype;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->$VALUES:[Lorg/teleal/cling/model/types/NotificationSubtype;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/teleal/cling/model/types/NotificationSubtype;->headerString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/NotificationSubtype;
    .locals 1

    const-class v0, Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/types/NotificationSubtype;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/model/types/NotificationSubtype;
    .locals 1

    sget-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->$VALUES:[Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v0}, [Lorg/teleal/cling/model/types/NotificationSubtype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/types/NotificationSubtype;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/types/NotificationSubtype;->headerString:Ljava/lang/String;

    return-object p0
.end method
