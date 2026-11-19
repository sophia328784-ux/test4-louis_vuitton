.class public final enum Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Routes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;",
        "",
        "WELCOME_PAGE",
        "WELCOME_PAGE_WITH_EXIT",
        "LOGIN_WITH_PARAM_FROM_DEEPLINK",
        "REGISTER_OR_ACTIVATE_FROM_DEEPLINK",
        "PRIVACY_SETTINGS_FROM_DEEPLINK",
        "LOGIN_FROM_OUTSIDE",
        "REGISTER_FROM_OUTSIDE",
        "REGISTER_WITH_PREFILLED_EMAIL",
        "WELCOME_PAGE_WITH_EXIT_REDIRECT_WISHLIST",
        "WELCOME_PAGE_WITH_EXIT_REDIRECT_LVPASS",
        "KISA_FOR_SOCIAL_SIGN_IN",
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

.field private static final synthetic $VALUES:[Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

.field public static final enum KISA_FOR_SOCIAL_SIGN_IN:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

.field public static final enum LOGIN_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

.field public static final enum LOGIN_WITH_PARAM_FROM_DEEPLINK:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

.field public static final enum PRIVACY_SETTINGS_FROM_DEEPLINK:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

.field public static final enum REGISTER_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

.field public static final enum REGISTER_OR_ACTIVATE_FROM_DEEPLINK:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

.field public static final enum REGISTER_WITH_PREFILLED_EMAIL:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

.field public static final enum WELCOME_PAGE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

.field public static final enum WELCOME_PAGE_WITH_EXIT:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

.field public static final enum WELCOME_PAGE_WITH_EXIT_REDIRECT_LVPASS:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

.field public static final enum WELCOME_PAGE_WITH_EXIT_REDIRECT_WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    const-string v1, "WELCOME_PAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    const-string v2, "WELCOME_PAGE_WITH_EXIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE_WITH_EXIT:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    const-string v3, "LOGIN_WITH_PARAM_FROM_DEEPLINK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->LOGIN_WITH_PARAM_FROM_DEEPLINK:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    const-string v4, "REGISTER_OR_ACTIVATE_FROM_DEEPLINK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->REGISTER_OR_ACTIVATE_FROM_DEEPLINK:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    const-string v5, "PRIVACY_SETTINGS_FROM_DEEPLINK"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->PRIVACY_SETTINGS_FROM_DEEPLINK:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    new-instance v5, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    const-string v6, "LOGIN_FROM_OUTSIDE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->LOGIN_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    const-string v7, "REGISTER_FROM_OUTSIDE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->REGISTER_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    new-instance v7, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    const-string v8, "REGISTER_WITH_PREFILLED_EMAIL"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->REGISTER_WITH_PREFILLED_EMAIL:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    new-instance v8, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    const-string v9, "WELCOME_PAGE_WITH_EXIT_REDIRECT_WISHLIST"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE_WITH_EXIT_REDIRECT_WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    new-instance v9, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    const-string v10, "WELCOME_PAGE_WITH_EXIT_REDIRECT_LVPASS"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE_WITH_EXIT_REDIRECT_LVPASS:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    new-instance v10, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    const-string v11, "KISA_FOR_SOCIAL_SIGN_IN"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->KISA_FOR_SOCIAL_SIGN_IN:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    filled-new-array/range {v0 .. v10}, [Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->$VALUES:[Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;
    .locals 1

    const-class v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->$VALUES:[Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    return-object v0
.end method
