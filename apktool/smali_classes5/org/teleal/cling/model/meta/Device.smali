.class public abstract Lorg/teleal/cling/model/meta/Device;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DI:",
        "Lorg/teleal/cling/model/meta/DeviceIdentity;",
        "D:",
        "Lorg/teleal/cling/model/meta/Device;",
        "S:",
        "Lorg/teleal/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/teleal/cling/model/Validatable;"
    }
.end annotation


# static fields
.field public static final i:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lorg/teleal/cling/model/meta/DeviceIdentity;

.field public final b:Lorg/teleal/cling/model/meta/UDAVersion;

.field public final c:Lorg/teleal/cling/model/types/DeviceType;

.field public final d:Lorg/teleal/cling/model/meta/DeviceDetails;

.field public final e:[Lorg/teleal/cling/model/meta/Icon;

.field public final f:[Lorg/teleal/cling/model/meta/Service;

.field public final g:[Lorg/teleal/cling/model/meta/Device;

.field public final h:Lorg/teleal/cling/model/meta/Device;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/meta/Device;->i:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 182
    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;",
            "Lorg/teleal/cling/model/meta/UDAVersion;",
            "Lorg/teleal/cling/model/types/DeviceType;",
            "Lorg/teleal/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/teleal/cling/model/meta/Icon;",
            "[TS;[TD;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    if-nez p2, :cond_0

    new-instance p2, Lorg/teleal/cling/model/meta/UDAVersion;

    invoke-direct {p2}, Lorg/teleal/cling/model/meta/UDAVersion;-><init>()V

    :cond_0
    iput-object p2, p0, Lorg/teleal/cling/model/meta/Device;->b:Lorg/teleal/cling/model/meta/UDAVersion;

    iput-object p3, p0, Lorg/teleal/cling/model/meta/Device;->c:Lorg/teleal/cling/model/types/DeviceType;

    iput-object p4, p0, Lorg/teleal/cling/model/meta/Device;->d:Lorg/teleal/cling/model/meta/DeviceDetails;

    const/4 p1, 0x0

    const-string p2, "Final value has been set already, model is immutable"

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p5, :cond_3

    array-length v0, p5

    move v2, p3

    move v1, p4

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v3, p5, v1

    if-eqz v3, :cond_2

    iget-object v2, v3, Lorg/teleal/cling/model/meta/Icon;->g:Lorg/teleal/cling/model/meta/Device;

    if-nez v2, :cond_1

    iput-object p0, v3, Lorg/teleal/cling/model/meta/Icon;->g:Lorg/teleal/cling/model/meta/Device;

    move v2, p4

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lmd;->k(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v2, p3

    :cond_4
    if-eqz p5, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    new-array p5, p4, [Lorg/teleal/cling/model/meta/Icon;

    :cond_6
    iput-object p5, p0, Lorg/teleal/cling/model/meta/Device;->e:[Lorg/teleal/cling/model/meta/Icon;

    if-eqz p6, :cond_9

    array-length p5, p6

    move v1, p3

    move v0, p4

    :goto_2
    if-ge v0, p5, :cond_a

    aget-object v2, p6, v0

    if-eqz v2, :cond_8

    iget-object v1, v2, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    if-nez v1, :cond_7

    iput-object p0, v2, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    move v1, p4

    goto :goto_3

    :cond_7
    invoke-static {p2}, Lmd;->k(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    move v1, p3

    :cond_a
    if-eqz p6, :cond_b

    if-eqz v1, :cond_c

    :cond_b
    move-object p6, p1

    :cond_c
    iput-object p6, p0, Lorg/teleal/cling/model/meta/Device;->f:[Lorg/teleal/cling/model/meta/Service;

    if-eqz p7, :cond_f

    array-length p5, p7

    move p6, p4

    :goto_4
    if-ge p6, p5, :cond_f

    aget-object v0, p7, p6

    if-eqz v0, :cond_e

    iget-object p3, v0, Lorg/teleal/cling/model/meta/Device;->h:Lorg/teleal/cling/model/meta/Device;

    if-nez p3, :cond_d

    iput-object p0, v0, Lorg/teleal/cling/model/meta/Device;->h:Lorg/teleal/cling/model/meta/Device;

    move p3, p4

    goto :goto_5

    :cond_d
    invoke-static {p2}, Lmd;->k(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_5
    add-int/lit8 p6, p6, 0x1

    goto :goto_4

    :cond_f
    if-eqz p7, :cond_10

    if-eqz p3, :cond_11

    :cond_10
    move-object p7, p1

    :cond_11
    iput-object p7, p0, Lorg/teleal/cling/model/meta/Device;->g:[Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->r()Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_13

    sget-object p2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    sget-object p3, Lorg/teleal/cling/model/meta/Device;->i:Ljava/util/logging/Logger;

    invoke-virtual {p3, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/teleal/cling/model/ValidationError;

    invoke-virtual {p2}, Lorg/teleal/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    new-instance p1, Lorg/teleal/cling/model/ValidationException;

    const-string p2, "Validation of device graph failed, call getErrors() on exception"

    invoke-direct {p1, p2, p0}, Lorg/teleal/cling/model/ValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p1

    :cond_13
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;",
            "Lorg/teleal/cling/model/types/DeviceType;",
            "Lorg/teleal/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/teleal/cling/model/meta/Icon;",
            "[TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 180
    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;",
            "Lorg/teleal/cling/model/types/DeviceType;",
            "Lorg/teleal/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/teleal/cling/model/meta/Icon;",
            "[TS;[TD;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 181
    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public static b(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;
    .locals 3

    iget-object v0, p1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v0, p0}, Lorg/teleal/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->i()[Lorg/teleal/cling/model/meta/Device;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-static {p0, v2}, Lorg/teleal/cling/model/meta/Device;->b(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lorg/teleal/cling/model/meta/Device;)Ljava/util/HashSet;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->n()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->i()[Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/teleal/cling/model/meta/Device;->d(Lorg/teleal/cling/model/meta/Device;)Ljava/util/HashSet;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static f(Lorg/teleal/cling/model/types/UDAServiceType;Lorg/teleal/cling/model/types/ServiceId;Lorg/teleal/cling/model/meta/Device;)Ljava/util/HashSet;
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->l()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->j()[Lorg/teleal/cling/model/meta/Service;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    invoke-static {v5, p0, p1}, Lorg/teleal/cling/model/meta/Device;->m(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/teleal/cling/model/meta/Device;->d(Lorg/teleal/cling/model/meta/Device;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Device;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Device;->j()[Lorg/teleal/cling/model/meta/Service;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    invoke-static {v5, p0, p1}, Lorg/teleal/cling/model/meta/Device;->m(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static m(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/teleal/cling/model/meta/Service;->a:Lorg/teleal/cling/model/types/ServiceType;

    invoke-virtual {v2, p1}, Lorg/teleal/cling/model/types/ServiceType;->a(Lorg/teleal/cling/model/types/ServiceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    if-eqz p2, :cond_3

    iget-object p0, p0, Lorg/teleal/cling/model/meta/Service;->b:Lorg/teleal/cling/model/types/ServiceId;

    invoke-virtual {p0, p2}, Lorg/teleal/cling/model/types/ServiceId;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v0

    :goto_3
    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v1
.end method


# virtual methods
.method public abstract a(Lorg/teleal/cling/model/Namespace;)[Lorg/teleal/cling/model/resource/Resource;
.end method

.method public abstract c(Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/meta/Device;
.end method

.method public final e(Lorg/teleal/cling/model/types/UDAServiceType;)Lorg/teleal/cling/model/meta/Service;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lorg/teleal/cling/model/meta/Device;->f(Lorg/teleal/cling/model/types/UDAServiceType;Lorg/teleal/cling/model/types/ServiceId;Lorg/teleal/cling/model/meta/Device;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/meta/Service;

    return-object p0

    :cond_0
    return-object v0
.end method

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
    check-cast p1, Lorg/teleal/cling/model/meta/Device;

    iget-object p0, p0, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object p1, p1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/meta/DeviceIdentity;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public g(Lorg/teleal/cling/model/profile/ControlPointInfo;)Lorg/teleal/cling/model/meta/DeviceDetails;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/meta/Device;->d:Lorg/teleal/cling/model/meta/DeviceDetails;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    iget-object p0, p0, Lorg/teleal/cling/model/meta/Device;->d:Lorg/teleal/cling/model/meta/DeviceDetails;

    if-eqz p0, :cond_3

    iget-object v2, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->d:Lorg/teleal/cling/model/meta/ModelDetails;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lorg/teleal/cling/model/meta/ModelDetails;->a:Ljava/lang/String;

    iget-object v4, v2, Lorg/teleal/cling/model/meta/ModelDetails;->a:Ljava/lang/String;

    iget-object v2, v2, Lorg/teleal/cling/model/meta/ModelDetails;->c:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v2, v1

    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_7

    iget-object v4, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->c:Lorg/teleal/cling/model/meta/ManufacturerDetails;

    if-eqz v4, :cond_7

    if-eqz v1, :cond_6

    iget-object v4, v4, Lorg/teleal/cling/model/meta/ManufacturerDetails;->a:Ljava/lang/String;

    if-eqz v4, :cond_6

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->c:Lorg/teleal/cling/model/meta/ManufacturerDetails;

    iget-object v4, v4, Lorg/teleal/cling/model/meta/ManufacturerDetails;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_2
    iget-object p0, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->c:Lorg/teleal/cling/model/meta/ManufacturerDetails;

    iget-object p0, p0, Lorg/teleal/cling/model/meta/ManufacturerDetails;->a:Ljava/lang/String;

    if-eqz p0, :cond_7

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string p0, " "

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    move-object v1, v0

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/DeviceIdentity;->hashCode()I

    move-result p0

    return p0
.end method

.method public abstract i()[Lorg/teleal/cling/model/meta/Device;
.end method

.method public abstract j()[Lorg/teleal/cling/model/meta/Service;
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->i()[Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->i()[Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final l()Z
    .locals 0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->j()[Lorg/teleal/cling/model/meta/Service;

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->j()[Lorg/teleal/cling/model/meta/Service;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final n()Z
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/meta/Device;->h:Lorg/teleal/cling/model/meta/Device;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract o(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;Ljava/util/ArrayList;)Lorg/teleal/cling/model/meta/Device;
.end method

.method public abstract p(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)Lorg/teleal/cling/model/meta/Service;
.end method

.method public abstract q(I)[Lorg/teleal/cling/model/meta/Service;
.end method

.method public r()Ljava/util/List;
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/teleal/cling/model/meta/Device;->c:Lorg/teleal/cling/model/types/DeviceType;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lorg/teleal/cling/model/meta/Device;->b:Lorg/teleal/cling/model/meta/UDAVersion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, v1, Lorg/teleal/cling/model/meta/UDAVersion;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    new-instance v4, Lorg/teleal/cling/model/ValidationError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "major"

    const-string v7, "UDA major spec version must be 1"

    invoke-direct {v4, v5, v6, v7}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-gez v3, :cond_1

    new-instance v3, Lorg/teleal/cling/model/ValidationError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "minor"

    const-string v5, "UDA minor spec version must be equal or greater 0"

    invoke-direct {v3, v1, v4, v5}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/teleal/cling/model/meta/Device;->d:Lorg/teleal/cling/model/meta/DeviceDetails;

    if-eqz v1, :cond_4

    sget-object v2, Lorg/teleal/cling/model/meta/DeviceDetails;->j:Ljava/util/logging/Logger;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lorg/teleal/cling/model/meta/DeviceDetails;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_2

    const-string v4, "UPnP specification violation, UPC must be 12 digits: "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "UPnP specification violation, UPC must be 12 digits all-numeric: "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/teleal/cling/model/meta/Device;->e:[Lorg/teleal/cling/model/meta/Icon;

    if-eqz v2, :cond_c

    array-length v3, v2

    if-lez v3, :cond_c

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_c

    aget-object v5, v2, v4

    if-eqz v5, :cond_b

    iget-object v6, v5, Lorg/teleal/cling/model/meta/Icon;->e:Ljava/net/URI;

    sget-object v7, Lorg/teleal/cling/model/meta/Icon;->h:Ljava/util/logging/Logger;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v5, Lorg/teleal/cling/model/meta/Icon;->a:Lorg/teleal/common/util/MimeType;

    const-string v10, "UPnP specification violation of: "

    if-nez v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lorg/teleal/cling/model/meta/Icon;->g:Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Invalid icon, missing mime type: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_5
    iget v9, v5, Lorg/teleal/cling/model/meta/Icon;->b:I

    if-nez v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lorg/teleal/cling/model/meta/Icon;->g:Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Invalid icon, missing width: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_6
    iget v9, v5, Lorg/teleal/cling/model/meta/Icon;->c:I

    if-nez v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lorg/teleal/cling/model/meta/Icon;->g:Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Invalid icon, missing height: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_7
    iget v9, v5, Lorg/teleal/cling/model/meta/Icon;->d:I

    if-nez v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v5, Lorg/teleal/cling/model/meta/Icon;->g:Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid icon, missing bitmap depth: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_8
    const-string v7, "uri"

    if-nez v6, :cond_9

    new-instance v9, Lorg/teleal/cling/model/ValidationError;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "URL is required"

    invoke-direct {v9, v10, v7, v11}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v6

    if-eqz v6, :cond_a

    goto :goto_2

    :cond_a
    new-instance v6, Ljava/net/MalformedURLException;

    invoke-direct {v6}, Ljava/net/MalformedURLException;-><init>()V

    throw v6
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v6

    new-instance v9, Lorg/teleal/cling/model/ValidationError;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "URL must be valid: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v5, v7, v6}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :catch_2
    :goto_2
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->l()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->j()[Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_14

    aget-object v5, v2, v4

    if-eqz v5, :cond_13

    iget-object v6, v5, Lorg/teleal/cling/model/meta/Service;->d:Ljava/util/HashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v5, Lorg/teleal/cling/model/meta/Service;->a:Lorg/teleal/cling/model/types/ServiceType;

    if-nez v8, :cond_d

    new-instance v8, Lorg/teleal/cling/model/ValidationError;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "serviceType"

    const-string v11, "Service type/info is required"

    invoke-direct {v8, v9, v10, v11}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v8, v5, Lorg/teleal/cling/model/meta/Service;->b:Lorg/teleal/cling/model/types/ServiceId;

    if-nez v8, :cond_e

    new-instance v8, Lorg/teleal/cling/model/ValidationError;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "serviceId"

    const-string v11, "Service ID is required"

    invoke-direct {v8, v9, v10, v11}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/Service;->b()[Lorg/teleal/cling/model/meta/Action;

    move-result-object v8

    const-string v9, ""

    if-eqz v8, :cond_10

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/Service;->b()[Lorg/teleal/cling/model/meta/Action;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_10

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/Service;->b()[Lorg/teleal/cling/model/meta/Action;

    move-result-object v8

    array-length v10, v8

    move v11, v1

    :goto_4
    if-ge v11, v10, :cond_10

    aget-object v12, v8, v11

    invoke-virtual {v12}, Lorg/teleal/cling/model/meta/Action;->a()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v5, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    iget-object v12, v12, Lorg/teleal/cling/model/meta/Device;->d:Lorg/teleal/cling/model/meta/DeviceDetails;

    iget-object v12, v12, Lorg/teleal/cling/model/meta/DeviceDetails;->b:Ljava/lang/String;

    sget-object v12, Lk/a;->a:Ljava/util/HashMap;

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_10
    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/Service;->c()[Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v8

    if-eqz v8, :cond_12

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/Service;->c()[Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_12

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/Service;->c()[Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v5

    array-length v8, v5

    move v10, v1

    :goto_5
    if-ge v10, v8, :cond_12

    aget-object v11, v5, v10

    iget-object v11, v11, Lorg/teleal/cling/model/meta/StateVariable;->a:Ljava/lang/String;

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_11

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_12
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_14
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->k()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->i()[Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    array-length v2, p0

    :goto_6
    if-ge v1, v2, :cond_16

    aget-object v3, p0, v1

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/Device;->r()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") Identity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/DeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Root: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->n()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
