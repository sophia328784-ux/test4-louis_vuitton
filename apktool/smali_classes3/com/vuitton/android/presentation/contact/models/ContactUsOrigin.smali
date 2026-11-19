.class public final enum Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "FEED",
        "CATALOG",
        "PLP",
        "PDP",
        "SERVICES",
        "CART",
        "CHECKOUT",
        "CARE_SERVICES",
        "CERTIFICATES",
        "WISHLIST",
        "PERSONAL_SELECTION",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

.field public static final enum CARE_SERVICES:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

.field public static final enum CART:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

.field public static final enum CATALOG:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

.field public static final enum CERTIFICATES:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

.field public static final enum CHECKOUT:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

.field public static final enum FEED:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

.field public static final enum PDP:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

.field public static final enum PERSONAL_SELECTION:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

.field public static final enum PLP:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

.field public static final enum SERVICES:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

.field public static final enum WISHLIST:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    const/4 v1, 0x0

    const-string v2, "feed"

    const-string v3, "FEED"

    invoke-direct {v0, v3, v1, v2}, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->FEED:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    new-instance v1, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    const/4 v2, 0x1

    const-string v3, "catalog"

    const-string v4, "CATALOG"

    invoke-direct {v1, v4, v2, v3}, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->CATALOG:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    new-instance v2, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    const/4 v3, 0x2

    const-string v4, "product_list"

    const-string v5, "PLP"

    invoke-direct {v2, v5, v3, v4}, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->PLP:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    new-instance v3, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    const/4 v4, 0x3

    const-string v5, "product_sheet"

    const-string v6, "PDP"

    invoke-direct {v3, v6, v4, v5}, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->PDP:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    new-instance v4, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    const/4 v5, 0x4

    const-string v6, "services"

    const-string v7, "SERVICES"

    invoke-direct {v4, v7, v5, v6}, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->SERVICES:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    new-instance v5, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    const/4 v6, 0x5

    const-string v7, "cart"

    const-string v8, "CART"

    invoke-direct {v5, v8, v6, v7}, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->CART:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    new-instance v6, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    const/4 v7, 0x6

    const-string v8, "checkout"

    const-string v9, "CHECKOUT"

    invoke-direct {v6, v9, v7, v8}, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->CHECKOUT:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    new-instance v7, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    const/4 v8, 0x7

    const-string v9, "my_care_services"

    const-string v10, "CARE_SERVICES"

    invoke-direct {v7, v10, v8, v9}, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->CARE_SERVICES:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    new-instance v8, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    const/16 v9, 0x8

    const-string v10, "certificates"

    const-string v11, "CERTIFICATES"

    invoke-direct {v8, v11, v9, v10}, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->CERTIFICATES:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    new-instance v9, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    const/16 v10, 0x9

    const-string v11, "wishlist"

    const-string v12, "WISHLIST"

    invoke-direct {v9, v12, v10, v11}, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->WISHLIST:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    new-instance v10, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    const/16 v11, 0xa

    const-string v12, "personal_selection"

    const-string v13, "PERSONAL_SELECTION"

    invoke-direct {v10, v13, v11, v12}, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->PERSONAL_SELECTION:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    filled-new-array/range {v0 .. v10}, [Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->$VALUES:[Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->$VALUES:[Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->value:Ljava/lang/String;

    return-object p0
.end method
