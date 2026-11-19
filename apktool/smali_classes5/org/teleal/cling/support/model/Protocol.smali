.class public final enum Lorg/teleal/cling/support/model/Protocol;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/support/model/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/support/model/Protocol;

.field public static final enum ALL:Lorg/teleal/cling/support/model/Protocol;

.field public static final enum HTTP_GET:Lorg/teleal/cling/support/model/Protocol;

.field public static final enum IEC61883:Lorg/teleal/cling/support/model/Protocol;

.field public static final enum INTERNAL:Lorg/teleal/cling/support/model/Protocol;

.field public static final enum RTSP_RTP_UDP:Lorg/teleal/cling/support/model/Protocol;


# instance fields
.field private protocolString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/teleal/cling/support/model/Protocol;

    const/4 v1, 0x0

    const-string v2, "*"

    const-string v3, "ALL"

    invoke-direct {v0, v3, v1, v2}, Lorg/teleal/cling/support/model/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/Protocol;->ALL:Lorg/teleal/cling/support/model/Protocol;

    new-instance v1, Lorg/teleal/cling/support/model/Protocol;

    const/4 v2, 0x1

    const-string v3, "http-get"

    const-string v4, "HTTP_GET"

    invoke-direct {v1, v4, v2, v3}, Lorg/teleal/cling/support/model/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/support/model/Protocol;->HTTP_GET:Lorg/teleal/cling/support/model/Protocol;

    new-instance v2, Lorg/teleal/cling/support/model/Protocol;

    const/4 v3, 0x2

    const-string v4, "rtsp-rtp-udp"

    const-string v5, "RTSP_RTP_UDP"

    invoke-direct {v2, v5, v3, v4}, Lorg/teleal/cling/support/model/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/teleal/cling/support/model/Protocol;->RTSP_RTP_UDP:Lorg/teleal/cling/support/model/Protocol;

    new-instance v3, Lorg/teleal/cling/support/model/Protocol;

    const/4 v4, 0x3

    const-string v5, "internal"

    const-string v6, "INTERNAL"

    invoke-direct {v3, v6, v4, v5}, Lorg/teleal/cling/support/model/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/teleal/cling/support/model/Protocol;->INTERNAL:Lorg/teleal/cling/support/model/Protocol;

    new-instance v4, Lorg/teleal/cling/support/model/Protocol;

    const/4 v5, 0x4

    const-string v6, "iec61883"

    const-string v7, "IEC61883"

    invoke-direct {v4, v7, v5, v6}, Lorg/teleal/cling/support/model/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/teleal/cling/support/model/Protocol;->IEC61883:Lorg/teleal/cling/support/model/Protocol;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/teleal/cling/support/model/Protocol;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/model/Protocol;->$VALUES:[Lorg/teleal/cling/support/model/Protocol;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/teleal/cling/support/model/Protocol;->protocolString:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/teleal/cling/support/model/Protocol;
    .locals 5

    invoke-static {}, Lorg/teleal/cling/support/model/Protocol;->values()[Lorg/teleal/cling/support/model/Protocol;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/teleal/cling/support/model/Protocol;->protocolString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/Protocol;
    .locals 1

    const-class v0, Lorg/teleal/cling/support/model/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/support/model/Protocol;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/support/model/Protocol;
    .locals 1

    sget-object v0, Lorg/teleal/cling/support/model/Protocol;->$VALUES:[Lorg/teleal/cling/support/model/Protocol;

    invoke-virtual {v0}, [Lorg/teleal/cling/support/model/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/support/model/Protocol;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/support/model/Protocol;->protocolString:Ljava/lang/String;

    return-object p0
.end method
