.class public final enum Lcom/vuitton/android/presentation/common/ScreenOrigin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/common/ScreenOrigin;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u001b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/common/ScreenOrigin;",
        "",
        "",
        "trackingKey",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "FEED",
        "MY_LV",
        "CATALOG",
        "IMMERSIVE_ARTICLE",
        "ONBOARDING",
        "OSA",
        "PERSONAL_SELECTIONS",
        "WISHLIST",
        "BOOKING",
        "PLP",
        "PDP",
        "SEARCH",
        "CUSTOMER_SERVICES",
        "CONTRIBUTION_LINK",
        "APPOINTMENT_LIST",
        "APP_LINK",
        "PERSONAL_SELECTION_IN_STORE",
        "CART",
        "CHECKOUT",
        "EXCLUSIVE_OFFER",
        "CARE_SERVICES",
        "CONNECTIVITY",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum APPOINTMENT_LIST:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum APP_LINK:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum BOOKING:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum CARE_SERVICES:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum CART:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum CATALOG:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum CHECKOUT:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum CONNECTIVITY:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum CONTRIBUTION_LINK:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum CUSTOMER_SERVICES:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum EXCLUSIVE_OFFER:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum FEED:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum IMMERSIVE_ARTICLE:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum MY_LV:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum ONBOARDING:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum OSA:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum PDP:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum PERSONAL_SELECTIONS:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum PERSONAL_SELECTION_IN_STORE:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum PLP:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum SEARCH:Lcom/vuitton/android/presentation/common/ScreenOrigin;

.field public static final enum WISHLIST:Lcom/vuitton/android/presentation/common/ScreenOrigin;


