.class public final Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto$$serializer;,
        Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015Bk\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fBq\u0008\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u000e\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;",
        "",
        "",
        "id",
        "instructionName",
        "instructionCode",
        "instructionNameICONiCS",
        "",
        "initialPrice",
        "updatedPrice",
        "quantity",
        "",
        "approved",
        "addedByRepairCenter",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ZZ)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Double;

.field public final f:Ljava/lang/Double;

.field public final g:Ljava/lang/Double;

.field public final h:Z

.field public final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->Companion:Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit16 p11, p1, 0x180

    const/4 v0, 0x0

    const/16 v1, 0x180

    if-ne v1, p11, :cond_7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p11, p1, 0x1

    if-nez p11, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->a:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->b:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->c:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->d:Ljava/lang/String;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->e:Ljava/lang/Double;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->e:Ljava/lang/Double;

    :goto_4
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->f:Ljava/lang/Double;

    goto :goto_5

    :cond_5
    iput-object p7, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->f:Ljava/lang/Double;

    :goto_5
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_6

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->g:Ljava/lang/Double;

    goto :goto_6

    :cond_6
    iput-object p8, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->g:Ljava/lang/Double;

    :goto_6
    iput-boolean p9, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->h:Z

    iput-boolean p10, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->i:Z

    return-void

    :cond_7
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ZZ)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->a:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->b:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->c:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->d:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->e:Ljava/lang/Double;

    .line 94
    iput-object p6, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->f:Ljava/lang/Double;

    .line 95
    iput-object p7, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->g:Ljava/lang/Double;

    .line 96
    iput-boolean p8, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->h:Z

    .line 97
    iput-boolean p9, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->i:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p10, p10, 0x40

    if-eqz p10, :cond_6

    move-object p7, v0

    .line 98
    :cond_6
    invoke-direct/range {p0 .. p9}, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->e:Ljava/lang/Double;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->e:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->f:Ljava/lang/Double;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->f:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->g:Ljava/lang/Double;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->g:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->i:Z

    iget-boolean p1, p1, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->i:Z

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->d:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->e:Ljava/lang/Double;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->f:Ljava/lang/Double;

    if-nez v3, :cond_5

    move v3, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->g:Ljava/lang/Double;

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-boolean v0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->h:Z

    invoke-static {v1, v2, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->i:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", instructionName="

    const-string v1, ", instructionCode="

    const-string v2, "CareServiceLineDto(id="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", instructionNameICONiCS="

    const-string v2, ", initialPrice="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->e:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->f:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->g:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", approved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", addedByRepairCenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->i:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
