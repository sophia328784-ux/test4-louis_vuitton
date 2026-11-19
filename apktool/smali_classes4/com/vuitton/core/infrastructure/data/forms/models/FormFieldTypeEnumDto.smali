.class public final Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto$$serializer;,
        Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB!\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B5\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;",
        "",
        "",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;",
        "enumValueList",
        "defaultEnumValue",
        "<init>",
        "(Ljava/util/List;Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/util/List;Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto$Companion;

.field public static final c:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->Companion:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Ltx;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Ltx;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->c:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p4, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p4, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->a:Ljava/util/List;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;

    return-void

    :cond_0
    iput-object p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;

    return-void

    :cond_1
    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/List;Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;",
            ">;",
            "Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->a:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 34
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;-><init>(Ljava/util/List;Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;

    iget-object p1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FormFieldTypeEnumDto(enumValueList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultEnumValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