# instance fields
.field private final trackingKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v1, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/4 v0, 0x0

    const-string v2, "feed"

    const-string v3, "FEED"

    invoke-direct {v1, v3, v0, v2}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/android/presentation/common/ScreenOrigin;->FEED:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v2, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/4 v0, 0x1

    const-string v3, "mylv"

    const-string v4, "MY_LV"

    invoke-direct {v2, v4, v0, v3}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/vuitton/android/presentation/common/ScreenOrigin;->MY_LV:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v3, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/4 v0, 0x2

    const-string v4, "shop"

    const-string v5, "CATALOG"

    invoke-direct {v3, v5, v0, v4}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/vuitton/android/presentation/common/ScreenOrigin;->CATALOG:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v4, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/4 v0, 0x3

    const-string v5, "immersive_article"

    const-string v6, "IMMERSIVE_ARTICLE"

    invoke-direct {v4, v6, v0, v5}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/vuitton/android/presentation/common/ScreenOrigin;->IMMERSIVE_ARTICLE:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v5, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/4 v0, 0x4

    const-string v6, "onboarding"

    const-string v7, "ONBOARDING"

    invoke-direct {v5, v7, v0, v6}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/vuitton/android/presentation/common/ScreenOrigin;->ONBOARDING:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v6, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/4 v0, 0x5

    const-string v7, "osa"

    const-string v8, "OSA"

    invoke-direct {v6, v8, v0, v7}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/vuitton/android/presentation/common/ScreenOrigin;->OSA:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v7, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/4 v0, 0x6

    const-string v8, "personal_selections"

    const-string v9, "PERSONAL_SELECTIONS"

    invoke-direct {v7, v9, v0, v8}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/vuitton/android/presentation/common/ScreenOrigin;->PERSONAL_SELECTIONS:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v8, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/4 v0, 0x7

    const-string v9, "wishlist"

    const-string v10, "WISHLIST"

    invoke-direct {v8, v10, v0, v9}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/vuitton/android/presentation/common/ScreenOrigin;->WISHLIST:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v9, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/16 v0, 0x8

    const-string v10, "booking"

    const-string v11, "BOOKING"

    invoke-direct {v9, v11, v0, v10}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/vuitton/android/presentation/common/ScreenOrigin;->BOOKING:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v10, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/16 v0, 0x9

    const-string v11, "product_list"

    const-string v12, "PLP"

    invoke-direct {v10, v12, v0, v11}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/vuitton/android/presentation/common/ScreenOrigin;->PLP:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v11, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/16 v0, 0xa

    const-string v12, "product_sheet"

    const-string v13, "PDP"

    invoke-direct {v11, v13, v0, v12}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/vuitton/android/presentation/common/ScreenOrigin;->PDP:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v12, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/16 v0, 0xb

    const-string v13, "search"

    const-string v14, "SEARCH"

    invoke-direct {v12, v14, v0, v13}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/vuitton/android/presentation/common/ScreenOrigin;->SEARCH:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v13, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/16 v0, 0xc

    const-string v14, "customer_services"

    const-string v15, "CUSTOMER_SERVICES"

    invoke-direct {v13, v15, v0, v14}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/vuitton/android/presentation/common/ScreenOrigin;->CUSTOMER_SERVICES:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v14, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/16 v0, 0xd

    const-string v15, "contribution_link"

    move-object/from16 v16, v1

    const-string v1, "CONTRIBUTION_LINK"

    invoke-direct {v14, v1, v0, v15}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/vuitton/android/presentation/common/ScreenOrigin;->CONTRIBUTION_LINK:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v15, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/16 v0, 0xe

    const-string v1, "appointment_list"

    move-object/from16 v17, v2

    const-string v2, "APPOINTMENT_LIST"

    invoke-direct {v15, v2, v0, v1}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/vuitton/android/presentation/common/ScreenOrigin;->APPOINTMENT_LIST:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v0, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/16 v1, 0xf

    const-string v2, "app_link"

    move-object/from16 v18, v3

    const-string v3, "APP_LINK"

    invoke-direct {v0, v3, v1, v2}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/presentation/common/ScreenOrigin;->APP_LINK:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v1, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/16 v2, 0x10

    const-string v3, "in_store_personal_selection"

    move-object/from16 v19, v0

    const-string v0, "PERSONAL_SELECTION_IN_STORE"

    invoke-direct {v1, v0, v2, v3}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/android/presentation/common/ScreenOrigin;->PERSONAL_SELECTION_IN_STORE:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v0, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/16 v2, 0x11

    const-string v3, "cart"

    move-object/from16 v20, v1

    const-string v1, "CART"

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/presentation/common/ScreenOrigin;->CART:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v1, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/16 v2, 0x12

    const-string v3, "checkout"

    move-object/from16 v21, v0

    const-string v0, "CHECKOUT"

    invoke-direct {v1, v0, v2, v3}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/android/presentation/common/ScreenOrigin;->CHECKOUT:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v0, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/16 v2, 0x13

    const-string v3, "exclusive_offer"

    move-object/from16 v22, v1

    const-string v1, "EXCLUSIVE_OFFER"

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/presentation/common/ScreenOrigin;->EXCLUSIVE_OFFER:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v1, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/16 v2, 0x14

    const-string v3, "repairs"

    move-object/from16 v23, v0

    const-string v0, "CARE_SERVICES"

    invoke-direct {v1, v0, v2, v3}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/android/presentation/common/ScreenOrigin;->CARE_SERVICES:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    new-instance v0, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    const/16 v2, 0x15

    const-string v3, "connectivity"

    move-object/from16 v24, v1

    const-string v1, "CONNECTIVITY"

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/common/ScreenOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/presentation/common/ScreenOrigin;->CONNECTIVITY:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v19, v22

    move-object/from16 v20, v23

    move-object/from16 v21, v24

    move-object/from16 v22, v0

    filled-new-array/range {v1 .. v22}, [Lcom/vuitton/android/presentation/common/ScreenOrigin;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/common/ScreenOrigin;->$VALUES:[Lcom/vuitton/android/presentation/common/ScreenOrigin;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/common/ScreenOrigin;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/common/ScreenOrigin;->trackingKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/common/ScreenOrigin;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/common/ScreenOrigin;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/common/ScreenOrigin;->$VALUES:[Lcom/vuitton/android/presentation/common/ScreenOrigin;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/common/ScreenOrigin;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/ScreenOrigin;->trackingKey:Ljava/lang/String;

    return-object p0
.end method
