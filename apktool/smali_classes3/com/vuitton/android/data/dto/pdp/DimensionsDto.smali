.class public final Lcom/vuitton/android/data/dto/pdp/DimensionsDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/pdp/DimensionsDto$$serializer;,
        Lcom/vuitton/android/data/dto/pdp/DimensionsDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B5\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nBM\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\t\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/pdp/DimensionsDto;",
        "",
        "Lcom/vuitton/android/data/dto/pdp/DimensionDto;",
        "height",
        "depth",
        "width",
        "",
        "formattedValue",
        "formattedLabel",
        "<init>",
        "(Lcom/vuitton/android/data/dto/pdp/DimensionDto;Lcom/vuitton/android/data/dto/pdp/DimensionDto;Lcom/vuitton/android/data/dto/pdp/DimensionDto;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/pdp/DimensionDto;Lcom/vuitton/android/data/dto/pdp/DimensionDto;Lcom/vuitton/android/data/dto/pdp/DimensionDto;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/pdp/DimensionsDto$Companion;


# instance fields
.field public final a:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

.field public final b:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

.field public final c:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/pdp/DimensionsDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->Companion:Lcom/vuitton/android/data/dto/pdp/DimensionsDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/pdp/DimensionDto;Lcom/vuitton/android/data/dto/pdp/DimensionDto;Lcom/vuitton/android/data/dto/pdp/DimensionDto;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p1, 0x1f

    const/16 v0, 0x1f

    if-ne v0, p7, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->a:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->b:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->c:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    iput-object p5, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->e:Ljava/lang/String;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/DimensionsDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/pdp/DimensionsDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/pdp/DimensionDto;Lcom/vuitton/android/data/dto/pdp/DimensionDto;Lcom/vuitton/android/data/dto/pdp/DimensionDto;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->a:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    .line 33
    iput-object p2, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->b:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    .line 34
    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->c:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    .line 35
    iput-object p4, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->d:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->a:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->a:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->b:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->b:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->c:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->c:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->a:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/pdp/DimensionDto;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->b:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/pdp/DimensionDto;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->c:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/pdp/DimensionDto;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-object v0, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DimensionsDto(height="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->a:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->b:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->c:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", formattedValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", formattedLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->e:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
