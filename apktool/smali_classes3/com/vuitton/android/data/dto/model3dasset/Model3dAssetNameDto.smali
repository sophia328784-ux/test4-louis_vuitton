.class public final enum Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0087\u0081\u0002\u0018\u0000 \u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;",
        "",
        "Companion",
        "LD_R",
        "BACKGROUND_3D",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;

.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum BACKGROUND_3D:Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final Companion:Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto$Companion;

.field public static final enum LD_R:Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;

    const-string v1, "LD_R"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;->LD_R:Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;

    new-instance v1, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;

    const-string v2, "BACKGROUND_3D"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;->BACKGROUND_3D:Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;

    filled-new-array {v0, v1}, [Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;->$VALUES:[Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;->Companion:Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Ldd0;

    invoke-direct {v1, v3}, Ldd0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;
    .locals 1

    const-class v0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;->$VALUES:[Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;

    return-object v0
.end method
