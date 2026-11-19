.class public Lorg/teleal/cling/model/meta/DeviceIdentity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/teleal/cling/model/types/UDN;

.field public final b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    const/16 p1, 0x708

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->b:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;Ljava/lang/Integer;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    .line 20
    iput-object p2, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->b:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/DeviceIdentity;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    .line 16
    iget-object p1, p2, Lorg/teleal/cling/model/meta/DeviceIdentity;->b:Ljava/lang/Integer;

    .line 17
    iput-object p1, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object p0, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    iget-object p1, p1, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    iget-object p0, p0, Lorg/teleal/cling/model/types/UDN;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") UDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
