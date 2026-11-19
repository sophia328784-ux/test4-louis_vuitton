.class public final Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;
.super Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$$serializer;,
        Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Companion;,
        Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \r2\u00020\u0001:\u0003\u000e\u000f\rB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B/\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000c\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;",
        "",
        "type",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;",
        "data",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "Data",
        "$serializer"
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
.field public static final Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne v1, p4, :cond_0

    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$$serializer;->a:Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    iput-object p1, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;->a:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContributionLinkOtherDto(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;->b:Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto$Data;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
