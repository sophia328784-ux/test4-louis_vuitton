.class public final Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto$$serializer;,
        Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011BA\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bBO\u0008\u0010\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0006\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\n\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;",
        "",
        "",
        "storeName",
        "Lcom/vuitton/android/data/dto/common/AssetDto;",
        "storeAsset",
        "",
        "storeCarousel",
        "Lcom/vuitton/android/data/dto/storemode/StoreModeSectionDto;",
        "sections",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/util/List;Ljava/util/List;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto$Companion;

.field public static final e:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/android/data/dto/common/AssetDto;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->Companion:Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lo11;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo11;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v4, Lo11;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lo11;-><init>(I)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [Lkotlin/Lazy;

    aput-object v1, v4, v3

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v2, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    sput-object v4, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->e:[Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 43
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;-><init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p6, p1, 0x1

    const/4 v0, 0x0

    if-nez p6, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->a:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->b:Lcom/vuitton/android/data/dto/common/AssetDto;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->b:Lcom/vuitton/android/data/dto/common/AssetDto;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->c:Ljava/util/List;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->c:Ljava/util/List;

    :goto_2
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->d:Ljava/util/List;

    return-void

    :cond_3
    iput-object p5, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/common/AssetDto;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/common/AssetDto;",
            ">;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/storemode/StoreModeSectionDto;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->b:Lcom/vuitton/android/data/dto/common/AssetDto;

    .line 47
    iput-object p3, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->c:Ljava/util/List;

    .line 48
    iput-object p4, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 49
    sget-object p4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    .line 50
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;-><init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->b:Lcom/vuitton/android/data/dto/common/AssetDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->b:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->d:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->d:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->b:Lcom/vuitton/android/data/dto/common/AssetDto;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/AssetDto;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->c:Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->d:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StoreModeInfoDto(storeName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storeAsset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->b:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storeCarousel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;->d:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
