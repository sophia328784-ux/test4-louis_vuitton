.class public Lorg/teleal/cling/model/message/header/UDADeviceTypeHeader;
.super Lorg/teleal/cling/model/message/header/DeviceTypeHeader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/DeviceTypeHeader;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/header/DeviceTypeHeader;-><init>(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/DeviceType;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/header/DeviceTypeHeader;-><init>(Lorg/teleal/cling/model/types/DeviceType;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lorg/teleal/cling/model/types/UDADeviceType;->b(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDADeviceType;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid UDA device type header value, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lfc;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv40;->m(Ljava/lang/String;)V

    return-void
.end method
