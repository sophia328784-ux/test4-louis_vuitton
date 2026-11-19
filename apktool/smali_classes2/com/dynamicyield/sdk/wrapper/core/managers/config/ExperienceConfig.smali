.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u008f\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;",
        "dataCenter",
        "",
        "sharedDevice",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;",
        "deviceType",
        "",
        "deviceId",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;",
        "channel",
        "ip",
        "defaultLocale",
        "isImplicitPageview",
        "isImplicitImpressionMode",
        "activeConsentIntegration",
        "activeConsentAccepted",
        "customUrl",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;Ljava/lang/Boolean;Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/String;)V",
        "DY-Sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;

.field public final b:Ljava/lang/Boolean;

.field public final c:Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public final h:Ljava/lang/Boolean;

.field public final i:Ljava/lang/Boolean;

.field public final j:Z

.field public k:Ljava/lang/Boolean;

.field public final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;Ljava/lang/Boolean;Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;

    .line 63
    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->b:Ljava/lang/Boolean;

    .line 64
    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;

    .line 65
    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->d:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->e:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    .line 67
    iput-object p6, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->f:Ljava/lang/String;

    .line 68
    iput-object p7, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->g:Ljava/lang/String;

    .line 69
    iput-object p8, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->h:Ljava/lang/Boolean;

    .line 70
    iput-object p9, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->i:Ljava/lang/Boolean;

    .line 71
    iput-boolean p10, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->j:Z

    .line 72
    iput-object p11, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->k:Ljava/lang/Boolean;

    .line 73
    iput-object p12, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->l:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;Ljava/lang/Boolean;Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p14, p13, 0x2

    const/4 v0, 0x0

    if-eqz p14, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_3

    sget-object p5, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;->APP:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    :cond_3
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_4

    move-object p6, v0

    :cond_4
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_5

    move-object p7, v0

    :cond_5
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_6

    move-object p8, v0

    :cond_6
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_7

    move-object p9, v0

    :cond_7
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_8

    const/4 p10, 0x0

    :cond_8
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_9

    move-object p11, v0

    :cond_9
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_a

    move-object p12, v0

    :cond_a
    invoke-direct/range {p0 .. p12}, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;Ljava/lang/Boolean;Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->b:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->b:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->e:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->e:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->h:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->h:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->i:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->i:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->j:Z

    iget-boolean v3, p1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->k:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->k:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->l:Ljava/lang/String;

    iget-object p1, p1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->l:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->b:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->d:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->e:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->g:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->j:Z

    invoke-static {v3, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->k:Ljava/lang/Boolean;

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->l:Ljava/lang/String;

    if-nez p0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExperienceConfig(dataCenter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sharedDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->e:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isImplicitPageview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->h:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isImplicitImpressionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activeConsentIntegration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", activeConsentAccepted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->k:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->l:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lfc;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
