.class public final Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto$$serializer;,
        Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000cBU\u0008\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u000b\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;",
        "",
        "",
        "address",
        "",
        "centerLatitude",
        "centerLongitude",
        "northEastLatitude",
        "northEastLongitude",
        "southWestLatitude",
        "southWestLongitude",
        "<init>",
        "(Ljava/lang/String;DDDDDD)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;DDDDDDLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:D

.field public final c:D

.field public final d:D

.field public final e:D

.field public final f:D

.field public final g:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->Companion:Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;DDDDDDLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 v0, p1, 0x7f

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->b:D

    iput-wide p5, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->c:D

    iput-wide p7, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->d:D

    iput-wide p9, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->e:D

    iput-wide p11, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->f:D

    move-wide p1, p13

    iput-wide p1, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->g:D

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;DDDDDD)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->a:Ljava/lang/String;

    .line 38
    iput-wide p2, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->b:D

    .line 39
    iput-wide p4, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->c:D

    .line 40
    iput-wide p6, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->d:D

    .line 41
    iput-wide p8, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->e:D

    .line 42
    iput-wide p10, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->f:D

    .line 43
    iput-wide p12, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->g:D

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->b:D

    iget-wide v5, p1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->c:D

    iget-wide v5, p1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->d:D

    iget-wide v5, p1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->d:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->e:D

    iget-wide v5, p1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->e:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->f:D

    iget-wide v5, p1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->f:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->g:D

    iget-wide p0, p1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->g:D

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->b:D

    invoke-static {v2, v3, v0, v1}, Ld21;->a(DII)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->c:D

    invoke-static {v2, v3, v0, v1}, Ld21;->a(DII)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->d:D

    invoke-static {v2, v3, v0, v1}, Ld21;->a(DII)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->e:D

    invoke-static {v2, v3, v0, v1}, Ld21;->a(DII)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->f:D

    invoke-static {v2, v3, v0, v1}, Ld21;->a(DII)I

    move-result v0

    iget-wide v1, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->g:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaceGeocodingDto(address="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", centerLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", centerLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", northEastLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", northEastLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", southWestLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->f:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", southWestLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
