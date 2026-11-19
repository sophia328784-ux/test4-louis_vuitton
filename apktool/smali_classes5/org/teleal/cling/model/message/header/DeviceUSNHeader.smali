.class public Lorg/teleal/cling/model/message/header/DeviceUSNHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader<",
        "Lorg/teleal/cling/model/types/NamedDeviceType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/NamedDeviceType;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/types/DeviceType;)V
    .locals 1

    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    new-instance v0, Lorg/teleal/cling/model/types/NamedDeviceType;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/types/NamedDeviceType;-><init>(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/types/DeviceType;)V

    iput-object v0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast p0, Lorg/teleal/cling/model/types/NamedDeviceType;

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/NamedDeviceType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lorg/teleal/cling/model/types/NamedDeviceType;->a(Ljava/lang/String;)Lorg/teleal/cling/model/types/NamedDeviceType;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid device USN header value, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lfc;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv40;->m(Ljava/lang/String;)V

    return-void
.end method
