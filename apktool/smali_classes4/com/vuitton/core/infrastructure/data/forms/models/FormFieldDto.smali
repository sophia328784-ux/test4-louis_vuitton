.class public final Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;,
        Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB5\u0008\u0010\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0008\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;",
        "",
        "",
        "isMandatory",
        "",
        "order",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;",
        "type",
        "<init>",
        "(ZILcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IZILcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$Companion;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->Companion:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IZILcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-ne v0, p5, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->a:Z

    iput p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->b:I

    iput-object p4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(ZILcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->a:Z

    .line 28
    iput p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->b:I

    .line 29
    iput-object p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-boolean v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->b:I

    iget v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;

    iget-object p1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->b:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FormFieldDto(isMandatory="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
