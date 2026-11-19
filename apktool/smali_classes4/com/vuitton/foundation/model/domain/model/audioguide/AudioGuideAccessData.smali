.class public final Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData$$serializer;,
        Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cBU\u0008\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u000b\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;",
        "",
        "",
        "id",
        "",
        "endAccessTimeStamp",
        "backgroundColor",
        "Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;",
        "theme",
        "title",
        "imageUrl",
        "<init>",
        "(Ljava/lang/String;JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData$Companion;

.field public static final g:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->Companion:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lw9;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lw9;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const/4 v4, 0x2

    aput-object v1, v2, v4

    aput-object v0, v2, v3

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->g:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p1, 0x3d

    const/16 v0, 0x3d

    if-ne v0, p9, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->a:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->b:J

    goto :goto_0

    :cond_0
    iput-wide p3, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->b:J

    :goto_0
    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->d:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->f:Ljava/lang/String;

    return-void

    :cond_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->a:Ljava/lang/String;

    .line 44
    iput-wide p2, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->b:J

    .line 45
    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->c:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->d:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    .line 47
    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->e:Ljava/lang/String;

    .line 48
    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 49
    invoke-direct/range {v0 .. v7}, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->b:J

    iget-wide v5, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->d:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->d:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->b:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->d:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->e:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioGuideAccessData(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endAccessTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->d:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    const-string v2, ", imageUrl="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->f:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2, p0}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
