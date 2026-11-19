.class public final enum Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0087\u0081\u0002\u0018\u0000 \u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;",
        "",
        "Companion",
        "STORE_MODE",
        "CATALOG_SKU_LIST",
        "CATALOG_PRODUCT",
        "CATALOG_SECTION",
        "CATALOG_PLP",
        "presentation"
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

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

.field public static final enum CATALOG_PLP:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

.field public static final enum CATALOG_PRODUCT:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

.field public static final enum CATALOG_SECTION:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

.field public static final enum CATALOG_SKU_LIST:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

.field public static final Companion:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType$Companion;

.field public static final enum STORE_MODE:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    const-string v1, "STORE_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->STORE_MODE:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    new-instance v1, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    const-string v2, "CATALOG_SKU_LIST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->CATALOG_SKU_LIST:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    new-instance v2, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    const-string v3, "CATALOG_PRODUCT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->CATALOG_PRODUCT:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    new-instance v3, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    const-string v4, "CATALOG_SECTION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->CATALOG_SECTION:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    new-instance v4, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    const-string v5, "CATALOG_PLP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->CATALOG_PLP:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->$VALUES:[Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->Companion:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lfj;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lfj;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->$VALUES:[Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    return-object v0
.end method
