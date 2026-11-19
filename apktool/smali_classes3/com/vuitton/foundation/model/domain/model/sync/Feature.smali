.class public final enum Lcom/vuitton/foundation/model/domain/model/sync/Feature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/sync/Feature$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/model/sync/Feature;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008l\u0008\u0087\u0081\u0002\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u0017\u0010\n\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\n\u0010\u000cR\u0017\u0010\r\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u000cR\u0017\u0010\u000f\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u000b\u001a\u0004\u0008\u0010\u0010\u000cj\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+j\u0002\u0008,j\u0002\u0008-j\u0002\u0008.j\u0002\u0008/j\u0002\u00080j\u0002\u00081j\u0002\u00082j\u0002\u00083j\u0002\u00084j\u0002\u00085j\u0002\u00086j\u0002\u00087j\u0002\u00088j\u0002\u00089j\u0002\u0008:j\u0002\u0008;j\u0002\u0008<j\u0002\u0008=j\u0002\u0008>j\u0002\u0008?j\u0002\u0008@j\u0002\u0008Aj\u0002\u0008Bj\u0002\u0008Cj\u0002\u0008Dj\u0002\u0008Ej\u0002\u0008Fj\u0002\u0008Gj\u0002\u0008Hj\u0002\u0008Ij\u0002\u0008Jj\u0002\u0008Kj\u0002\u0008Lj\u0002\u0008Mj\u0002\u0008Nj\u0002\u0008Oj\u0002\u0008Pj\u0002\u0008Qj\u0002\u0008Rj\u0002\u0008Sj\u0002\u0008Tj\u0002\u0008Uj\u0002\u0008Vj\u0002\u0008Wj\u0002\u0008Xj\u0002\u0008Yj\u0002\u0008Zj\u0002\u0008[j\u0002\u0008\\j\u0002\u0008]j\u0002\u0008^j\u0002\u0008_j\u0002\u0008`j\u0002\u0008aj\u0002\u0008bj\u0002\u0008cj\u0002\u0008dj\u0002\u0008ej\u0002\u0008fj\u0002\u0008gj\u0002\u0008hj\u0002\u0008ij\u0002\u0008jj\u0002\u0008kj\u0002\u0008lj\u0002\u0008mj\u0002\u0008nj\u0002\u0008oj\u0002\u0008pj\u0002\u0008qj\u0002\u0008rj\u0002\u0008sj\u0002\u0008t\u00a8\u0006u"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/sync/Feature;",
        "",
        "",
        "key",
        "Ljava/lang/String;",
        "b",
        "()Ljava/lang/String;",
        "description",
        "getDescription",
        "",
        "isOverrideable",
        "Z",
        "()Z",
        "requiresRestart",
        "getRequiresRestart",
        "isPreprodOnly",
        "c",
        "Companion",
        "ACCESSIBILITY_DISABLE_AUTOPLAY",
        "ACCESSIBILITY_ENHANCED_CONTRAST",
        "ACCESSIBILITY_SIMPLIFY_NAVIGATION",
        "ACCESSIBILITY_STATEMENT",
        "ADDRESS_AUTO_COMPLETE",
        "ADD_TO_CART_CROSS_SELL",
        "AGEC_LAW",
        "AI_COMPANION",
        "AI_COMPANION_PDP",
        "AI_COMPANION_SESSION_ID_ENABLED",
        "APPSFLYER",
        "AUTOCOMPLETE_POSTAL_CODE",
        "BACK_IN_STOCK",
        "BACK_IN_STOCK_LEGAL_CONSENT",
        "BACK_IN_STOCK_PREVIEW_MODE",
        "BACK_ORDER_DISCLAIMER",
        "BACK_ORDER_DISCLAIMER_ENHANCEMENT",
        "BATCH_SDK",
        "BOOKING_MY_EXPERIENCES",
        "CARE_SERVICES_MIGRATION",
        "CERTIFICATES_VISIONNAIRE_LOCKED_STATUS",
        "CHINA_PRIVACY",
        "CLIENT_QR_CODE",
        "CONTACT_US",
        "CONTACT_US_CARE_SERVICE",
        "DIAMONDS_PDP",
        "DISTANT_REPAIRS",
        "DISTANT_REPAIRS_BILLING_ADDRESS",
        "DISTANT_REPAIRS_CALL",
        "DISTANT_REPAIRS_CANCELLATION_REASON",
        "DISTANT_REPAIRS_EMAIL",
        "DISTANT_REPAIRS_MODIFY",
        "DISTANT_REPAIRS_PAYMENT_METHODS_ICONS",
        "DISTANT_REPAIRS_SHIPPED_FROM_EHUB",
        "DISTANT_REPAIRS_TUTORIAL",
        "DISTANT_REPAIRS_VIDEO_CALL",
        "DISTANT_REPAIRS_ZIP_CODE",
        "DYNAMIC_YIELD",
        "DYNATRACE_SDK",
        "EMAIL_TRACKING_CONSENT",
        "EXCLUSIVE_OFFER",
        "FEED_FOR_YOU_DEFAULT_TAB",
        "FEED_REVAMP_V2",
        "FIND_A_STORE",
        "GCM_OPT_OUT",
        "GOOGLE_ANALYTICS",
        "GOOGLE_CUSTOMER_MATCH",
        "GOOGLE_SIGN_IN",
        "HORIZON_SPEAKER",
        "INBOX",
        "KAKAO_SIGN_IN",
        "KEEP_ALL",
        "LEGAL_NOTICE_REGISTER",
        "LINE_SIGN_IN",
        "MY_CARE_SERVICES",
        "MY_CERTIFICATES",
        "NATIVE_ACCOUNT_ACTIVATION",
        "NATIVE_CART",
        "NATIVE_LOGIN",
        "NATIVE_REGISTER",
        "NATIVE_REGISTER_KISA",
        "NATIVE_SHARE_CATALOG",
        "NATIVE_SHARE_IMMERSIVE",
        "NATIVE_SHARE_WISHLIST",
        "NATIVE_THANK_YOU_PAGE_FEEDBACK",
        "NATIVE_THANK_YOU_PAGE_REDIRECT",
        "ONBOARDING",
        "ONBOARDING_FORCED",
        "ORDERS_INVOICE",
        "ORDER_EXCHANGE",
        "ORDER_RETURN",
        "OSA_CID",
        "OSA_CREATE",
        "OSA_GUEST",
        "OSA_KISA_V2",
        "OSA_MODIFY",
        "OSA_REASONS",
        "PAY_BY_LINK",
        "PERFECT_LOGS",
        "PERSONAL_SELECTIONS",
        "PLP_REVAMP_V3_PHASE2",
        "PLP_V3_GRID_VIEW",
        "POWERFRONT",
        "POWERFRONT_CARE_SERVICE",
        "PROFILE_PHONE_NUMBER",
        "PUERTO_RICO",
        "REFRESH_AUTH_CHECKOUT",
        "REGISTRATION_ADDRESS_STEP",
        "SENSORS_DATA_ENABLED_STATUS",
        "SIZE_GUIDE_PIM_ANDROID",
        "SMS_CONSENT",
        "SNEAKERS",
        "SOCIAL_SIGN_IN_DEBUG",
        "STORE_MODE",
        "STORE_MODE_V2",
        "TINGYUN_SDK",
        "TRUNK_SPEAKER",
        "TWIST",
        "YMAL",
        "domain"
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

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

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

.field public static final enum ACCESSIBILITY_DISABLE_AUTOPLAY:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum ACCESSIBILITY_ENHANCED_CONTRAST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum ACCESSIBILITY_SIMPLIFY_NAVIGATION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum ACCESSIBILITY_STATEMENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum ADDRESS_AUTO_COMPLETE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum ADD_TO_CART_CROSS_SELL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum AGEC_LAW:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum AI_COMPANION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum AI_COMPANION_PDP:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum AI_COMPANION_SESSION_ID_ENABLED:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum APPSFLYER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum AUTOCOMPLETE_POSTAL_CODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum BACK_IN_STOCK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum BACK_IN_STOCK_LEGAL_CONSENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum BACK_IN_STOCK_PREVIEW_MODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum BACK_ORDER_DISCLAIMER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum BACK_ORDER_DISCLAIMER_ENHANCEMENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum BATCH_SDK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum BOOKING_MY_EXPERIENCES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum CARE_SERVICES_MIGRATION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum CERTIFICATES_VISIONNAIRE_LOCKED_STATUS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum CHINA_PRIVACY:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum CLIENT_QR_CODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum CONTACT_US:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum CONTACT_US_CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final Companion:Lcom/vuitton/foundation/model/domain/model/sync/Feature$Companion;

.field public static final enum DIAMONDS_PDP:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum DISTANT_REPAIRS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum DISTANT_REPAIRS_BILLING_ADDRESS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum DISTANT_REPAIRS_CALL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum DISTANT_REPAIRS_CANCELLATION_REASON:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum DISTANT_REPAIRS_EMAIL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum DISTANT_REPAIRS_MODIFY:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum DISTANT_REPAIRS_PAYMENT_METHODS_ICONS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum DISTANT_REPAIRS_SHIPPED_FROM_EHUB:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum DISTANT_REPAIRS_TUTORIAL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum DISTANT_REPAIRS_VIDEO_CALL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum DISTANT_REPAIRS_ZIP_CODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum DYNAMIC_YIELD:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum DYNATRACE_SDK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum EMAIL_TRACKING_CONSENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum EXCLUSIVE_OFFER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum FEED_FOR_YOU_DEFAULT_TAB:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum FEED_REVAMP_V2:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum FIND_A_STORE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum GCM_OPT_OUT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum GOOGLE_ANALYTICS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum GOOGLE_CUSTOMER_MATCH:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum GOOGLE_SIGN_IN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum HORIZON_SPEAKER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum INBOX:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum KAKAO_SIGN_IN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum KEEP_ALL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum LEGAL_NOTICE_REGISTER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum LINE_SIGN_IN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum MY_CARE_SERVICES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum MY_CERTIFICATES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum NATIVE_ACCOUNT_ACTIVATION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum NATIVE_CART:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum NATIVE_LOGIN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum NATIVE_REGISTER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum NATIVE_REGISTER_KISA:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum NATIVE_SHARE_CATALOG:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum NATIVE_SHARE_IMMERSIVE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum NATIVE_SHARE_WISHLIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum NATIVE_THANK_YOU_PAGE_FEEDBACK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum NATIVE_THANK_YOU_PAGE_REDIRECT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum ONBOARDING:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum ONBOARDING_FORCED:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum ORDERS_INVOICE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum ORDER_EXCHANGE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum ORDER_RETURN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum OSA_CID:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum OSA_CREATE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum OSA_GUEST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum OSA_KISA_V2:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum OSA_MODIFY:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum OSA_REASONS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum PAY_BY_LINK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum PERFECT_LOGS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum PERSONAL_SELECTIONS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum PLP_REVAMP_V3_PHASE2:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum PLP_V3_GRID_VIEW:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum POWERFRONT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum POWERFRONT_CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum PROFILE_PHONE_NUMBER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum PUERTO_RICO:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum REFRESH_AUTH_CHECKOUT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum REGISTRATION_ADDRESS_STEP:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum SENSORS_DATA_ENABLED_STATUS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum SIZE_GUIDE_PIM_ANDROID:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum SMS_CONSENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum SNEAKERS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum SOCIAL_SIGN_IN_DEBUG:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum STORE_MODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum STORE_MODE_V2:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum TINGYUN_SDK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum TRUNK_SPEAKER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public static final enum YMAL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;


# instance fields
.field private final description:Ljava/lang/String;

.field private final isOverrideable:Z

.field private final isPreprodOnly:Z

.field private final key:Ljava/lang/String;

.field private final requiresRestart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 105

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v1, 0x0

    const-string v2, "ACCESSIBILITY_DISABLE_AUTOPLAY"

    const-string v3, "accessibility_disable_autoplay_android"

    const-string v4, "Accessibility - Disable autoplay"

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ACCESSIBILITY_DISABLE_AUTOPLAY:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v2, 0x1

    const-string v3, "ACCESSIBILITY_ENHANCED_CONTRAST"

    const-string v4, "accessibility_enhanced_contrast_android"

    const-string v5, "Accessibility - Enhanced contrast"

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ACCESSIBILITY_ENHANCED_CONTRAST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v3, 0x2

    const-string v4, "ACCESSIBILITY_SIMPLIFY_NAVIGATION"

    const-string v5, "accessibility_simplify_navigation_android"

    const-string v6, "Accessibility - Simplify navigation"

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ACCESSIBILITY_SIMPLIFY_NAVIGATION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v4, 0x3

    const-string v5, "ACCESSIBILITY_STATEMENT"

    const-string v6, "accessibility_statement_android"

    const-string v7, "Accessibility - Statement article"

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v3, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ACCESSIBILITY_STATEMENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/4 v9, 0x0

    const/16 v10, 0x1c

    const/4 v5, 0x4

    const-string v6, "ADDRESS_AUTO_COMPLETE"

    const-string v7, "address_auto_complete_android"

    const-string v8, "Address auto completion"

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ADDRESS_AUTO_COMPLETE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v6, 0x5

    const-string v7, "ADD_TO_CART_CROSS_SELL"

    const-string v8, "add_to_cart_cross_sell_android"

    const-string v9, "Cross-sell products in Add To Cart bottom sheet"

    invoke-direct/range {v5 .. v11}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v5, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ADD_TO_CART_CROSS_SELL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/4 v11, 0x0

    const/16 v12, 0x1c

    const/4 v7, 0x6

    const-string v8, "AGEC_LAW"

    const-string v9, "pdp_agec_law_android"

    const-string v10, "AGEC Law"

    invoke-direct/range {v6 .. v12}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v6, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AGEC_LAW:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/4 v12, 0x1

    const/16 v13, 0x14

    const/4 v8, 0x7

    const-string v9, "AI_COMPANION"

    const-string v10, "ai_companion_android"

    const-string v11, "AI Companion"

    invoke-direct/range {v7 .. v13}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v7, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AI_COMPANION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/4 v13, 0x0

    const/16 v14, 0x1c

    const/16 v9, 0x8

    const-string v10, "AI_COMPANION_PDP"

    const-string v11, "ai_companion_pdp_android"

    const-string v12, "AI Companion PDP"

    invoke-direct/range {v8 .. v14}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AI_COMPANION_PDP:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v10, 0x9

    const-string v11, "AI_COMPANION_SESSION_ID_ENABLED"

    const-string v12, "ai_companion_session_id_android"

    const-string v13, "AI Companion - display session Id"

    invoke-direct/range {v9 .. v15}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v9, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AI_COMPANION_SESSION_ID_ENABLED:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/4 v15, 0x0

    const/16 v16, 0x1c

    const/16 v11, 0xa

    const-string v12, "APPSFLYER"

    const-string v13, "appsflyer_android"

    const-string v14, "AppsFlyer"

    invoke-direct/range {v10 .. v16}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v10, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->APPSFLYER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v16, 0x0

    const/16 v17, 0x1c

    const/16 v12, 0xb

    const-string v13, "AUTOCOMPLETE_POSTAL_CODE"

    const-string v14, "autocomplete_postalcode_android"

    const-string v15, "Autocomplete postal code"

    invoke-direct/range {v11 .. v17}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v11, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AUTOCOMPLETE_POSTAL_CODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v17, 0x0

    const/16 v18, 0x1c

    const/16 v13, 0xc

    const-string v14, "BACK_IN_STOCK"

    const-string v15, "back_in_stock"

    const-string v16, "Back in stock"

    invoke-direct/range {v12 .. v18}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v12, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_IN_STOCK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v18, 0x0

    const/16 v19, 0x1c

    const/16 v14, 0xd

    const-string v15, "BACK_IN_STOCK_LEGAL_CONSENT"

    const-string v16, "back_in_stock_legal_consent_android"

    const-string v17, "Back In Stock legal consent"

    invoke-direct/range {v13 .. v19}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v13, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_IN_STOCK_LEGAL_CONSENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v15, 0xe

    const-string v16, "BACK_IN_STOCK_PREVIEW_MODE"

    const-string v17, "back_in_stock_preview_mode"

    const-string v18, "Back In Stock Preview"

    invoke-direct/range {v14 .. v20}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v14, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_IN_STOCK_PREVIEW_MODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v16, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v20, 0x0

    const/16 v21, 0x1c

    move-object/from16 v15, v16

    const/16 v16, 0xf

    const-string v17, "BACK_ORDER_DISCLAIMER"

    const-string v18, "back_order_disclaimer"

    const-string v19, "Back order disclaimer"

    invoke-direct/range {v15 .. v21}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v15, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_ORDER_DISCLAIMER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v16, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v21, 0x0

    const/16 v22, 0x1c

    const/16 v17, 0x10

    const-string v18, "BACK_ORDER_DISCLAIMER_ENHANCEMENT"

    const-string v19, "dynamic_back_order_enhancement"

    const-string v20, "Back order disclaimer enhancement"

    invoke-direct/range {v16 .. v22}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v16, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_ORDER_DISCLAIMER_ENHANCEMENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v17, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v22, 0x0

    const/16 v23, 0x1c

    const/16 v18, 0x11

    const-string v19, "BATCH_SDK"

    const-string v20, "batch_notifications_android_release"

    const-string v21, "Batch SDK"

    invoke-direct/range {v17 .. v23}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v17, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BATCH_SDK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v18, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v23, 0x0

    const/16 v24, 0xc

    const/16 v19, 0x12

    const-string v20, "BOOKING_MY_EXPERIENCES"

    const-string v21, "booking_my_experiences_android"

    const-string v22, "Booking - My Experiences"

    invoke-direct/range {v18 .. v24}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v18, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BOOKING_MY_EXPERIENCES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v19, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v24, 0x0

    const/16 v25, 0x1c

    const/16 v20, 0x13

    const-string v21, "CARE_SERVICES_MIGRATION"

    const-string v22, "care_services_migration_android"

    const-string v23, "Care Services BFF Migration"

    invoke-direct/range {v19 .. v25}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v19, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CARE_SERVICES_MIGRATION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v20, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v25, 0x0

    const/16 v26, 0xc

    const/16 v21, 0x14

    const-string v22, "CERTIFICATES_VISIONNAIRE_LOCKED_STATUS"

    const-string v23, "certificates_mock_visionnaire_locked_status_android"

    const-string v24, "Certificates - Mock Visionnaire locked status"

    invoke-direct/range {v20 .. v26}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v20, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CERTIFICATES_VISIONNAIRE_LOCKED_STATUS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v21, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v26, 0x0

    const/16 v27, 0x1c

    const/16 v22, 0x15

    const-string v23, "CHINA_PRIVACY"

    const-string v24, "cn_privacy"

    const-string v25, "CN Privacy Checkbox"

    invoke-direct/range {v21 .. v27}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v21, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CHINA_PRIVACY:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v22, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v27, 0x0

    const/16 v28, 0x1c

    const/16 v23, 0x16

    const-string v24, "CLIENT_QR_CODE"

    const-string v25, "client_qr_code_android"

    const-string v26, "Force display of QRCode in MyLv"

    invoke-direct/range {v22 .. v28}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v22, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CLIENT_QR_CODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v23, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v28, 0x0

    const/16 v29, 0x1c

    const/16 v24, 0x17

    const-string v25, "CONTACT_US"

    const-string v26, "contact_us_android"

    const-string v27, "Contact methods"

    invoke-direct/range {v23 .. v29}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v23, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CONTACT_US:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v24, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v29, 0x0

    const/16 v30, 0x1c

    const/16 v25, 0x18

    const-string v26, "CONTACT_US_CARE_SERVICE"

    const-string v27, "contact_us_care_service_android"

    const-string v28, "Contact Us - Care Services"

    invoke-direct/range {v24 .. v30}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v24, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CONTACT_US_CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v25, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v30, 0x0

    const/16 v31, 0x1c

    const/16 v26, 0x19

    const-string v27, "DIAMONDS_PDP"

    const-string v28, "diamonds_pdp_android"

    const-string v29, "Diamond PDP"

    invoke-direct/range {v25 .. v31}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v25, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DIAMONDS_PDP:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v26, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v31, 0x0

    const/16 v32, 0x1c

    const/16 v27, 0x1a

    const-string v28, "DISTANT_REPAIRS"

    const-string v29, "distant_repairs_Android"

    const-string v30, "Distant Repairs"

    invoke-direct/range {v26 .. v32}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v26, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v27, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v32, 0x0

    const/16 v33, 0x1c

    const/16 v28, 0x1b

    const-string v29, "DISTANT_REPAIRS_BILLING_ADDRESS"

    const-string v30, "distant_repairs_billing_address_android"

    const-string v31, "Distant Repairs - Billing Address"

    invoke-direct/range {v27 .. v33}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v27, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_BILLING_ADDRESS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v28, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v33, 0x0

    const/16 v34, 0x1c

    const/16 v29, 0x1c

    const-string v30, "DISTANT_REPAIRS_CALL"

    const-string v31, "distant_repairs_enable_call_android"

    const-string v32, "Distant Repairs Call"

    invoke-direct/range {v28 .. v34}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v28, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_CALL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v29, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v34, 0x0

    const/16 v35, 0x1c

    const/16 v30, 0x1d

    const-string v31, "DISTANT_REPAIRS_CANCELLATION_REASON"

    const-string v32, "distant_repairs_cancellation_reason_android"

    const-string v33, "Distant Repairs cancellation reason"

    invoke-direct/range {v29 .. v35}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v29, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_CANCELLATION_REASON:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v30, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v35, 0x0

    const/16 v36, 0x1c

    const/16 v31, 0x1e

    const-string v32, "DISTANT_REPAIRS_EMAIL"

    const-string v33, "distant_repairs_enable_email_android"

    const-string v34, "Distant Repairs Email"

    invoke-direct/range {v30 .. v36}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v30, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_EMAIL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v32, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v36, 0x0

    const/16 v37, 0xc

    move-object/from16 v31, v32

    const/16 v32, 0x1f

    const-string v33, "DISTANT_REPAIRS_MODIFY"

    const-string v34, "distant_repairs_modify_android"

    const-string v35, "Distant Repairs Modify appointment"

    invoke-direct/range {v31 .. v37}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v31, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_MODIFY:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v32, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v37, 0x0

    const/16 v38, 0x1c

    const/16 v33, 0x20

    const-string v34, "DISTANT_REPAIRS_PAYMENT_METHODS_ICONS"

    const-string v35, "distant_repairs_payment_methods_icons_android"

    const-string v36, "Distant Repairs Payment Methods Icons"

    invoke-direct/range {v32 .. v38}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v32, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_PAYMENT_METHODS_ICONS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v33, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v38, 0x0

    const/16 v39, 0x1c

    const/16 v34, 0x21

    const-string v35, "DISTANT_REPAIRS_SHIPPED_FROM_EHUB"

    const-string v36, "distant_repairs_shipped_from_ehub_android"

    const-string v37, "Distant Repairs Shipped From Ehub"

    invoke-direct/range {v33 .. v39}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v33, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_SHIPPED_FROM_EHUB:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v34, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v39, 0x0

    const/16 v40, 0x1c

    const/16 v35, 0x22

    const-string v36, "DISTANT_REPAIRS_TUTORIAL"

    const-string v37, "distant_repairs_webview_tuto_android"

    const-string v38, "Distant Repairs Tutorial"

    invoke-direct/range {v34 .. v40}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v34, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_TUTORIAL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v35, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v40, 0x0

    const/16 v41, 0x1c

    const/16 v36, 0x23

    const-string v37, "DISTANT_REPAIRS_VIDEO_CALL"

    const-string v38, "distant_repairs_enable_video_call_android"

    const-string v39, "Distant Repairs Video Call"

    invoke-direct/range {v35 .. v41}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v35, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_VIDEO_CALL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v36, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v41, 0x0

    const/16 v42, 0x1c

    const/16 v37, 0x24

    const-string v38, "DISTANT_REPAIRS_ZIP_CODE"

    const-string v39, "distant_repairs_zipcode_android"

    const-string v40, "Distant Repairs - Zipcode in contact form"

    invoke-direct/range {v36 .. v42}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v36, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS_ZIP_CODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v37, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v42, 0x0

    const/16 v43, 0x1c

    const/16 v38, 0x25

    const-string v39, "DYNAMIC_YIELD"

    const-string v40, "dynamic_yield_android"

    const-string v41, "Dynamic Yield"

    invoke-direct/range {v37 .. v43}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v37, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DYNAMIC_YIELD:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v38, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v43, 0x0

    const/16 v44, 0x1c

    const/16 v39, 0x26

    const-string v40, "DYNATRACE_SDK"

    const-string v41, "dynatrace_sdk_android"

    const-string v42, "Dynatrace"

    invoke-direct/range {v38 .. v44}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v38, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DYNATRACE_SDK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v39, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v44, 0x0

    const/16 v45, 0x1c

    const/16 v40, 0x27

    const-string v41, "EMAIL_TRACKING_CONSENT"

    const-string v42, "email_tracking_consent_android"

    const-string v43, "Email tracking consent (CNIL)"

    invoke-direct/range {v39 .. v45}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v39, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->EMAIL_TRACKING_CONSENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v40, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v45, 0x0

    const/16 v46, 0x1c

    const/16 v41, 0x28

    const-string v42, "EXCLUSIVE_OFFER"

    const-string v43, "exclusive_offer_android"

    const-string v44, "Exclusive offer"

    invoke-direct/range {v40 .. v46}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v40, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->EXCLUSIVE_OFFER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v41, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v46, 0x0

    const/16 v47, 0x1c

    const/16 v42, 0x29

    const-string v43, "FEED_FOR_YOU_DEFAULT_TAB"

    const-string v44, "feed_foryou_default_tab_android"

    const-string v45, "Feed default tab : For You"

    invoke-direct/range {v41 .. v47}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v41, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->FEED_FOR_YOU_DEFAULT_TAB:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v42, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v47, 0x1

    const/16 v48, 0x14

    const/16 v43, 0x2a

    const-string v44, "FEED_REVAMP_V2"

    const-string v45, "feed_revamp_V2_android"

    const-string v46, "Feed revamp V2"

    invoke-direct/range {v42 .. v48}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v42, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->FEED_REVAMP_V2:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v43, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v48, 0x0

    const/16 v49, 0x1c

    const/16 v44, 0x2b

    const-string v45, "FIND_A_STORE"

    const-string v46, "find_a_store_android"

    const-string v47, "Find a store"

    invoke-direct/range {v43 .. v49}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v43, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->FIND_A_STORE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v44, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v49, 0x0

    const/16 v50, 0x1c

    const/16 v45, 0x2c

    const-string v46, "GCM_OPT_OUT"

    const-string v47, "gcm_opt_out_android"

    const-string v48, "GCM Opt Out"

    invoke-direct/range {v44 .. v50}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v44, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->GCM_OPT_OUT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v45, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v50, 0x1

    const/16 v51, 0x14

    const/16 v46, 0x2d

    const-string v47, "GOOGLE_ANALYTICS"

    const-string v48, "googleanalytics_disabled_android"

    const-string v49, "Google Analytics"

    invoke-direct/range {v45 .. v51}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v45, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->GOOGLE_ANALYTICS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v46, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v51, 0x0

    const/16 v52, 0x1c

    const/16 v47, 0x2e

    const-string v48, "GOOGLE_CUSTOMER_MATCH"

    const-string v49, "google_customer_match_android"

    const-string v50, "Google Customer Match (GCM)"

    invoke-direct/range {v46 .. v52}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v46, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->GOOGLE_CUSTOMER_MATCH:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v48, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v52, 0x0

    const/16 v53, 0x1c

    move-object/from16 v47, v48

    const/16 v48, 0x2f

    const-string v49, "GOOGLE_SIGN_IN"

    const-string v50, "google_sign_in_android"

    const-string v51, "Google Sign-In"

    invoke-direct/range {v47 .. v53}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v47, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->GOOGLE_SIGN_IN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v48, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v53, 0x0

    const/16 v54, 0x1c

    const/16 v49, 0x30

    const-string v50, "HORIZON_SPEAKER"

    const-string v51, "lvconnect_horizon_speaker"

    const-string v52, "Horizon Speaker"

    invoke-direct/range {v48 .. v54}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v48, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->HORIZON_SPEAKER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v49, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v54, 0x0

    const/16 v55, 0x1c

    const/16 v50, 0x31

    const-string v51, "INBOX"

    const-string v52, "inbox_android"

    const-string v53, "Inbox notification"

    invoke-direct/range {v49 .. v55}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v49, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->INBOX:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v50, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v55, 0x0

    const/16 v56, 0x1c

    const/16 v51, 0x32

    const-string v52, "KAKAO_SIGN_IN"

    const-string v53, "kakao_sign_in_android"

    const-string v54, "Kakao Sign-In"

    invoke-direct/range {v50 .. v56}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v50, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->KAKAO_SIGN_IN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v51, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v56, 0x0

    const/16 v57, 0x1c

    const/16 v52, 0x33

    const-string v53, "KEEP_ALL"

    const-string v54, "light_up_keepall_android"

    const-string v55, "Keepall"

    invoke-direct/range {v51 .. v57}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v51, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->KEEP_ALL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v52, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v57, 0x0

    const/16 v58, 0x1c

    const/16 v53, 0x34

    const-string v54, "LEGAL_NOTICE_REGISTER"

    const-string v55, "legal_notice_register_android"

    const-string v56, "Register Legal notice"

    invoke-direct/range {v52 .. v58}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v52, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->LEGAL_NOTICE_REGISTER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v53, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v58, 0x0

    const/16 v59, 0x1c

    const/16 v54, 0x35

    const-string v55, "LINE_SIGN_IN"

    const-string v56, "line_sign_in_android"

    const-string v57, "LINE Sign-In"

    invoke-direct/range {v53 .. v59}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v53, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->LINE_SIGN_IN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v54, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v59, 0x0

    const/16 v60, 0x1c

    const/16 v55, 0x36

    const-string v56, "MY_CARE_SERVICES"

    const-string v57, "my_care_service_android"

    const-string v58, "Repairs"

    invoke-direct/range {v54 .. v60}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v54, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->MY_CARE_SERVICES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v55, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v60, 0x0

    const/16 v61, 0x1c

    const/16 v56, 0x37

    const-string v57, "MY_CERTIFICATES"

    const-string v58, "diamonds_my_certificates_android"

    const-string v59, "Diamonds - My Certificates"

    invoke-direct/range {v55 .. v61}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v55, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->MY_CERTIFICATES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v56, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v61, 0x0

    const/16 v62, 0xc

    const/16 v57, 0x38

    const-string v58, "NATIVE_ACCOUNT_ACTIVATION"

    const-string v59, "native_account_activation_android"

    const-string v60, "Native Account Activation"

    invoke-direct/range {v56 .. v62}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v56, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_ACCOUNT_ACTIVATION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v57, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v62, 0x0

    const/16 v63, 0x1c

    const/16 v58, 0x39

    const-string v59, "NATIVE_CART"

    const-string v60, "native_cart_android"

    const-string v61, "Native Cart"

    invoke-direct/range {v57 .. v63}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v57, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_CART:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v58, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v63, 0x0

    const/16 v64, 0x1c

    const/16 v59, 0x3a

    const-string v60, "NATIVE_LOGIN"

    const-string v61, "native_login_android"

    const-string v62, "Native Login"

    invoke-direct/range {v58 .. v64}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v58, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_LOGIN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v59, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v64, 0x0

    const/16 v65, 0x1c

    const/16 v60, 0x3b

    const-string v61, "NATIVE_REGISTER"

    const-string v62, "native_register_android"

    const-string v63, "Native Register"

    invoke-direct/range {v59 .. v65}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v59, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_REGISTER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v60, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v65, 0x0

    const/16 v66, 0x1c

    const/16 v61, 0x3c

    const-string v62, "NATIVE_REGISTER_KISA"

    const-string v63, "native_register_kisa_android"

    const-string v64, "Native Register KISA"

    invoke-direct/range {v60 .. v66}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v60, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_REGISTER_KISA:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v61, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v66, 0x0

    const/16 v67, 0xc

    const/16 v62, 0x3d

    const-string v63, "NATIVE_SHARE_CATALOG"

    const-string v64, "native_share_catalog_android"

    const-string v65, "Native Share Catalog"

    invoke-direct/range {v61 .. v67}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v61, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_SHARE_CATALOG:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v62, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v67, 0x0

    const/16 v68, 0xc

    const/16 v63, 0x3e

    const-string v64, "NATIVE_SHARE_IMMERSIVE"

    const-string v65, "native_share_immersive_android"

    const-string v66, "Native Share Immersive"

    invoke-direct/range {v62 .. v68}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v62, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_SHARE_IMMERSIVE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v64, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v68, 0x0

    const/16 v69, 0x1c

    move-object/from16 v63, v64

    const/16 v64, 0x3f

    const-string v65, "NATIVE_SHARE_WISHLIST"

    const-string v66, "native_share_wishlist_android"

    const-string v67, "Activate wishlist native share"

    invoke-direct/range {v63 .. v69}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v63, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_SHARE_WISHLIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v64, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v69, 0x0

    const/16 v70, 0x1c

    const/16 v65, 0x40

    const-string v66, "NATIVE_THANK_YOU_PAGE_FEEDBACK"

    const-string v67, "native_thank_you_page_feedback_android"

    const-string v68, "Native Thank You Page Feedback"

    invoke-direct/range {v64 .. v70}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v64, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_THANK_YOU_PAGE_FEEDBACK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v65, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v70, 0x0

    const/16 v71, 0x1c

    const/16 v66, 0x41

    const-string v67, "NATIVE_THANK_YOU_PAGE_REDIRECT"

    const-string v68, "native_thank_you_page_redirect_android"

    const-string v69, "Native Thank You Page Redirect"

    invoke-direct/range {v65 .. v71}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v65, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_THANK_YOU_PAGE_REDIRECT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v66, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v71, 0x0

    const/16 v72, 0x1c

    const/16 v67, 0x42

    const-string v68, "ONBOARDING"

    const-string v69, "onboarding_android"

    const-string v70, "Enable onboarding"

    invoke-direct/range {v66 .. v72}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v66, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ONBOARDING:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v67, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v72, 0x0

    const/16 v73, 0x1c

    const/16 v68, 0x43

    const-string v69, "ONBOARDING_FORCED"

    const-string v70, "onboarding_forced_android"

    const-string v71, "Force display of onboarding"

    invoke-direct/range {v67 .. v73}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v67, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ONBOARDING_FORCED:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v68, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v73, 0x0

    const/16 v74, 0x1c

    const/16 v69, 0x44

    const-string v70, "ORDERS_INVOICE"

    const-string v71, "orders_invoice_android"

    const-string v72, "Display invoice for orders"

    invoke-direct/range {v68 .. v74}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v68, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ORDERS_INVOICE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v69, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v74, 0x0

    const/16 v75, 0x1c

    const/16 v70, 0x45

    const-string v71, "ORDER_EXCHANGE"

    const-string v72, "order_exchange_android"

    const-string v73, "Activate Exchange Order"

    invoke-direct/range {v69 .. v75}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v69, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ORDER_EXCHANGE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v70, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v75, 0x0

    const/16 v76, 0x1c

    const/16 v71, 0x46

    const-string v72, "ORDER_RETURN"

    const-string v73, "order_return_android"

    const-string v74, "Activate Return Order"

    invoke-direct/range {v70 .. v76}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v70, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ORDER_RETURN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v71, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v76, 0x0

    const/16 v77, 0x1c

    const/16 v72, 0x47

    const-string v73, "OSA_CID"

    const-string v74, "osa_cid_android"

    const-string v75, "Activate OSA CId"

    invoke-direct/range {v71 .. v77}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v71, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->OSA_CID:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v72, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v77, 0x0

    const/16 v78, 0x1c

    const/16 v73, 0x48

    const-string v74, "OSA_CREATE"

    const-string v75, "store_appointment_android"

    const-string v76, "Online Store Appointment (OSA)"

    invoke-direct/range {v72 .. v78}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v72, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->OSA_CREATE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v73, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v78, 0x0

    const/16 v79, 0x1c

    const/16 v74, 0x49

    const-string v75, "OSA_GUEST"

    const-string v76, "osa_guest_android"

    const-string v77, "Activate guest OSA"

    invoke-direct/range {v73 .. v79}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v73, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->OSA_GUEST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v74, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v79, 0x0

    const/16 v80, 0x1c

    const/16 v75, 0x4a

    const-string v76, "OSA_KISA_V2"

    const-string v77, "osa_kisa_v2_android"

    const-string v78, "Activate KISA V2 OSA"

    invoke-direct/range {v74 .. v80}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v74, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->OSA_KISA_V2:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v75, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v80, 0x0

    const/16 v81, 0x1c

    const/16 v76, 0x4b

    const-string v77, "OSA_MODIFY"

    const-string v78, "osa_modify_android"

    const-string v79, "Activate OSA Modify"

    invoke-direct/range {v75 .. v81}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v75, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->OSA_MODIFY:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v76, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v81, 0x0

    const/16 v82, 0x1c

    const/16 v77, 0x4c

    const-string v78, "OSA_REASONS"

    const-string v79, "osa_reasons_android"

    const-string v80, "Activate Reason when requesting OSA"

    invoke-direct/range {v76 .. v82}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v76, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->OSA_REASONS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v77, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v82, 0x0

    const/16 v83, 0x1c

    const/16 v78, 0x4d

    const-string v79, "PAY_BY_LINK"

    const-string v80, "pbl_android"

    const-string v81, "Pay By Link"

    invoke-direct/range {v77 .. v83}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v77, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PAY_BY_LINK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v78, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v83, 0x1

    const/16 v84, 0x4

    const/16 v79, 0x4e

    const-string v80, "PERFECT_LOGS"

    const-string v81, "perfect_logs_android"

    const-string v82, "Perfect Corp Logging files"

    invoke-direct/range {v78 .. v84}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v78, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PERFECT_LOGS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v80, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v84, 0x0

    const/16 v85, 0x1c

    move-object/from16 v79, v80

    const/16 v80, 0x4f

    const-string v81, "PERSONAL_SELECTIONS"

    const-string v82, "personal_selection_android"

    const-string v83, "Personal Selections"

    invoke-direct/range {v79 .. v85}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v79, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PERSONAL_SELECTIONS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v80, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v85, 0x0

    const/16 v86, 0x1c

    const/16 v81, 0x50

    const-string v82, "PLP_REVAMP_V3_PHASE2"

    const-string v83, "plp_revamp_v3_phase2_android"

    const-string v84, "PLP Revamp V3 Phase 2"

    invoke-direct/range {v80 .. v86}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v80, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PLP_REVAMP_V3_PHASE2:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v81, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v86, 0x0

    const/16 v87, 0x1c

    const/16 v82, 0x51

    const-string v83, "PLP_V3_GRID_VIEW"

    const-string v84, "plp_v3_gridview_android"

    const-string v85, "PLP V3 Grid View (plp revamp)"

    invoke-direct/range {v81 .. v87}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v81, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PLP_V3_GRID_VIEW:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v82, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v87, 0x0

    const/16 v88, 0x1c

    const/16 v83, 0x52

    const-string v84, "POWERFRONT"

    const-string v85, "powerfront_android"

    const-string v86, "PowerFront"

    invoke-direct/range {v82 .. v88}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v82, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->POWERFRONT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v83, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v88, 0x0

    const/16 v89, 0xc

    const/16 v84, 0x53

    const-string v85, "POWERFRONT_CARE_SERVICE"

    const-string v86, "powerfront_care_service_android"

    const-string v87, "PowerFront Care Service"

    invoke-direct/range {v83 .. v89}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v83, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->POWERFRONT_CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v84, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v89, 0x0

    const/16 v90, 0x1c

    const/16 v85, 0x54

    const-string v86, "PROFILE_PHONE_NUMBER"

    const-string v87, "profile_mobile_phone_android"

    const-string v88, "Profile Phone Number"

    invoke-direct/range {v84 .. v90}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v84, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PROFILE_PHONE_NUMBER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v85, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v90, 0x0

    const/16 v91, 0x1c

    const/16 v86, 0x55

    const-string v87, "PUERTO_RICO"

    const-string v88, "puerto_rico_android"

    const-string v89, "Enable Puerto Rico locale"

    invoke-direct/range {v85 .. v91}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v85, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PUERTO_RICO:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v86, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v91, 0x0

    const/16 v92, 0x1c

    const/16 v87, 0x56

    const-string v88, "REFRESH_AUTH_CHECKOUT"

    const-string v89, "refresh_auth_checkout_android"

    const-string v90, "Refresh auth from Checkout WebView"

    invoke-direct/range {v86 .. v92}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v86, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->REFRESH_AUTH_CHECKOUT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v87, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v92, 0x0

    const/16 v93, 0x1c

    const/16 v88, 0x57

    const-string v89, "REGISTRATION_ADDRESS_STEP"

    const-string v90, "registration_address_step_android"

    const-string v91, "JUSO - Korea registration address step "

    invoke-direct/range {v87 .. v93}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v87, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->REGISTRATION_ADDRESS_STEP:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v88, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v93, 0x1

    const/16 v94, 0x14

    const/16 v89, 0x58

    const-string v90, "SENSORS_DATA_ENABLED_STATUS"

    const-string v91, "sensordata_enabled_android"

    const-string v92, "Enable Sensor Data"

    invoke-direct/range {v88 .. v94}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v88, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->SENSORS_DATA_ENABLED_STATUS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v89, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v94, 0x0

    const/16 v95, 0x1c

    const/16 v90, 0x59

    const-string v91, "SIZE_GUIDE_PIM_ANDROID"

    const-string v92, "size_guide_pim_android"

    const-string v93, "Size Guide - PIM migration"

    invoke-direct/range {v89 .. v95}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v89, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->SIZE_GUIDE_PIM_ANDROID:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v90, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v95, 0x0

    const/16 v96, 0x1c

    const/16 v91, 0x5a

    const-string v92, "SMS_CONSENT"

    const-string v93, "sms_consent_android"

    const-string v94, "Enable SMS Consent"

    invoke-direct/range {v90 .. v96}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v90, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->SMS_CONSENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v91, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v96, 0x0

    const/16 v97, 0x1c

    const/16 v92, 0x5b

    const-string v93, "SNEAKERS"

    const-string v94, "sneakers_x408_android"

    const-string v95, "Trainers"

    invoke-direct/range {v91 .. v97}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v91, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->SNEAKERS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v92, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v97, 0x0

    const/16 v98, 0xc

    const/16 v93, 0x5c

    const-string v94, "SOCIAL_SIGN_IN_DEBUG"

    const-string v95, "debug_social_sign_in_android"

    const-string v96, "Debug Social Sign-In (all providers)"

    invoke-direct/range {v92 .. v98}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v92, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->SOCIAL_SIGN_IN_DEBUG:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v93, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v98, 0x0

    const/16 v99, 0x1c

    const/16 v94, 0x5d

    const-string v95, "STORE_MODE"

    const-string v96, "store_mode"

    const-string v97, "Activate store mode"

    invoke-direct/range {v93 .. v99}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v93, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->STORE_MODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v94, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v99, 0x0

    const/16 v100, 0x1c

    const/16 v95, 0x5e

    const-string v96, "STORE_MODE_V2"

    const-string v97, "store_mode_v2"

    const-string v98, "Activate store mode V2"

    invoke-direct/range {v94 .. v100}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v94, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->STORE_MODE_V2:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v96, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v100, 0x0

    const/16 v101, 0xc

    move-object/from16 v95, v96

    const/16 v96, 0x5f

    const-string v97, "TINGYUN_SDK"

    const-string v98, "tingyun_sdk_android"

    const-string v99, "Tingyun"

    invoke-direct/range {v95 .. v101}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v95, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TINGYUN_SDK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v96, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v101, 0x0

    const/16 v102, 0x1c

    const/16 v97, 0x60

    const-string v98, "TRUNK_SPEAKER"

    const-string v99, "trunk_speaker"

    const-string v100, "Trunk Speaker"

    invoke-direct/range {v96 .. v102}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v96, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TRUNK_SPEAKER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v97, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v102, 0x1

    const/16 v103, 0x10

    const/16 v98, 0x61

    const-string v99, "TWIST"

    const-string v100, "twist_android"

    const-string v101, "Twist"

    invoke-direct/range {v97 .. v103}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v97, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    new-instance v98, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    const/16 v103, 0x0

    const/16 v104, 0x1c

    const/16 v99, 0x62

    const-string v100, "YMAL"

    const-string v101, "ymal_android"

    const-string v102, "YMAL (You May Also Like)"

    invoke-direct/range {v98 .. v104}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    sput-object v98, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->YMAL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-object/from16 v99, v98

    move-object/from16 v98, v97

    move-object/from16 v97, v96

    move-object/from16 v96, v95

    move-object/from16 v95, v94

    move-object/from16 v94, v93

    move-object/from16 v93, v92

    move-object/from16 v92, v91

    move-object/from16 v91, v90

    move-object/from16 v90, v89

    move-object/from16 v89, v88

    move-object/from16 v88, v87

    move-object/from16 v87, v86

    move-object/from16 v86, v85

    move-object/from16 v85, v84

    move-object/from16 v84, v83

    move-object/from16 v83, v82

    move-object/from16 v82, v81

    move-object/from16 v81, v80

    move-object/from16 v80, v79

    move-object/from16 v79, v78

    move-object/from16 v78, v77

    move-object/from16 v77, v76

    move-object/from16 v76, v75

    move-object/from16 v75, v74

    move-object/from16 v74, v73

    move-object/from16 v73, v72

    move-object/from16 v72, v71

    move-object/from16 v71, v70

    move-object/from16 v70, v69

    move-object/from16 v69, v68

    move-object/from16 v68, v67

    move-object/from16 v67, v66

    move-object/from16 v66, v65

    move-object/from16 v65, v64

    move-object/from16 v64, v63

    move-object/from16 v63, v62

    move-object/from16 v62, v61

    move-object/from16 v61, v60

    move-object/from16 v60, v59

    move-object/from16 v59, v58

    move-object/from16 v58, v57

    move-object/from16 v57, v56

    move-object/from16 v56, v55

    move-object/from16 v55, v54

    move-object/from16 v54, v53

    move-object/from16 v53, v52

    move-object/from16 v52, v51

    move-object/from16 v51, v50

    move-object/from16 v50, v49

    move-object/from16 v49, v48

    move-object/from16 v48, v47

    move-object/from16 v47, v46

    move-object/from16 v46, v45

    move-object/from16 v45, v44

    move-object/from16 v44, v43

    move-object/from16 v43, v42

    move-object/from16 v42, v41

    move-object/from16 v41, v40

    move-object/from16 v40, v39

    move-object/from16 v39, v38

    move-object/from16 v38, v37

    move-object/from16 v37, v36

    move-object/from16 v36, v35

    move-object/from16 v35, v34

    move-object/from16 v34, v33

    move-object/from16 v33, v32

    move-object/from16 v32, v31

    move-object/from16 v31, v30

    move-object/from16 v30, v29

    move-object/from16 v29, v28

    move-object/from16 v28, v27

    move-object/from16 v27, v26

    move-object/from16 v26, v25

    move-object/from16 v25, v24

    move-object/from16 v24, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    filled-new-array/range {v1 .. v99}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/sync/Feature$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->Companion:Lcom/vuitton/foundation/model/domain/model/sync/Feature$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lew;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lew;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 4

    and-int/lit8 v0, p6, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_1

    move p5, v1

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->key:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->description:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->isOverrideable:Z

    iput-boolean p5, p0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->requiresRestart:Z

    iput-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->isPreprodOnly:Z

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/sync/Feature;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/model/sync/Feature;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->isPreprodOnly:Z

    return p0
.end method
