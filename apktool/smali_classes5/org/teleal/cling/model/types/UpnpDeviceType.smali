.class public final enum Lorg/teleal/cling/model/types/UpnpDeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/model/types/UpnpDeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/model/types/UpnpDeviceType;

.field public static final enum ContentDirectory:Lorg/teleal/cling/model/types/UpnpDeviceType;

.field public static final enum InternetGatewayDevice:Lorg/teleal/cling/model/types/UpnpDeviceType;

.field public static final enum MediaRenderer:Lorg/teleal/cling/model/types/UpnpDeviceType;

.field public static final enum MediaServer:Lorg/teleal/cling/model/types/UpnpDeviceType;

.field public static final enum WFADevice:Lorg/teleal/cling/model/types/UpnpDeviceType;


# instance fields
.field private headerString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/teleal/cling/model/types/UpnpDeviceType;

    const-string v1, "MediaServer"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lorg/teleal/cling/model/types/UpnpDeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/UpnpDeviceType;->MediaServer:Lorg/teleal/cling/model/types/UpnpDeviceType;

    new-instance v1, Lorg/teleal/cling/model/types/UpnpDeviceType;

    const-string v2, "MediaRenderer"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lorg/teleal/cling/model/types/UpnpDeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/model/types/UpnpDeviceType;->MediaRenderer:Lorg/teleal/cling/model/types/UpnpDeviceType;

    new-instance v2, Lorg/teleal/cling/model/types/UpnpDeviceType;

    const-string v3, "ContentDirectory"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lorg/teleal/cling/model/types/UpnpDeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/teleal/cling/model/types/UpnpDeviceType;->ContentDirectory:Lorg/teleal/cling/model/types/UpnpDeviceType;

    new-instance v3, Lorg/teleal/cling/model/types/UpnpDeviceType;

    const-string v4, "InternetGatewayDevice"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v4}, Lorg/teleal/cling/model/types/UpnpDeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/teleal/cling/model/types/UpnpDeviceType;->InternetGatewayDevice:Lorg/teleal/cling/model/types/UpnpDeviceType;

    new-instance v4, Lorg/teleal/cling/model/types/UpnpDeviceType;

    const-string v5, "WFADevice"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v5}, Lorg/teleal/cling/model/types/UpnpDeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/teleal/cling/model/types/UpnpDeviceType;->WFADevice:Lorg/teleal/cling/model/types/UpnpDeviceType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/teleal/cling/model/types/UpnpDeviceType;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/types/UpnpDeviceType;->$VALUES:[Lorg/teleal/cling/model/types/UpnpDeviceType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/teleal/cling/model/types/UpnpDeviceType;->headerString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/UpnpDeviceType;
    .locals 1

    const-class v0, Lorg/teleal/cling/model/types/UpnpDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/types/UpnpDeviceType;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/model/types/UpnpDeviceType;
    .locals 1

    sget-object v0, Lorg/teleal/cling/model/types/UpnpDeviceType;->$VALUES:[Lorg/teleal/cling/model/types/UpnpDeviceType;

    invoke-virtual {v0}, [Lorg/teleal/cling/model/types/UpnpDeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/types/UpnpDeviceType;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/types/UpnpDeviceType;->headerString:Ljava/lang/String;

    return-object p0
.end method
