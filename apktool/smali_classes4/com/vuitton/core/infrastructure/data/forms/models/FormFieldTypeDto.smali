.class public final Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto$$serializer;,
        Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015BO\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fBW\u0008\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u000e\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;",
        "",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;",
        "freeform",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;",
        "readOnlyEnum",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;",
        "dependentEnum",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;",
        "enum",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;",
        "dependentRemoteEnum",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;",
        "boolean",
        "<init>",
        "(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
        "forms"
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
.field public static final Companion:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto$Companion;


# instance fields
.field public final a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;

.field public final b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;

.field public final c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;

.field public final d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;

.field public final e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;

.field public final f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->Companion:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 59
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;-><init>(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p8, p1, 0x1

    const/4 v0, 0x0

    if-nez p8, :cond_0

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;

    :goto_4
    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_5

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;

    return-void

    :cond_5
    iput-object p7, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;

    .line 62
    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;

    .line 63
    iput-object p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;

    .line 64
    iput-object p4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;

    .line 65
    iput-object p5, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;

    .line 66
    iput-object p6, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move-object p6, v0

    .line 67
    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;-><init>(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;

    iget-object p1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;

    invoke-virtual {v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FormFieldTypeDto(freeform="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readOnlyEnum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dependentEnum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dependentRemoteEnum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", boolean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
