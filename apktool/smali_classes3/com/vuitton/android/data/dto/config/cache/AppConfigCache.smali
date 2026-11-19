.class public final Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$$serializer;,
        Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 W2\u00020\u0001:\u0002XWB\u00a7\u0004\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u0019\u001a\u00020\t\u0012\u0006\u0010\u001a\u001a\u00020\t\u0012\u0006\u0010\u001b\u001a\u00020\t\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010\"\u001a\u00020\t\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\t\u0012\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0002\u0012\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0002\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010&\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010+\u001a\u00020*\u0012\u0008\u0010-\u001a\u0004\u0018\u00010,\u0012\u0008\u0010.\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010/\u001a\u0004\u0018\u00010\t\u0012\u0008\u00100\u001a\u0004\u0018\u00010\t\u0012\u0008\u00101\u001a\u0004\u0018\u00010\t\u0012\u0008\u00102\u001a\u0004\u0018\u00010\t\u0012\u0006\u00103\u001a\u00020\t\u0012\u0006\u00104\u001a\u00020 \u0012\u0006\u00106\u001a\u000205\u0012\u0008\u00108\u001a\u0004\u0018\u000107\u0012\u0008\u00109\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010;\u001a\u0004\u0018\u00010:\u0012\u0008\u0010=\u001a\u0004\u0018\u00010<\u0012\u0008\u0010?\u001a\u0004\u0018\u00010>\u0012\u0006\u0010@\u001a\u00020 \u0012\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020A0\u0002\u0012\u0006\u0010C\u001a\u00020 \u0012\u0006\u0010D\u001a\u00020 \u0012\u0006\u0010F\u001a\u00020E\u0012\u0008\u0010H\u001a\u0004\u0018\u00010G\u0012\u0008\u0010I\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010K\u001a\u00020J\u0012\u0006\u0010M\u001a\u00020L\u0012\u0008\u0010N\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008O\u0010PB\u00e9\u0004\u0008\u0010\u0012\u0006\u0010R\u001a\u00020Q\u0012\u0006\u0010S\u001a\u00020Q\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010!\u001a\u00020 \u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010$\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0002\u0012\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0002\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010&\u0012\u0008\u0010)\u001a\u0004\u0018\u00010(\u0012\u0008\u0010+\u001a\u0004\u0018\u00010*\u0012\u0008\u0010-\u001a\u0004\u0018\u00010,\u0012\u0008\u0010.\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010/\u001a\u0004\u0018\u00010\t\u0012\u0008\u00100\u001a\u0004\u0018\u00010\t\u0012\u0008\u00101\u001a\u0004\u0018\u00010\t\u0012\u0008\u00102\u001a\u0004\u0018\u00010\t\u0012\u0008\u00103\u001a\u0004\u0018\u00010\t\u0012\u0006\u00104\u001a\u00020 \u0012\u0008\u00106\u001a\u0004\u0018\u000105\u0012\u0008\u00108\u001a\u0004\u0018\u000107\u0012\u0008\u00109\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010;\u001a\u0004\u0018\u00010:\u0012\u0008\u0010=\u001a\u0004\u0018\u00010<\u0012\u0008\u0010?\u001a\u0004\u0018\u00010>\u0012\u0006\u0010@\u001a\u00020 \u0012\u000e\u0010B\u001a\n\u0012\u0004\u0012\u00020A\u0018\u00010\u0002\u0012\u0006\u0010C\u001a\u00020 \u0012\u0006\u0010D\u001a\u00020 \u0012\u0008\u0010F\u001a\u0004\u0018\u00010E\u0012\u0008\u0010H\u001a\u0004\u0018\u00010G\u0012\u0008\u0010I\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010K\u001a\u0004\u0018\u00010J\u0012\u0006\u0010M\u001a\u00020L\u0012\u0008\u0010N\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010U\u001a\u0004\u0018\u00010T\u00a2\u0006\u0004\u0008O\u0010V\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;",
        "",
        "",
        "Lcom/vuitton/android/data/dto/config/cache/AbTestCache;",
        "abTestList",
        "Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;",
        "aiCompanionConfig",
        "Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;",
        "featuresConfig",
        "",
        "contactFormUrl",
        "legalPrivacyUrl",
        "lvWebsiteUrl",
        "shareAppUrl",
        "storeLocatorUrl",
        "accountCreationUrlLogin",
        "accountCreationUrlRegistration",
        "cartUrl",
        "confirmationPageUrl",
        "consumerRightsUrl",
        "productPageUrl",
        "storeStockAvailabilityUrl",
        "emailUsUrl",
        "googleCheckoutRedirectUrl",
        "lineCheckoutRedirectUrl",
        "bffBaseUrl",
        "atgApiUrl",
        "salesforceApiUrl",
        "arModelReferenceApiUrl",
        "facadeSecureApiUrl",
        "facadeApiUrl",
        "facadeMyLVApiUrl",
        "",
        "useCountry",
        "lvStoreLang",
        "salesforceLang",
        "bestSellersSkuList",
        "watchSkuList",
        "Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;",
        "nativeCart",
        "Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;",
        "myCertificates",
        "Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;",
        "feedConfig",
        "Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;",
        "help",
        "customerServicePhoneNumber",
        "customerServiceSms",
        "customerServiceEmail",
        "customerServiceWhatsapp",
        "customerServiceKakaoTalk",
        "callForInquiry",
        "displayRepairs",
        "Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;",
        "distantRepairsConfig",
        "Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;",
        "services",
        "waitingRoomAssetUrl",
        "Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;",
        "virtualStudioConfig",
        "Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;",
        "personalSelectionsConfig",
        "Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;",
        "personalisationConfig",
        "showStoreStockGeolocationButton",
        "Lcom/vuitton/android/data/dto/config/cache/UrlCatchingConfigCache;",
        "urlCatchingList",
        "isEcommerce",
        "isEcommerceWebOnly",
        "Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;",
        "displayVatIncludedLabel",
        "Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;",
        "powerFrontConfig",
        "personalDataEmail",
        "Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;",
        "addressAutocompleteConfig",
        "",
        "configRevision",
        "kakaoCheckoutRedirectUrl",
        "<init>",
        "(Ljava/util/List;Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;ZLjava/util/List;ZZLcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;JLjava/lang/String;)V",
        "",
        "seen0",
        "seen1",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IILjava/util/List;Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;ZLjava/util/List;ZZLcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;JLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$Companion;

