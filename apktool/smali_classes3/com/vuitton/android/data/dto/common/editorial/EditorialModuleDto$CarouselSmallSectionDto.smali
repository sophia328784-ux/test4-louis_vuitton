.class public final Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;
.super Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarouselSmallSectionDto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$$serializer;,
        Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B-\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\nB?\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\t\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;",
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;",
        "Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;",
        "header",
        "Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;",
        "algorithm",
        "",
        "",
        "skus",
        "<init>",
        "(Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;Ljava/util/List;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/common/editorial/HeaderDto;Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$Companion;

.field public static final e:[Lkotlin/Lazy;


# instance fields
.field public final b:Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;

.field public final c:Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;

.field public final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lrt;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Lrt;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lrt;

    const/16 v4, 0x1c

    invoke-direct {v3, v4}, Lrt;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    sput-object v3, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->e:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/common/editorial/HeaderDto;Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 3

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_2

    invoke-direct {p0, p1, p5}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    and-int/lit8 p5, p1, 0x1

    if-nez p5, :cond_0

    iput-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;

    :goto_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->c:Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    iput-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->d:Ljava/util/List;

    return-void

    :cond_1
    iput-object p4, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->d:Ljava/util/List;

    return-void

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;",
            "Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    iput-object p1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;

    .line 42
    iput-object p2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->c:Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;

    .line 43
    iput-object p3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->d:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 44
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;-><init>(Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->c:Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->c:Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->d:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->d:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->c:Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->d:Ljava/util/List;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarouselSmallSectionDto(header="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->c:Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", skus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->d:Ljava/util/List;

    invoke-static {v0, p0, v1}, La;->o(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
