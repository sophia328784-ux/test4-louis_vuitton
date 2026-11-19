.class public final enum Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes",
        "",
        "Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;",
        "MY_ACCOUNT",
        "MY_PROFILE_SETTINGS_FROM_DEEPLINK",
        "REDIRECTION_MY_PROFILE",
        "REDIRECTION_MY_ORDERS",
        "REDIRECTION_WISH_LIST",
        "REDIRECTION_CERTIFICATES_LIST",
        "REDIRECTION_CERTIFICATES_DETAIL",
        "REDIRECTION_CERTIFICATE_DIAMONDS_ACTIVATION",
        "REDIRECTION_EXCLUSIVE_SECTION",
        "REDIRECTION_EXCLUSIVE_CATEGORY",
        "REDIRECTION_EXCLUSIVE_DETAIL",
        "REDIRECTION_LVPASS_QRCODE",
        "REDIRECTION_PRIVACY_SETTINGS",
        "REDIRECTION_ORDER_DETAIL",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

.field public static final enum MY_ACCOUNT:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

.field public static final enum MY_PROFILE_SETTINGS_FROM_DEEPLINK:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

.field public static final enum REDIRECTION_CERTIFICATES_DETAIL:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

.field public static final enum REDIRECTION_CERTIFICATES_LIST:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

.field public static final enum REDIRECTION_CERTIFICATE_DIAMONDS_ACTIVATION:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

.field public static final enum REDIRECTION_EXCLUSIVE_CATEGORY:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

.field public static final enum REDIRECTION_EXCLUSIVE_DETAIL:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

.field public static final enum REDIRECTION_EXCLUSIVE_SECTION:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

.field public static final enum REDIRECTION_LVPASS_QRCODE:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

.field public static final enum REDIRECTION_MY_ORDERS:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

.field public static final enum REDIRECTION_MY_PROFILE:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

.field public static final enum REDIRECTION_ORDER_DETAIL:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

.field public static final enum REDIRECTION_PRIVACY_SETTINGS:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

.field public static final enum REDIRECTION_WISH_LIST:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    const-string v1, "MY_ACCOUNT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->MY_ACCOUNT:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    new-instance v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    const-string v2, "MY_PROFILE_SETTINGS_FROM_DEEPLINK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->MY_PROFILE_SETTINGS_FROM_DEEPLINK:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    new-instance v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    const-string v3, "REDIRECTION_MY_PROFILE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_MY_PROFILE:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    new-instance v3, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    const-string v4, "REDIRECTION_MY_ORDERS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_MY_ORDERS:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    new-instance v4, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    const-string v5, "REDIRECTION_WISH_LIST"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_WISH_LIST:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    new-instance v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    const-string v6, "REDIRECTION_CERTIFICATES_LIST"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_CERTIFICATES_LIST:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    new-instance v6, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    const-string v7, "REDIRECTION_CERTIFICATES_DETAIL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_CERTIFICATES_DETAIL:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    new-instance v7, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    const-string v8, "REDIRECTION_CERTIFICATE_DIAMONDS_ACTIVATION"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_CERTIFICATE_DIAMONDS_ACTIVATION:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    new-instance v8, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    const-string v9, "REDIRECTION_EXCLUSIVE_SECTION"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_EXCLUSIVE_SECTION:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    new-instance v9, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    const-string v10, "REDIRECTION_EXCLUSIVE_CATEGORY"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_EXCLUSIVE_CATEGORY:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    new-instance v10, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    const-string v11, "REDIRECTION_EXCLUSIVE_DETAIL"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_EXCLUSIVE_DETAIL:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    new-instance v11, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    const-string v12, "REDIRECTION_LVPASS_QRCODE"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_LVPASS_QRCODE:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    new-instance v12, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    const-string v13, "REDIRECTION_PRIVACY_SETTINGS"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_PRIVACY_SETTINGS:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    new-instance v13, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    const-string v14, "REDIRECTION_ORDER_DETAIL"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->REDIRECTION_ORDER_DETAIL:Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    filled-new-array/range {v0 .. v13}, [Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->$VALUES:[Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;->$VALUES:[Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;

    return-object v0
.end method