.field public static final f0:[Lkotlin/Lazy;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/util/List;

.field public final D:Ljava/util/List;

.field public final E:Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;

.field public final F:Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;

.field public final G:Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;

.field public final H:Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;

.field public final I:Ljava/lang/String;

.field public final J:Ljava/lang/String;

.field public final K:Ljava/lang/String;

.field public final L:Ljava/lang/String;

.field public final M:Ljava/lang/String;

.field public final N:Ljava/lang/String;

.field public final O:Z

.field public final P:Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;

.field public final Q:Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;

.field public final R:Ljava/lang/String;

.field public final S:Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;

.field public final T:Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;

.field public final U:Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;

.field public final V:Z

.field public final W:Ljava/util/List;

.field public final X:Z

.field public final Y:Z

.field public final Z:Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;

.field public final a:Ljava/util/List;

.field public final a0:Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;

.field public final b:Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;

.field public final b0:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;

.field public final c0:Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;

.field public final d:Ljava/lang/String;

.field public final d0:J

.field public final e:Ljava/lang/String;

.field public final e0:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lg5;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lg5;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v4, Lg5;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lg5;-><init>(I)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    new-instance v6, Lg5;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Lg5;-><init>(I)V

    invoke-static {v0, v6}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v6

    new-instance v8, Lg5;

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Lg5;-><init>(I)V

    invoke-static {v0, v8}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v8, 0x39

    new-array v8, v8, [Lkotlin/Lazy;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    const/4 v2, 0x1

    aput-object v1, v8, v2

    const/4 v2, 0x2

    aput-object v1, v8, v2

    const/4 v2, 0x3

    aput-object v1, v8, v2

    const/4 v2, 0x4

    aput-object v1, v8, v2

    const/4 v2, 0x5

    aput-object v1, v8, v2

    const/4 v2, 0x6

    aput-object v1, v8, v2

    aput-object v1, v8, v3

    aput-object v1, v8, v5

    aput-object v1, v8, v7

    aput-object v1, v8, v9

    const/16 v2, 0xb

    aput-object v1, v8, v2

    const/16 v2, 0xc

    aput-object v1, v8, v2

    const/16 v2, 0xd

    aput-object v1, v8, v2

    const/16 v2, 0xe

    aput-object v1, v8, v2

    const/16 v2, 0xf

    aput-object v1, v8, v2

    const/16 v2, 0x10

    aput-object v1, v8, v2

    const/16 v2, 0x11

    aput-object v1, v8, v2

    const/16 v2, 0x12

    aput-object v1, v8, v2

    const/16 v2, 0x13

    aput-object v1, v8, v2

    const/16 v2, 0x14

    aput-object v1, v8, v2

    const/16 v2, 0x15

    aput-object v1, v8, v2

    const/16 v2, 0x16

    aput-object v1, v8, v2

    const/16 v2, 0x17

    aput-object v1, v8, v2

    const/16 v2, 0x18

    aput-object v1, v8, v2

    const/16 v2, 0x19

    aput-object v1, v8, v2

    const/16 v2, 0x1a

    aput-object v1, v8, v2

    const/16 v2, 0x1b

    aput-object v1, v8, v2

    const/16 v2, 0x1c

    aput-object v4, v8, v2

    const/16 v2, 0x1d

    aput-object v6, v8, v2

    const/16 v2, 0x1e

    aput-object v1, v8, v2

    const/16 v2, 0x1f

    aput-object v1, v8, v2

    const/16 v2, 0x20

    aput-object v1, v8, v2

    const/16 v2, 0x21

    aput-object v1, v8, v2

    const/16 v2, 0x22

    aput-object v1, v8, v2

    const/16 v2, 0x23

    aput-object v1, v8, v2

    const/16 v2, 0x24

    aput-object v1, v8, v2

    const/16 v2, 0x25

    aput-object v1, v8, v2

    const/16 v2, 0x26

    aput-object v1, v8, v2

    const/16 v2, 0x27

    aput-object v1, v8, v2

    const/16 v2, 0x28

    aput-object v1, v8, v2

    const/16 v2, 0x29

    aput-object v1, v8, v2

    const/16 v2, 0x2a

    aput-object v1, v8, v2

    const/16 v2, 0x2b

    aput-object v1, v8, v2

    const/16 v2, 0x2c

    aput-object v1, v8, v2

    const/16 v2, 0x2d

    aput-object v1, v8, v2

    const/16 v2, 0x2e

    aput-object v1, v8, v2

    const/16 v2, 0x2f

    aput-object v1, v8, v2

    const/16 v2, 0x30

    aput-object v0, v8, v2

    const/16 v0, 0x31

    aput-object v1, v8, v0

    const/16 v0, 0x32

    aput-object v1, v8, v0

    const/16 v0, 0x33

    aput-object v1, v8, v0

    const/16 v0, 0x34

    aput-object v1, v8, v0

    const/16 v0, 0x35

    aput-object v1, v8, v0

    const/16 v0, 0x36

    aput-object v1, v8, v0

    const/16 v0, 0x37

    aput-object v1, v8, v0

    const/16 v0, 0x38

    aput-object v1, v8, v0

    sput-object v8, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->f0:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/util/List;Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;ZLjava/util/List;ZZLcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;JLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v2, p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    const v4, 0x1ffffff

    and-int v5, p2, v4

    if-eq v4, v5, :cond_1

    move v0, v1

    :cond_1
    or-int/2addr v0, v3

    if-nez v0, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->a:Ljava/util/List;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;

    iput-object p5, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->c:Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;

    iput-object p6, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->f:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->g:Ljava/lang/String;

    move-object/from16 p1, p10

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->h:Ljava/lang/String;

    move-object/from16 p1, p11

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->i:Ljava/lang/String;

    move-object/from16 p1, p12

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->j:Ljava/lang/String;

    move-object/from16 p1, p13

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->k:Ljava/lang/String;

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->l:Ljava/lang/String;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->m:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->n:Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->o:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->p:Ljava/lang/String;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->q:Ljava/lang/String;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->r:Ljava/lang/String;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->s:Ljava/lang/String;

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->t:Ljava/lang/String;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->u:Ljava/lang/String;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->v:Ljava/lang/String;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->w:Ljava/lang/String;

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->x:Ljava/lang/String;

    move-object/from16 p1, p27

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->y:Ljava/lang/String;

    move/from16 p1, p28

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->z:Z

    move-object/from16 p1, p29

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->A:Ljava/lang/String;

    move-object/from16 p1, p30

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->B:Ljava/lang/String;

    move-object/from16 p1, p31

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->C:Ljava/util/List;

    move-object/from16 p1, p32

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->D:Ljava/util/List;

    move-object/from16 p1, p33

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->E:Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;

    move-object/from16 p1, p34

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->F:Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;

    move-object/from16 p1, p35

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->G:Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;

    move-object/from16 p1, p36

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->H:Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;

    move-object/from16 p1, p37

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->I:Ljava/lang/String;

    move-object/from16 p1, p38

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->J:Ljava/lang/String;

    move-object/from16 p1, p39

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->K:Ljava/lang/String;

    move-object/from16 p1, p40

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->L:Ljava/lang/String;

    move-object/from16 p1, p41

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->M:Ljava/lang/String;

    move-object/from16 p1, p42

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->N:Ljava/lang/String;

    move/from16 p1, p43

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->O:Z

    move-object/from16 p1, p44

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->P:Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;

    move-object/from16 p1, p45

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Q:Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;

    move-object/from16 p1, p46

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->R:Ljava/lang/String;

    move-object/from16 p1, p47

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->S:Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;

    move-object/from16 p1, p48

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->T:Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;

    move-object/from16 p1, p49

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->U:Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;

    move/from16 p1, p50

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->V:Z

    move-object/from16 p1, p51

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->W:Ljava/util/List;

    move/from16 p1, p52

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->X:Z

    move/from16 p1, p53

    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Y:Z

    move-object/from16 p1, p54

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Z:Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;

    move-object/from16 p1, p55

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->a0:Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;

    move-object/from16 p1, p56

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->b0:Ljava/lang/String;

    move-object/from16 p1, p57

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->c0:Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;

    move-wide/from16 p1, p58

    iput-wide p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->d0:J

    move-object/from16 p1, p60

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->e0:Ljava/lang/String;

    return-void

    :cond_2
    filled-new-array/range {p1 .. p2}, [I

    move-result-object p0

    filled-new-array {v2, v4}, [I

    move-result-object p1

    sget-object p2, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$$serializer;->a:Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$$serializer;

    invoke-virtual {p2}, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->a([I[ILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;ZLjava/util/List;ZZLcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;JLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/config/cache/AbTestCache;",
            ">;",
            "Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;",
            "Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;",
            "Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;",
            "Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;",
            "Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;",
            "Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;",
            "Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;",
            "Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;",
            "Z",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/config/cache/UrlCatchingConfigCache;",
            ">;ZZ",
            "Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;",
            "Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p19

    move-object/from16 v1, p20

    move-object/from16 v2, p21

    move-object/from16 v3, p27

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    invoke-static {p8, v0, v1, v2, v3}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p29 .. p29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p30 .. p30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p32 .. p32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p33 .. p33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p40 .. p40}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p42 .. p42}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p49 .. p49}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p52 .. p52}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p55 .. p55}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->a:Ljava/util/List;

    .line 260
    iput-object p2, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;

    .line 261
    iput-object p3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->c:Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;

    .line 262
    iput-object p4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->d:Ljava/lang/String;

    .line 263
    iput-object p5, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->e:Ljava/lang/String;

    .line 264
    iput-object p6, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->f:Ljava/lang/String;

    .line 265
    iput-object p7, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->g:Ljava/lang/String;

    .line 266
    iput-object p8, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->h:Ljava/lang/String;

    .line 267
    iput-object p9, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->i:Ljava/lang/String;

    .line 268
    iput-object p10, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->j:Ljava/lang/String;

    .line 269
    iput-object p11, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->k:Ljava/lang/String;

    move-object/from16 p1, p12

    .line 270
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->l:Ljava/lang/String;

    move-object/from16 p1, p13

    .line 271
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->m:Ljava/lang/String;

    move-object/from16 p1, p14

    .line 272
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->n:Ljava/lang/String;

    move-object/from16 p1, p15

    .line 273
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 274
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->p:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 275
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->q:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 276
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->r:Ljava/lang/String;

    .line 277
    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->s:Ljava/lang/String;

    .line 278
    iput-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->t:Ljava/lang/String;

    .line 279
    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->u:Ljava/lang/String;

    move-object/from16 p1, p22

    .line 280
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->v:Ljava/lang/String;

    move-object/from16 p1, p23

    .line 281
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->w:Ljava/lang/String;

    move-object/from16 p1, p24

    .line 282
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->x:Ljava/lang/String;

    move-object/from16 p1, p25

    .line 283
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->y:Ljava/lang/String;

    move/from16 p1, p26

    .line 284
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->z:Z

    .line 285
    iput-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->A:Ljava/lang/String;

    move-object/from16 p1, p28

    .line 286
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->B:Ljava/lang/String;

    move-object/from16 p1, p29

    .line 287
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->C:Ljava/util/List;

    move-object/from16 p1, p30

    .line 288
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->D:Ljava/util/List;

    move-object/from16 p1, p31

    .line 289
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->E:Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;

    move-object/from16 p1, p32

    .line 290
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->F:Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;

    move-object/from16 p1, p33

    .line 291
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->G:Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;

    move-object/from16 p1, p34

    .line 292
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->H:Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;

    move-object/from16 p1, p35

    .line 293
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->I:Ljava/lang/String;

    move-object/from16 p1, p36

    .line 294
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->J:Ljava/lang/String;

    move-object/from16 p1, p37

    .line 295
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->K:Ljava/lang/String;

    move-object/from16 p1, p38

    .line 296
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->L:Ljava/lang/String;

    move-object/from16 p1, p39

    .line 297
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->M:Ljava/lang/String;

    move-object/from16 p1, p40

    .line 298
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->N:Ljava/lang/String;

    move/from16 p1, p41

    .line 299
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->O:Z

    move-object/from16 p1, p42

    .line 300
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->P:Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;

    move-object/from16 p1, p43

    .line 301
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Q:Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;

    move-object/from16 p1, p44

    .line 302
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->R:Ljava/lang/String;

    move-object/from16 p1, p45

    .line 303
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->S:Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;

    move-object/from16 p1, p46

    .line 304
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->T:Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;

    move-object/from16 p1, p47

    .line 305
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->U:Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;

    move/from16 p1, p48

    .line 306
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->V:Z

    move-object/from16 p1, p49

    .line 307
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->W:Ljava/util/List;

    move/from16 p1, p50

    .line 308
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->X:Z

    move/from16 p1, p51

    .line 309
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Y:Z

    move-object/from16 p1, p52

    .line 310
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Z:Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;

    move-object/from16 p1, p53

    .line 311
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->a0:Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;

    move-object/from16 p1, p54

    .line 312
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->b0:Ljava/lang/String;

    move-object/from16 p1, p55

    .line 313
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->c0:Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;

    move-wide/from16 p1, p56

    .line 314
    iput-wide p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->d0:J

    move-object/from16 p1, p58

    .line 315
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->e0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->c:Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->c:Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->q:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->u:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->w:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->x:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->x:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->y:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->y:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->z:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->z:Z

    if-eq v1, v3, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->A:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->A:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->B:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->B:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->C:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->C:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->D:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->D:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->E:Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->E:Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->F:Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->F:Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->G:Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->G:Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->H:Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->H:Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->I:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->I:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->J:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->J:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->K:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->K:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->L:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->L:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->M:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->M:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->N:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->N:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->O:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->O:Z

    if-eq v1, v3, :cond_2a

    return v2

    :cond_2a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->P:Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->P:Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Q:Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Q:Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->R:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->R:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->S:Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->S:Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->T:Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->T:Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v2

    :cond_2f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->U:Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->U:Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->V:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->V:Z

    if-eq v1, v3, :cond_31

    return v2

    :cond_31
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->W:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->W:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->X:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->X:Z

    if-eq v1, v3, :cond_33

    return v2

    :cond_33
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Y:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Y:Z

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Z:Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Z:Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v2

    :cond_35
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->a0:Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->a0:Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v2

    :cond_36
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->b0:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->b0:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->c0:Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->c0:Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-wide v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->d0:J

    iget-wide v5, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->d0:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_39

    return v2

    :cond_39
    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->e0:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->e0:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    return v2

    :cond_3a
    return v0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->a:Ljava/util/List;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->c:Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->d:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->i:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->j:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->k:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->l:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->m:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v0

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->n:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v0

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->o:Ljava/lang/String;

    if-nez v3, :cond_8

    move v3, v0

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->p:Ljava/lang/String;

    if-nez v3, :cond_9

    move v3, v0

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->q:Ljava/lang/String;

    if-nez v3, :cond_a

    move v3, v0

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->r:Ljava/lang/String;

    if-nez v3, :cond_b

    move v3, v0

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->s:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->t:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->u:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->v:Ljava/lang/String;

    if-nez v3, :cond_c

    move v3, v0

    goto :goto_c

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->w:Ljava/lang/String;

    if-nez v3, :cond_d

    move v3, v0

    goto :goto_d

    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->x:Ljava/lang/String;

    if-nez v3, :cond_e

    move v3, v0

    goto :goto_e

    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_e
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->y:Ljava/lang/String;

    if-nez v3, :cond_f

    move v3, v0

    goto :goto_f

    :cond_f
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->z:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->A:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->B:Ljava/lang/String;

    if-nez v3, :cond_10

    move v3, v0

    goto :goto_10

    :cond_10
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->C:Ljava/util/List;

    invoke-static {v1, v2, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->D:Ljava/util/List;

    invoke-static {v1, v2, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->E:Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;

    if-nez v3, :cond_11

    move v3, v0

    goto :goto_11

    :cond_11
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->F:Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->G:Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;->a:Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->H:Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;

    if-nez v3, :cond_12

    move v3, v0

    goto :goto_12

    :cond_12
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->I:Ljava/lang/String;

    if-nez v3, :cond_13

    move v3, v0

    goto :goto_13

    :cond_13
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_13
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->J:Ljava/lang/String;

    if-nez v3, :cond_14

    move v3, v0

    goto :goto_14

    :cond_14
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_14
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->K:Ljava/lang/String;

    if-nez v3, :cond_15

    move v3, v0

    goto :goto_15

    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_15
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->L:Ljava/lang/String;

    if-nez v3, :cond_16

    move v3, v0

    goto :goto_16

    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_16
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->M:Ljava/lang/String;

    if-nez v3, :cond_17

    move v3, v0

    goto :goto_17

    :cond_17
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_17
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->N:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->O:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->P:Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Q:Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;

    if-nez v1, :cond_18

    move v1, v0

    goto :goto_18

    :cond_18
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->R:Ljava/lang/String;

    if-nez v1, :cond_19

    move v1, v0

    goto :goto_19

    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_19
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->S:Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;

    if-nez v1, :cond_1a

    move v1, v0

    goto :goto_1a

    :cond_1a
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;->hashCode()I

    move-result v1

    :goto_1a
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->T:Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;

    if-nez v1, :cond_1b

    move v1, v0

    goto :goto_1b

    :cond_1b
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->U:Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;

    if-nez v1, :cond_1c

    move v1, v0

    goto :goto_1c

    :cond_1c
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;->hashCode()I

    move-result v1

    :goto_1c
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->V:Z

    invoke-static {v3, v2, v1}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->W:Ljava/util/List;

    invoke-static {v1, v2, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->X:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Y:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Z:Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->a0:Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;

    if-nez v1, :cond_1d

    move v1, v0

    goto :goto_1d

    :cond_1d
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->b0:Ljava/lang/String;

    if-nez v1, :cond_1e

    move v1, v0

    goto :goto_1e

    :cond_1e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1e
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->c0:Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;

    iget-boolean v1, v1, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;->a:Z

    invoke-static {v3, v2, v1}, Lo60;->b(IIZ)I

    move-result v1

    iget-wide v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->d0:J

    invoke-static {v1, v2, v3, v4}, Lfc;->a(IIJ)I

    move-result v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->e0:Ljava/lang/String;

    if-nez p0, :cond_1f

    goto :goto_1f

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1f
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppConfigCache(abTestList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aiCompanionConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", featuresConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->c:Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contactFormUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", legalPrivacyUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lvWebsiteUrl="

    const-string v2, ", shareAppUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", storeLocatorUrl="

    const-string v2, ", accountCreationUrlLogin="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->h:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", accountCreationUrlRegistration="

    const-string v2, ", cartUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->j:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", confirmationPageUrl="

    const-string v2, ", consumerRightsUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->l:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", productPageUrl="

    const-string v2, ", storeStockAvailabilityUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->n:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", emailUsUrl="

    const-string v2, ", googleCheckoutRedirectUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->p:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", lineCheckoutRedirectUrl="

    const-string v2, ", bffBaseUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->r:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", atgApiUrl="

    const-string v2, ", salesforceApiUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->t:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", arModelReferenceApiUrl="

    const-string v2, ", facadeSecureApiUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->v:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", facadeApiUrl="

    const-string v2, ", facadeMyLVApiUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->x:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", useCountry="

    const-string v2, ", lvStoreLang="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->y:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->z:Z

    invoke-static {v3, v1, v2, v0, v4}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v1, ", salesforceLang="

    const-string v2, ", bestSellersSkuList="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->A:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->B:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", watchSkuList="

    const-string v2, ", nativeCart="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->C:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->D:Ljava/util/List;

    invoke-static {v0, v3, v1, v4, v2}, La;->C(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->E:Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", myCertificates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->F:Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->G:Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", help="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->H:Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customerServicePhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customerServiceSms="

    const-string v2, ", customerServiceEmail="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->I:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->J:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", customerServiceWhatsapp="

    const-string v2, ", customerServiceKakaoTalk="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->K:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->L:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", callForInquiry="

    const-string v2, ", displayRepairs="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->M:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->N:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->O:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", distantRepairsConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->P:Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Q:Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", waitingRoomAssetUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", virtualStudioConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->S:Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", personalSelectionsConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->T:Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", personalisationConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->U:Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showStoreStockGeolocationButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->V:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", urlCatchingList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->W:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEcommerce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->X:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEcommerceWebOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displayVatIncludedLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Z:Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", powerFrontConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->a0:Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", personalDataEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->b0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressAutocompleteConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->c0:Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configRevision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->d0:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", kakaoCheckoutRedirectUrl="

    const-string v2, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->e0:Ljava/lang/String;

    invoke-static {v0, v1, p0, v2}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
