.class public Lcom/android/wiimu/upnp/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "AVTransport"

.field public static final b:Ljava/lang/String; = "RenderingControl"

.field public static final c:Ljava/lang/String; = "PlayQueue"

.field public static final d:Ljava/lang/String; = "ContentDirectory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/teleal/cling/model/types/UDAServiceType;

    const-string v1, "AVTransport"

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/meta/Device;->e(Lorg/teleal/cling/model/types/UDAServiceType;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/teleal/cling/model/types/UDAServiceType;

    const-string v1, "ContentDirectory"

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/meta/Device;->e(Lorg/teleal/cling/model/types/UDAServiceType;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "urn:wiimu-com:serviceId:PlayQueue"

    invoke-static {v0}, Lorg/teleal/cling/model/types/ServiceId;->a(Ljava/lang/String;)Lorg/teleal/cling/model/types/ServiceId;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Lorg/teleal/cling/model/meta/Device;->f(Lorg/teleal/cling/model/types/UDAServiceType;Lorg/teleal/cling/model/types/ServiceId;Lorg/teleal/cling/model/meta/Device;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/meta/Service;

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/teleal/cling/model/types/UDAServiceType;

    const-string v1, "RenderingControl"

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/meta/Device;->e(Lorg/teleal/cling/model/types/UDAServiceType;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p0

    return-object p0
.end method
