.class public final Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion$$serializer;,
        Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000eBc\u0008\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\r\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;",
        "",
        "",
        "appConfigRevision",
        "connectedObjectsConfigRevision",
        "",
        "connectedObjectsConfigUrl",
        "",
        "lastAuthorizedVersionCode",
        "lastAuthorizedVersionCodeSubtitle",
        "androidMinOsAuthorizedVersion",
        "androidMinOsAuthorizedVersionTitle",
        "androidMinOsAuthorizedVersionSubTitle",
        "<init>",
        "(JJLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IJJLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion$Companion;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->Companion:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IJJLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit16 p12, p1, 0xff

    const/16 v0, 0xff

    if-ne v0, p12, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->a:J

    iput-wide p4, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->b:J

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->c:Ljava/lang/String;

    iput p7, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->d:I

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->e:Ljava/lang/String;

    iput p9, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->f:I

    iput-object p10, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->g:Ljava/lang/String;

    iput-object p11, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->h:Ljava/lang/String;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(JJLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->a:J

    .line 39
    iput-wide p3, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->b:J

    .line 40
    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->c:Ljava/lang/String;

    .line 41
    iput p6, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->d:I

    .line 42
    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->e:Ljava/lang/String;

    .line 43
    iput p8, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->f:I

    .line 44
    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->g:Ljava/lang/String;

    .line 45
    iput-object p10, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    iget-wide v3, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->a:J

    iget-wide v5, p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->b:J

    iget-wide v5, p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->d:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->f:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->h:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->b:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->d:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->e:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->f:I

    invoke-static {v3, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->g:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->h:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ConfigsVersion(appConfigRevision="

    const-string v1, ", connectedObjectsConfigRevision="

    iget-wide v2, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->a:J

    invoke-static {v2, v3, v0, v1}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", connectedObjectsConfigUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastAuthorizedVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastAuthorizedVersionCodeSubtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidMinOsAuthorizedVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", androidMinOsAuthorizedVersionTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidMinOsAuthorizedVersionSubTitle="

    const-string v2, ")"

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->h:Ljava/lang/String;

    invoke-static {v0, v1, p0, v2}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
