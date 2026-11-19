.class public final Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto$$serializer;,
        Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000eBg\u0008\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\r\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;",
        "",
        "",
        "lvSyncRevision",
        "connectedObjectsRevision",
        "",
        "connectedObjectsSyncUrl",
        "",
        "lastAuthorizedVersionCode",
        "lastAuthorizedVersionCodeSubtitle",
        "androidMinOsAuthorizedVersion",
        "androidMinOsAuthorizedVersionTitle",
        "androidMinOsAuthorizedVersionSubTitle",
        "<init>",
        "(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IJJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
        "data"
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
.field public static final Companion:Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto$Companion;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Integer;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->Companion:Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IJJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p12, p1, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-ne v1, p12, :cond_5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->a:J

    iput-wide p4, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->b:J

    iput-object p6, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->c:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->d:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iput-object p7, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->d:Ljava/lang/Integer;

    :goto_0
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->e:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p8, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->e:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->f:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p9, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->f:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->g:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p10, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->g:Ljava/lang/String;

    :goto_3
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_4

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->h:Ljava/lang/String;

    return-void

    :cond_4
    iput-object p11, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->h:Ljava/lang/String;

    return-void

    :cond_5
    sget-object p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto$$serializer;->a:Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p1, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->a:J

    .line 73
    iput-wide p3, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->b:J

    .line 74
    iput-object p5, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->c:Ljava/lang/String;

    .line 75
    iput-object p6, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->d:Ljava/lang/Integer;

    .line 76
    iput-object p7, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->e:Ljava/lang/String;

    .line 77
    iput-object p8, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->f:Ljava/lang/String;

    .line 78
    iput-object p9, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->g:Ljava/lang/String;

    .line 79
    iput-object p10, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->h:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p12, p11, 0x8

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move-object p6, v0

    :cond_0
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_1

    move-object p7, v0

    :cond_1
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_2

    move-object p8, v0

    :cond_2
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_3

    move-object p9, v0

    :cond_3
    and-int/lit16 p11, p11, 0x80

    if-eqz p11, :cond_4

    move-object p10, v0

    .line 80
    :cond_4
    invoke-direct/range {p0 .. p10}, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;-><init>(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;

    iget-wide v3, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->a:J

    iget-wide v5, p1, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->b:J

    iget-wide v5, p1, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->d:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->h:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->b:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->d:Ljava/lang/Integer;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->e:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->f:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->g:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->h:Ljava/lang/String;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, "ConfigsVersionDto(lvSyncRevision="

    const-string v1, ", connectedObjectsRevision="

    iget-wide v2, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->a:J

    invoke-static {v2, v3, v0, v1}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", connectedObjectsSyncUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastAuthorizedVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastAuthorizedVersionCodeSubtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidMinOsAuthorizedVersion="

    const-string v2, ", androidMinOsAuthorizedVersionTitle="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->g:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2, v4}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", androidMinOsAuthorizedVersionSubTitle="

    const-string v2, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->h:Ljava/lang/String;

    invoke-static {v0, v1, p0, v2}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
