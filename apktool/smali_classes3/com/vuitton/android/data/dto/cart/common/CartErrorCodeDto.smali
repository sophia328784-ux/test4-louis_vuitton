.class public final enum Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0087\u0081\u0002\u0018\u0000 \u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;",
        "",
        "Companion",
        "MAX_QUANTITY",
        "MAX_QUANTITY_BY_SKU",
        "MAX_QUANTITY_PERSONALIZATION",
        "OUT_OF_STOCK",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

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

.field public static final Companion:Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto$Companion;

.field public static final enum MAX_QUANTITY:Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum MAX_QUANTITY_BY_SKU:Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum MAX_QUANTITY_PERSONALIZATION:Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field

.field public static final enum OUT_OF_STOCK:Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;
    .annotation runtime Lkotlinx/serialization/SerialName;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    const-string v1, "MAX_QUANTITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;->MAX_QUANTITY:Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    new-instance v1, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    const-string v2, "MAX_QUANTITY_BY_SKU"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;->MAX_QUANTITY_BY_SKU:Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    new-instance v2, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    const-string v3, "MAX_QUANTITY_PERSONALIZATION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;->MAX_QUANTITY_PERSONALIZATION:Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    new-instance v3, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    const-string v4, "OUT_OF_STOCK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;->OUT_OF_STOCK:Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    filled-new-array {v0, v1, v2, v3}, [Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;->$VALUES:[Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;->Companion:Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lfj;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lfj;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;
    .locals 1

    const-class v0, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;->$VALUES:[Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    return-object v0
.end method
