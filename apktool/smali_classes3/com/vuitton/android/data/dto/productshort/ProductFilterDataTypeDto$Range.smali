.class public final Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;
.super Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range$$serializer;,
        Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nBA\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\t\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;",
        "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;",
        "Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;",
        "totalRange",
        "selectedRange",
        "",
        "stepValue",
        "",
        "unit",
        "<init>",
        "(Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;ILjava/lang/String;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/productshort/RangeTypeDto;Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range$Companion;


# instance fields
.field public final a:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

.field public final b:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->Companion:Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/productshort/RangeTypeDto;Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p6, p1, 0xd

    const/4 v0, 0x0

    const/16 v1, 0xd

    if-ne v1, p6, :cond_1

    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->a:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->b:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->b:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

    :goto_0
    iput p4, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->c:I

    iput-object p5, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->d:Ljava/lang/String;

    return-void

    :cond_1
    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    iput-object p1, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->a:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

    .line 38
    iput-object p2, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->b:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

    .line 39
    iput p3, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->c:I

    .line 40
    iput-object p4, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 41
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;-><init>(Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->a:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->a:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->b:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->b:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->c:I

    iget v3, p1, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->a:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->b:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Range(totalRange="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->a:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->b:Lcom/vuitton/android/data/dto/productshort/RangeTypeDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stepValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Range;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
