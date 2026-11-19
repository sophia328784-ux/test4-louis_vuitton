.class public final Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto$$serializer;,
        Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B3\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0007\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;",
        "",
        "",
        "latitude",
        "longitude",
        "",
        "radius",
        "<init>",
        "(FFI)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IFFILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto$Companion;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto$Companion;

    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->a:F

    .line 28
    iput p2, p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->b:F

    .line 29
    iput p3, p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->c:I

    return-void
.end method

.method public synthetic constructor <init>(IFFILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-ne v0, p5, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->a:F

    iput p3, p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->b:F

    iput p4, p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->c:I

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;

    iget v1, p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->a:F

    iget v3, p1, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->b:F

    iget v3, p1, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->c:I

    iget p1, p1, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->c:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->b:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget p0, p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GeolocationDto(latitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget p0, p0, Lcom/vuitton/android/data/dto/common/editorial/GeolocationDto;->c:I

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
