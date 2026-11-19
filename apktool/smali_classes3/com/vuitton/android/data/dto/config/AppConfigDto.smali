.class public final Lcom/vuitton/android/data/dto/config/AppConfigDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/config/AppConfigDto$$serializer;,
        Lcom/vuitton/android/data/dto/config/AppConfigDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 V2\u00020\u0001:\u0002WVB\u0085\u0005\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0013\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010&\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010)\u001a\u00020\u0007\u0012\u0006\u0010*\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u001a\u0012\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u0007\u0012\u0010\u0008\u0002\u0010.\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010/\u001a\u0004\u0018\u00010\u001a\u0012\u0010\u0008\u0002\u00100\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\u0006\u00102\u001a\u000201\u0012\n\u0008\u0002\u00104\u001a\u0004\u0018\u000103\u0012\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u00107\u001a\u0004\u0018\u000106\u0012\n\u0008\u0002\u00109\u001a\u0004\u0018\u000108\u0012\n\u0008\u0002\u0010:\u001a\u0004\u0018\u00010\u001a\u0012\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010\u001a\u0012\u0006\u0010=\u001a\u00020<\u0012\n\u0008\u0002\u0010?\u001a\u0004\u0018\u00010>\u0012\n\u0008\u0002\u0010@\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010A\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010B\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010D\u001a\u0004\u0018\u00010C\u0012\n\u0008\u0002\u0010F\u001a\u0004\u0018\u00010E\u0012\n\u0008\u0002\u0010G\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010H\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010I\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010K\u001a\u0004\u0018\u00010J\u0012\u0006\u0010M\u001a\u00020L\u00a2\u0006\u0004\u0008N\u0010OB\u00f5\u0004\u0008\u0010\u0012\u0006\u0010Q\u001a\u00020P\u0012\u0006\u0010R\u001a\u00020P\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010!\u0012\u0008\u0010$\u001a\u0004\u0018\u00010#\u0012\u0008\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010&\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010)\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010*\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010+\u001a\u0004\u0018\u00010\u001a\u0012\u0008\u0010,\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010\u0002\u0012\u0008\u0010/\u001a\u0004\u0018\u00010\u001a\u0012\u000e\u00100\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\u0008\u00102\u001a\u0004\u0018\u000101\u0012\u0008\u00104\u001a\u0004\u0018\u000103\u0012\u0008\u00105\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u00107\u001a\u0004\u0018\u000106\u0012\u0008\u00109\u001a\u0004\u0018\u000108\u0012\u0008\u0010:\u001a\u0004\u0018\u00010\u001a\u0012\u0008\u0010;\u001a\u0004\u0018\u00010\u001a\u0012\u0008\u0010=\u001a\u0004\u0018\u00010<\u0012\u0008\u0010?\u001a\u0004\u0018\u00010>\u0012\u0008\u0010@\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010A\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010B\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010D\u001a\u0004\u0018\u00010C\u0012\u0008\u0010F\u001a\u0004\u0018\u00010E\u0012\u0008\u0010G\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010H\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010I\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010K\u001a\u0004\u0018\u00010J\u0012\u0008\u0010M\u001a\u0004\u0018\u00010L\u0012\u0008\u0010T\u001a\u0004\u0018\u00010S\u00a2\u0006\u0004\u0008N\u0010U\u00a8\u0006X"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/config/AppConfigDto;",
        "",
        "",
        "Lcom/vuitton/android/data/dto/config/AbTestDto;",
        "abTestDtoList",
        "Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;",
        "aiCompanionConfigDto",
        "",
        "legalPrivacyUrl",
        "unformattedSalesforceApiUrl",
        "bffBaseUrl",
        "atgApiUrl",
        "accountCreationUrlLogin",
        "accountCreationUrlRegistration",
        "arModelReferenceApiUrl",
        "bestSellersSkuList",
        "callForInquiry",
        "cartUrl",
        "confirmationPageUrl",
        "contactFormUrl",
        "consumerRightsUrl",
        "customerServicePhoneNumber",
        "customerServiceSms",
        "customerServiceEmail",
        "customerServiceWhatsapp",
        "customerServiceKakaoTalk",
        "",
        "displayRepairs",
        "Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;",
        "distantRepairsConfigDto",
        "unformattedFacadeSecureApiUrl",
        "unformattedFacadeApiUrl",
        "unformattedFacadeMyLVApiUrl",
        "Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;",
        "featuresConfigDto",
        "Lcom/vuitton/android/data/dto/config/FeedConfigDto;",
        "feedConfigDto",
        "lvStoreLang",
        "lvWebsiteUrl",
        "productPageUrl",
        "salesforceLang",
        "shareAppUrl",
        "storeLocatorUrl",
        "showStoreStockGeolocationButton",
        "storeStockAvailabilityUrl",
        "Lcom/vuitton/android/data/dto/config/UrlCatchingConfigDto;",
        "urlCatchingList",
        "useCountry",
        "watchSkuList",
        "Lcom/vuitton/android/data/dto/config/CertificateConfigDto;",
        "certificateConfigDto",
        "Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;",
        "nativeCartConfigDto",
        "unformattedBackInStockUrl",
        "Lcom/vuitton/android/data/dto/config/HelpConfigDto;",
        "helpConfigDto",
        "Lcom/vuitton/android/data/dto/config/ServicesConfigDto;",
        "servicesConfigDto",
        "isEcommerce",
        "isEcommerceWebOnly",
        "Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;",
        "displayVatIncludedLabelDto",
        "Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;",
        "powerFrontConfigDto",
        "waitingRoomAssetUrl",
        "emailUsUrl",
        "personalDataEmail",
        "Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;",
        "virtualStudioConfigDto",
        "Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;",
        "personalSelectionsConfigDto",
        "googleCheckoutRedirectUrl",
        "lineCheckoutRedirectUrl",
        "kakaoCheckoutRedirectUrl",
        "Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;",
        "addressAutocompleteConfigDto",
        "Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;",
        "personalisationConfigDto",
        "<init>",
        "(Ljava/util/List;Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;Lcom/vuitton/android/data/dto/config/FeedConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Lcom/vuitton/android/data/dto/config/CertificateConfigDto;Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/HelpConfigDto;Lcom/vuitton/android/data/dto/config/ServicesConfigDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;)V",
        "",
        "seen0",
        "seen1",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IILjava/util/List;Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;Lcom/vuitton/android/data/dto/config/FeedConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Lcom/vuitton/android/data/dto/config/CertificateConfigDto;Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/HelpConfigDto;Lcom/vuitton/android/data/dto/config/ServicesConfigDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/config/AppConfigDto$Companion;

.field public static final f0:[Lkotlin/Lazy;


# instance fields
.field public final A:Lcom/vuitton/android/data/dto/config/FeedConfigDto;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public final D:Ljava/lang/String;

.field public final E:Ljava/lang/String;

.field public final F:Ljava/lang/String;

.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/Boolean;

.field public final I:Ljava/lang/String;

.field public final J:Ljava/util/List;

.field public final K:Ljava/lang/Boolean;

.field public final L:Ljava/util/List;

.field public final M:Lcom/vuitton/android/data/dto/config/CertificateConfigDto;

.field public final N:Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;

.field public final O:Ljava/lang/String;

.field public final P:Lcom/vuitton/android/data/dto/config/HelpConfigDto;

.field public final Q:Lcom/vuitton/android/data/dto/config/ServicesConfigDto;

.field public final R:Ljava/lang/Boolean;

.field public final S:Ljava/lang/Boolean;

.field public final T:Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;

.field public final U:Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;

.field public final V:Ljava/lang/String;

.field public final W:Ljava/lang/String;

.field public final X:Ljava/lang/String;

.field public final Y:Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;

.field public final Z:Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;

.field public final a:Ljava/util/List;

.field public final a0:Ljava/lang/String;

.field public final b:Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;

.field public final b0:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final c0:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final d0:Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;

.field public final e:Ljava/lang/String;

.field public final e0:Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/util/List;

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

.field public final u:Ljava/lang/Boolean;

.field public final v:Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/vuitton/android/data/dto/config/AppConfigDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/config/AppConfigDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Companion:Lcom/vuitton/android/data/dto/config/AppConfigDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lg5;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Lg5;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v4, Lg5;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, Lg5;-><init>(I)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    new-instance v6, Lg5;

    const/16 v7, 0xd

    invoke-direct {v6, v7}, Lg5;-><init>(I)V

    invoke-static {v0, v6}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v6

    new-instance v8, Lg5;

    const/16 v9, 0xe

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

    const/4 v2, 0x7

    aput-object v1, v8, v2

    const/16 v2, 0x8

    aput-object v1, v8, v2

    const/16 v2, 0x9

    aput-object v4, v8, v2

    const/16 v2, 0xa

    aput-object v1, v8, v2

    aput-object v1, v8, v3

    aput-object v1, v8, v5

    aput-object v1, v8, v7

    aput-object v1, v8, v9

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

    aput-object v1, v8, v2

    const/16 v2, 0x1d

    aput-object v1, v8, v2

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

    aput-object v6, v8, v2

    const/16 v2, 0x24

    aput-object v1, v8, v2

    const/16 v2, 0x25

    aput-object v0, v8, v2

    const/16 v0, 0x26

    aput-object v1, v8, v0

    const/16 v0, 0x27

    aput-object v1, v8, v0

    const/16 v0, 0x28

    aput-object v1, v8, v0

    const/16 v0, 0x29

    aput-object v1, v8, v0

    const/16 v0, 0x2a

    aput-object v1, v8, v0

    const/16 v0, 0x2b

    aput-object v1, v8, v0

    const/16 v0, 0x2c

    aput-object v1, v8, v0

    const/16 v0, 0x2d

    aput-object v1, v8, v0

    const/16 v0, 0x2e

    aput-object v1, v8, v0

    const/16 v0, 0x2f

    aput-object v1, v8, v0

    const/16 v0, 0x30

    aput-object v1, v8, v0

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

    sput-object v8, Lcom/vuitton/android/data/dto/config/AppConfigDto;->f0:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/util/List;Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;Lcom/vuitton/android/data/dto/config/FeedConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Lcom/vuitton/android/data/dto/config/CertificateConfigDto;Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/HelpConfigDto;Lcom/vuitton/android/data/dto/config/ServicesConfigDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 10

    const v0, -0x69dfdb03

    and-int v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const v4, 0x1002041

    and-int v5, p2, v4

    if-eq v4, v5, :cond_1

    move v2, v3

    :cond_1
    or-int/2addr v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_29

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->a:Ljava/util/List;

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_2

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b:Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b:Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;

    :goto_1
    iput-object p5, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->c:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->d:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->e:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->f:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->g:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->h:Ljava/lang/String;

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_3

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->i:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->i:Ljava/lang/String;

    :goto_2
    and-int/lit16 v0, p1, 0x200

    if-nez v0, :cond_4

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->j:Ljava/util/List;

    :goto_3
    move-object/from16 v0, p13

    goto :goto_4

    :cond_4
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->j:Ljava/util/List;

    goto :goto_3

    :goto_4
    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->k:Ljava/lang/String;

    and-int/lit16 v0, p1, 0x800

    if-nez v0, :cond_5

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->l:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->l:Ljava/lang/String;

    :goto_5
    and-int/lit16 v0, p1, 0x1000

    if-nez v0, :cond_6

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->m:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, p16

    goto :goto_7

    :cond_6
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->m:Ljava/lang/String;

    goto :goto_6

    :goto_7
    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->n:Ljava/lang/String;

    and-int/lit16 v0, p1, 0x4000

    if-nez v0, :cond_7

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->o:Ljava/lang/String;

    goto :goto_8

    :cond_7
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->o:Ljava/lang/String;

    :goto_8
    const v0, 0x8000

    and-int v1, p1, v0

    if-nez v1, :cond_8

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->p:Ljava/lang/String;

    goto :goto_9

    :cond_8
    move-object/from16 v1, p18

    iput-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->p:Ljava/lang/String;

    :goto_9
    const/high16 v1, 0x10000

    and-int v3, p1, v1

    if-nez v3, :cond_9

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->q:Ljava/lang/String;

    goto :goto_a

    :cond_9
    move-object/from16 v3, p19

    iput-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->q:Ljava/lang/String;

    :goto_a
    const/high16 v3, 0x20000

    and-int v4, p1, v3

    if-nez v4, :cond_a

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->r:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object/from16 v4, p20

    iput-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->r:Ljava/lang/String;

    :goto_b
    const/high16 v4, 0x40000

    and-int v5, p1, v4

    if-nez v5, :cond_b

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->s:Ljava/lang/String;

    goto :goto_c

    :cond_b
    move-object/from16 v5, p21

    iput-object v5, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->s:Ljava/lang/String;

    :goto_c
    const/high16 v5, 0x80000

    and-int v6, p1, v5

    if-nez v6, :cond_c

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->t:Ljava/lang/String;

    goto :goto_d

    :cond_c
    move-object/from16 v6, p22

    iput-object v6, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->t:Ljava/lang/String;

    :goto_d
    const/high16 v6, 0x100000

    and-int v7, p1, v6

    if-nez v7, :cond_d

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->u:Ljava/lang/Boolean;

    :goto_e
    move-object/from16 v7, p24

    goto :goto_f

    :cond_d
    move-object/from16 v7, p23

    iput-object v7, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->u:Ljava/lang/Boolean;

    goto :goto_e

    :goto_f
    iput-object v7, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->v:Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;

    const/high16 v7, 0x400000

    and-int v8, p1, v7

    if-nez v8, :cond_e

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->w:Ljava/lang/String;

    goto :goto_10

    :cond_e
    move-object/from16 v8, p25

    iput-object v8, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->w:Ljava/lang/String;

    :goto_10
    const/high16 v8, 0x800000

    and-int v9, p1, v8

    if-nez v9, :cond_f

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->x:Ljava/lang/String;

    goto :goto_11

    :cond_f
    move-object/from16 v9, p26

    iput-object v9, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->x:Ljava/lang/String;

    :goto_11
    const/high16 v9, 0x1000000

    and-int/2addr v9, p1

    if-nez v9, :cond_10

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->y:Ljava/lang/String;

    :goto_12
    move-object/from16 v9, p28

    goto :goto_13

    :cond_10
    move-object/from16 v9, p27

    iput-object v9, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->y:Ljava/lang/String;

    goto :goto_12

    :goto_13
    iput-object v9, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->z:Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;

    move-object/from16 v9, p29

    iput-object v9, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->A:Lcom/vuitton/android/data/dto/config/FeedConfigDto;

    const/high16 v9, 0x8000000

    and-int/2addr v9, p1

    if-nez v9, :cond_11

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->B:Ljava/lang/String;

    :goto_14
    move-object/from16 v9, p31

    goto :goto_15

    :cond_11
    move-object/from16 v9, p30

    iput-object v9, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->B:Ljava/lang/String;

    goto :goto_14

    :goto_15
    iput-object v9, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->C:Ljava/lang/String;

    const/high16 v9, 0x20000000

    and-int/2addr v9, p1

    if-nez v9, :cond_12

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->D:Ljava/lang/String;

    goto :goto_16

    :cond_12
    move-object/from16 v9, p32

    iput-object v9, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->D:Ljava/lang/String;

    :goto_16
    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr p1, v9

    if-nez p1, :cond_13

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->E:Ljava/lang/String;

    :goto_17
    move-object/from16 p1, p34

    goto :goto_18

    :cond_13
    move-object/from16 p1, p33

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->E:Ljava/lang/String;

    goto :goto_17

    :goto_18
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->F:Ljava/lang/String;

    move-object/from16 p1, p35

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->G:Ljava/lang/String;

    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_14

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->H:Ljava/lang/Boolean;

    goto :goto_19

    :cond_14
    move-object/from16 p1, p36

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->H:Ljava/lang/Boolean;

    :goto_19
    and-int/lit8 p1, p2, 0x4

    if-nez p1, :cond_15

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->I:Ljava/lang/String;

    goto :goto_1a

    :cond_15
    move-object/from16 p1, p37

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->I:Ljava/lang/String;

    :goto_1a
    and-int/lit8 p1, p2, 0x8

    if-nez p1, :cond_16

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->J:Ljava/util/List;

    goto :goto_1b

    :cond_16
    move-object/from16 p1, p38

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->J:Ljava/util/List;

    :goto_1b
    and-int/lit8 p1, p2, 0x10

    if-nez p1, :cond_17

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->K:Ljava/lang/Boolean;

    goto :goto_1c

    :cond_17
    move-object/from16 p1, p39

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->K:Ljava/lang/Boolean;

    :goto_1c
    and-int/lit8 p1, p2, 0x20

    if-nez p1, :cond_18

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->L:Ljava/util/List;

    :goto_1d
    move-object/from16 p1, p41

    goto :goto_1e

    :cond_18
    move-object/from16 p1, p40

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->L:Ljava/util/List;

    goto :goto_1d

    :goto_1e
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->M:Lcom/vuitton/android/data/dto/config/CertificateConfigDto;

    and-int/lit16 p1, p2, 0x80

    if-nez p1, :cond_19

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->N:Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;

    goto :goto_1f

    :cond_19
    move-object/from16 p1, p42

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->N:Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;

    :goto_1f
    and-int/lit16 p1, p2, 0x100

    if-nez p1, :cond_1a

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->O:Ljava/lang/String;

    goto :goto_20

    :cond_1a
    move-object/from16 p1, p43

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->O:Ljava/lang/String;

    :goto_20
    and-int/lit16 p1, p2, 0x200

    if-nez p1, :cond_1b

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->P:Lcom/vuitton/android/data/dto/config/HelpConfigDto;

    goto :goto_21

    :cond_1b
    move-object/from16 p1, p44

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->P:Lcom/vuitton/android/data/dto/config/HelpConfigDto;

    :goto_21
    and-int/lit16 p1, p2, 0x400

    if-nez p1, :cond_1c

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Q:Lcom/vuitton/android/data/dto/config/ServicesConfigDto;

    goto :goto_22

    :cond_1c
    move-object/from16 p1, p45

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Q:Lcom/vuitton/android/data/dto/config/ServicesConfigDto;

    :goto_22
    and-int/lit16 p1, p2, 0x800

    if-nez p1, :cond_1d

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->R:Ljava/lang/Boolean;

    goto :goto_23

    :cond_1d
    move-object/from16 p1, p46

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->R:Ljava/lang/Boolean;

    :goto_23
    and-int/lit16 p1, p2, 0x1000

    if-nez p1, :cond_1e

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->S:Ljava/lang/Boolean;

    :goto_24
    move-object/from16 p1, p48

    goto :goto_25

    :cond_1e
    move-object/from16 p1, p47

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->S:Ljava/lang/Boolean;

    goto :goto_24

    :goto_25
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->T:Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;

    and-int/lit16 p1, p2, 0x4000

    if-nez p1, :cond_1f

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->U:Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;

    goto :goto_26

    :cond_1f
    move-object/from16 p1, p49

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->U:Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;

    :goto_26
    and-int p1, p2, v0

    if-nez p1, :cond_20

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->V:Ljava/lang/String;

    goto :goto_27

    :cond_20
    move-object/from16 p1, p50

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->V:Ljava/lang/String;

    :goto_27
    and-int p1, p2, v1

    if-nez p1, :cond_21

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->W:Ljava/lang/String;

    goto :goto_28

    :cond_21
    move-object/from16 p1, p51

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->W:Ljava/lang/String;

    :goto_28
    and-int p1, p2, v3

    if-nez p1, :cond_22

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->X:Ljava/lang/String;

    goto :goto_29

    :cond_22
    move-object/from16 p1, p52

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->X:Ljava/lang/String;

    :goto_29
    and-int p1, p2, v4

    if-nez p1, :cond_23

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Y:Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;

    goto :goto_2a

    :cond_23
    move-object/from16 p1, p53

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Y:Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;

    :goto_2a
    and-int p1, p2, v5

    if-nez p1, :cond_24

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Z:Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;

    goto :goto_2b

    :cond_24
    move-object/from16 p1, p54

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Z:Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;

    :goto_2b
    and-int p1, p2, v6

    if-nez p1, :cond_25

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->a0:Ljava/lang/String;

    goto :goto_2c

    :cond_25
    move-object/from16 p1, p55

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->a0:Ljava/lang/String;

    :goto_2c
    const/high16 p1, 0x200000

    and-int/2addr p1, p2

    if-nez p1, :cond_26

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b0:Ljava/lang/String;

    goto :goto_2d

    :cond_26
    move-object/from16 p1, p56

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b0:Ljava/lang/String;

    :goto_2d
    and-int p1, p2, v7

    if-nez p1, :cond_27

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->c0:Ljava/lang/String;

    goto :goto_2e

    :cond_27
    move-object/from16 p1, p57

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->c0:Ljava/lang/String;

    :goto_2e
    and-int p1, p2, v8

    if-nez p1, :cond_28

    iput-object v2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->d0:Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;

    :goto_2f
    move-object/from16 p1, p59

    goto :goto_30

    :cond_28
    move-object/from16 p1, p58

    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->d0:Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;

    goto :goto_2f

    :goto_30
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->e0:Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;

    return-void

    :cond_29
    filled-new-array/range {p1 .. p2}, [I

    move-result-object p0

    filled-new-array {v0, v4}, [I

    move-result-object p1

    sget-object p2, Lcom/vuitton/android/data/dto/config/AppConfigDto$$serializer;->a:Lcom/vuitton/android/data/dto/config/AppConfigDto$$serializer;

    invoke-virtual {p2}, Lcom/vuitton/android/data/dto/config/AppConfigDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->a([I[ILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v2
.end method

.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;Lcom/vuitton/android/data/dto/config/FeedConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Lcom/vuitton/android/data/dto/config/CertificateConfigDto;Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/HelpConfigDto;Lcom/vuitton/android/data/dto/config/ServicesConfigDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/config/AbTestDto;",
            ">;",
            "Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
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
            "Ljava/lang/Boolean;",
            "Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;",
            "Lcom/vuitton/android/data/dto/config/FeedConfigDto;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/config/UrlCatchingConfigDto;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vuitton/android/data/dto/config/CertificateConfigDto;",
            "Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/config/HelpConfigDto;",
            "Lcom/vuitton/android/data/dto/config/ServicesConfigDto;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;",
            "Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;",
            "Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;",
            "Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;",
            ")V"
        }
    .end annotation

    .line 572
    invoke-static/range {p3 .. p7}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p26 .. p26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p27 .. p27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p29 .. p29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p32 .. p32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p33 .. p33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p39 .. p39}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p46 .. p46}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p57 .. p57}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->a:Ljava/util/List;

    .line 576
    iput-object p2, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b:Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;

    .line 577
    iput-object p3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->c:Ljava/lang/String;

    .line 578
    iput-object p4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->d:Ljava/lang/String;

    .line 579
    iput-object p5, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->e:Ljava/lang/String;

    .line 580
    iput-object p6, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->f:Ljava/lang/String;

    .line 581
    iput-object p7, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->g:Ljava/lang/String;

    .line 582
    iput-object p8, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->h:Ljava/lang/String;

    .line 583
    iput-object p9, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->i:Ljava/lang/String;

    .line 584
    iput-object p10, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->j:Ljava/util/List;

    .line 585
    iput-object p11, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->k:Ljava/lang/String;

    .line 586
    iput-object p12, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->l:Ljava/lang/String;

    .line 587
    iput-object p13, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->m:Ljava/lang/String;

    .line 588
    iput-object p14, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->n:Ljava/lang/String;

    .line 589
    iput-object p15, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 590
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->p:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 591
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->q:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 592
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->r:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 593
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->s:Ljava/lang/String;

    move-object/from16 p1, p20

    .line 594
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->t:Ljava/lang/String;

    move-object/from16 p1, p21

    .line 595
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->u:Ljava/lang/Boolean;

    move-object/from16 p1, p22

    .line 596
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->v:Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;

    move-object/from16 p1, p23

    .line 597
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->w:Ljava/lang/String;

    move-object/from16 p1, p24

    .line 598
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->x:Ljava/lang/String;

    move-object/from16 p1, p25

    .line 599
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->y:Ljava/lang/String;

    move-object/from16 p1, p26

    .line 600
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->z:Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;

    move-object/from16 p1, p27

    .line 601
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->A:Lcom/vuitton/android/data/dto/config/FeedConfigDto;

    move-object/from16 p1, p28

    .line 602
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->B:Ljava/lang/String;

    move-object/from16 p1, p29

    .line 603
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->C:Ljava/lang/String;

    move-object/from16 p1, p30

    .line 604
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->D:Ljava/lang/String;

    move-object/from16 p1, p31

    .line 605
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->E:Ljava/lang/String;

    move-object/from16 p1, p32

    .line 606
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->F:Ljava/lang/String;

    move-object/from16 p1, p33

    .line 607
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->G:Ljava/lang/String;

    move-object/from16 p1, p34

    .line 608
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->H:Ljava/lang/Boolean;

    move-object/from16 p1, p35

    .line 609
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->I:Ljava/lang/String;

    move-object/from16 p1, p36

    .line 610
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->J:Ljava/util/List;

    move-object/from16 p1, p37

    .line 611
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->K:Ljava/lang/Boolean;

    move-object/from16 p1, p38

    .line 612
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->L:Ljava/util/List;

    move-object/from16 p1, p39

    .line 613
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->M:Lcom/vuitton/android/data/dto/config/CertificateConfigDto;

    move-object/from16 p1, p40

    .line 614
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->N:Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;

    move-object/from16 p1, p41

    .line 615
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->O:Ljava/lang/String;

    move-object/from16 p1, p42

    .line 616
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->P:Lcom/vuitton/android/data/dto/config/HelpConfigDto;

    move-object/from16 p1, p43

    .line 617
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Q:Lcom/vuitton/android/data/dto/config/ServicesConfigDto;

    move-object/from16 p1, p44

    .line 618
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->R:Ljava/lang/Boolean;

    move-object/from16 p1, p45

    .line 619
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->S:Ljava/lang/Boolean;

    move-object/from16 p1, p46

    .line 620
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->T:Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;

    move-object/from16 p1, p47

    .line 621
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->U:Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;

    move-object/from16 p1, p48

    .line 622
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->V:Ljava/lang/String;

    move-object/from16 p1, p49

    .line 623
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->W:Ljava/lang/String;

    move-object/from16 p1, p50

    .line 624
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->X:Ljava/lang/String;

    move-object/from16 p1, p51

    .line 625
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Y:Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;

    move-object/from16 p1, p52

    .line 626
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Z:Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;

    move-object/from16 p1, p53

    .line 627
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->a0:Ljava/lang/String;

    move-object/from16 p1, p54

    .line 628
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b0:Ljava/lang/String;

    move-object/from16 p1, p55

    .line 629
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->c0:Ljava/lang/String;

    move-object/from16 p1, p56

    .line 630
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->d0:Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;

    move-object/from16 p1, p57

    .line 631
    iput-object p1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->e0:Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;Lcom/vuitton/android/data/dto/config/FeedConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Lcom/vuitton/android/data/dto/config/CertificateConfigDto;Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/HelpConfigDto;Lcom/vuitton/android/data/dto/config/ServicesConfigDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 62

    move/from16 v0, p58

    move/from16 v1, p59

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object/from16 v6, p2

    :goto_0
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_1

    move-object v13, v3

    goto :goto_1

    :cond_1
    move-object/from16 v13, p9

    :goto_1
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_2

    move-object v14, v3

    goto :goto_2

    :cond_2
    move-object/from16 v14, p10

    :goto_2
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_3

    move-object/from16 v16, v3

    goto :goto_3

    :cond_3
    move-object/from16 v16, p12

    :goto_3
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_4

    move-object/from16 v17, v3

    goto :goto_4

    :cond_4
    move-object/from16 v17, p13

    :goto_4
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_5

    move-object/from16 v19, v3

    goto :goto_5

    :cond_5
    move-object/from16 v19, p15

    :goto_5
    const v2, 0x8000

    and-int v4, v0, v2

    if-eqz v4, :cond_6

    move-object/from16 v20, v3

    goto :goto_6

    :cond_6
    move-object/from16 v20, p16

    :goto_6
    const/high16 v4, 0x10000

    and-int v5, v0, v4

    if-eqz v5, :cond_7

    move-object/from16 v21, v3

    goto :goto_7

    :cond_7
    move-object/from16 v21, p17

    :goto_7
    const/high16 v5, 0x20000

    and-int v7, v0, v5

    if-eqz v7, :cond_8

    move-object/from16 v22, v3

    goto :goto_8

    :cond_8
    move-object/from16 v22, p18

    :goto_8
    const/high16 v7, 0x40000

    and-int v8, v0, v7

    if-eqz v8, :cond_9

    move-object/from16 v23, v3

    goto :goto_9

    :cond_9
    move-object/from16 v23, p19

    :goto_9
    const/high16 v8, 0x80000

    and-int v9, v0, v8

    if-eqz v9, :cond_a

    move-object/from16 v24, v3

    goto :goto_a

    :cond_a
    move-object/from16 v24, p20

    :goto_a
    const/high16 v9, 0x100000

    and-int v10, v0, v9

    if-eqz v10, :cond_b

    move-object/from16 v25, v3

    goto :goto_b

    :cond_b
    move-object/from16 v25, p21

    :goto_b
    const/high16 v10, 0x400000

    and-int v11, v0, v10

    if-eqz v11, :cond_c

    move-object/from16 v27, v3

    goto :goto_c

    :cond_c
    move-object/from16 v27, p23

    :goto_c
    const/high16 v11, 0x800000

    and-int v12, v0, v11

    if-eqz v12, :cond_d

    move-object/from16 v28, v3

    goto :goto_d

    :cond_d
    move-object/from16 v28, p24

    :goto_d
    const/high16 v12, 0x1000000

    and-int/2addr v12, v0

    if-eqz v12, :cond_e

    move-object/from16 v29, v3

    goto :goto_e

    :cond_e
    move-object/from16 v29, p25

    :goto_e
    const/high16 v12, 0x8000000

    and-int/2addr v12, v0

    if-eqz v12, :cond_f

    move-object/from16 v32, v3

    goto :goto_f

    :cond_f
    move-object/from16 v32, p28

    :goto_f
    const/high16 v12, 0x20000000

    and-int/2addr v12, v0

    if-eqz v12, :cond_10

    move-object/from16 v34, v3

    goto :goto_10

    :cond_10
    move-object/from16 v34, p30

    :goto_10
    const/high16 v12, 0x40000000    # 2.0f

    and-int/2addr v0, v12

    if-eqz v0, :cond_11

    move-object/from16 v35, v3

    goto :goto_11

    :cond_11
    move-object/from16 v35, p31

    :goto_11
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_12

    move-object/from16 v38, v3

    goto :goto_12

    :cond_12
    move-object/from16 v38, p34

    :goto_12
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_13

    move-object/from16 v39, v3

    goto :goto_13

    :cond_13
    move-object/from16 v39, p35

    :goto_13
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_14

    move-object/from16 v40, v3

    goto :goto_14

    :cond_14
    move-object/from16 v40, p36

    :goto_14
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_15

    move-object/from16 v41, v3

    goto :goto_15

    :cond_15
    move-object/from16 v41, p37

    :goto_15
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_16

    move-object/from16 v42, v3

    goto :goto_16

    :cond_16
    move-object/from16 v42, p38

    :goto_16
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_17

    move-object/from16 v44, v3

    goto :goto_17

    :cond_17
    move-object/from16 v44, p40

    :goto_17
    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_18

    move-object/from16 v45, v3

    goto :goto_18

    :cond_18
    move-object/from16 v45, p41

    :goto_18
    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_19

    move-object/from16 v46, v3

    goto :goto_19

    :cond_19
    move-object/from16 v46, p42

    :goto_19
    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_1a

    move-object/from16 v47, v3

    goto :goto_1a

    :cond_1a
    move-object/from16 v47, p43

    :goto_1a
    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_1b

    move-object/from16 v48, v3

    goto :goto_1b

    :cond_1b
    move-object/from16 v48, p44

    :goto_1b
    and-int/lit16 v0, v1, 0x1000

    if-eqz v0, :cond_1c

    move-object/from16 v49, v3

    goto :goto_1c

    :cond_1c
    move-object/from16 v49, p45

    :goto_1c
    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_1d

    move-object/from16 v51, v3

    goto :goto_1d

    :cond_1d
    move-object/from16 v51, p47

    :goto_1d
    and-int v0, v1, v2

    if-eqz v0, :cond_1e

    move-object/from16 v52, v3

    goto :goto_1e

    :cond_1e
    move-object/from16 v52, p48

    :goto_1e
    and-int v0, v1, v4

    if-eqz v0, :cond_1f

    move-object/from16 v53, v3

    goto :goto_1f

    :cond_1f
    move-object/from16 v53, p49

    :goto_1f
    and-int v0, v1, v5

    if-eqz v0, :cond_20

    move-object/from16 v54, v3

    goto :goto_20

    :cond_20
    move-object/from16 v54, p50

    :goto_20
    and-int v0, v1, v7

    if-eqz v0, :cond_21

    move-object/from16 v55, v3

    goto :goto_21

    :cond_21
    move-object/from16 v55, p51

    :goto_21
    and-int v0, v1, v8

    if-eqz v0, :cond_22

    move-object/from16 v56, v3

    goto :goto_22

    :cond_22
    move-object/from16 v56, p52

    :goto_22
    and-int v0, v1, v9

    if-eqz v0, :cond_23

    move-object/from16 v57, v3

    goto :goto_23

    :cond_23
    move-object/from16 v57, p53

    :goto_23
    const/high16 v0, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_24

    move-object/from16 v58, v3

    goto :goto_24

    :cond_24
    move-object/from16 v58, p54

    :goto_24
    and-int v0, v1, v10

    if-eqz v0, :cond_25

    move-object/from16 v59, v3

    goto :goto_25

    :cond_25
    move-object/from16 v59, p55

    :goto_25
    and-int v0, v1, v11

    if-eqz v0, :cond_26

    move-object/from16 v60, v3

    :goto_26
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v15, p11

    move-object/from16 v18, p14

    move-object/from16 v26, p22

    move-object/from16 v30, p26

    move-object/from16 v31, p27

    move-object/from16 v33, p29

    move-object/from16 v36, p32

    move-object/from16 v37, p33

    move-object/from16 v43, p39

    move-object/from16 v50, p46

    move-object/from16 v61, p57

    goto :goto_27

    :cond_26
    move-object/from16 v60, p56

    goto :goto_26

    .line 632
    :goto_27
    invoke-direct/range {v4 .. v61}, Lcom/vuitton/android/data/dto/config/AppConfigDto;-><init>(Ljava/util/List;Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;Lcom/vuitton/android/data/dto/config/FeedConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Lcom/vuitton/android/data/dto/config/CertificateConfigDto;Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/HelpConfigDto;Lcom/vuitton/android/data/dto/config/ServicesConfigDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b:Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b:Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->j:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->j:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->q:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->u:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->u:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->v:Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->v:Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->w:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->x:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->x:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->y:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->y:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->z:Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->z:Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->A:Lcom/vuitton/android/data/dto/config/FeedConfigDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->A:Lcom/vuitton/android/data/dto/config/FeedConfigDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->B:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->B:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->C:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->C:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->D:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->D:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->E:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->E:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->F:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->F:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->G:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->G:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->H:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->H:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->I:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->I:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->J:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->J:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->K:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->K:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->L:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->L:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->M:Lcom/vuitton/android/data/dto/config/CertificateConfigDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->M:Lcom/vuitton/android/data/dto/config/CertificateConfigDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->N:Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->N:Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->O:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->O:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->P:Lcom/vuitton/android/data/dto/config/HelpConfigDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->P:Lcom/vuitton/android/data/dto/config/HelpConfigDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Q:Lcom/vuitton/android/data/dto/config/ServicesConfigDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Q:Lcom/vuitton/android/data/dto/config/ServicesConfigDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->R:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->R:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->S:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->S:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->T:Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->T:Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v2

    :cond_2f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->U:Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->U:Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->V:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->V:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v2

    :cond_31
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->W:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->W:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->X:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->X:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    return v2

    :cond_33
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Y:Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Y:Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Z:Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Z:Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v2

    :cond_35
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->a0:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->a0:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v2

    :cond_36
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b0:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b0:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->c0:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->c0:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->d0:Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->d0:Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v2

    :cond_39
    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->e0:Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/config/AppConfigDto;->e0:Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    return v2

    :cond_3a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->a:Ljava/util/List;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b:Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->i:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->j:Ljava/util/List;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->k:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->l:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->m:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->n:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->o:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v0

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->p:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v0

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->q:Ljava/lang/String;

    if-nez v3, :cond_8

    move v3, v0

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->r:Ljava/lang/String;

    if-nez v3, :cond_9

    move v3, v0

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->s:Ljava/lang/String;

    if-nez v3, :cond_a

    move v3, v0

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->t:Ljava/lang/String;

    if-nez v3, :cond_b

    move v3, v0

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->u:Ljava/lang/Boolean;

    if-nez v3, :cond_c

    move v3, v0

    goto :goto_c

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->v:Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->w:Ljava/lang/String;

    if-nez v1, :cond_d

    move v1, v0

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_d
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->x:Ljava/lang/String;

    if-nez v1, :cond_e

    move v1, v0

    goto :goto_e

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->y:Ljava/lang/String;

    if-nez v1, :cond_f

    move v1, v0

    goto :goto_f

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->z:Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;

    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->hashCode()I

    move-result v1

    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->A:Lcom/vuitton/android/data/dto/config/FeedConfigDto;

    iget-object v3, v3, Lcom/vuitton/android/data/dto/config/FeedConfigDto;->a:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->B:Ljava/lang/String;

    if-nez v1, :cond_10

    move v1, v0

    goto :goto_10

    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_10
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->C:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->D:Ljava/lang/String;

    if-nez v3, :cond_11

    move v3, v0

    goto :goto_11

    :cond_11
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->E:Ljava/lang/String;

    if-nez v3, :cond_12

    move v3, v0

    goto :goto_12

    :cond_12
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->F:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->G:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->H:Ljava/lang/Boolean;

    if-nez v3, :cond_13

    move v3, v0

    goto :goto_13

    :cond_13
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_13
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->I:Ljava/lang/String;

    if-nez v3, :cond_14

    move v3, v0

    goto :goto_14

    :cond_14
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_14
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->J:Ljava/util/List;

    if-nez v3, :cond_15

    move v3, v0

    goto :goto_15

    :cond_15
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_15
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->K:Ljava/lang/Boolean;

    if-nez v3, :cond_16

    move v3, v0

    goto :goto_16

    :cond_16
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_16
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->L:Ljava/util/List;

    if-nez v3, :cond_17

    move v3, v0

    goto :goto_17

    :cond_17
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_17
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->M:Lcom/vuitton/android/data/dto/config/CertificateConfigDto;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/config/CertificateConfigDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->N:Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;

    if-nez v1, :cond_18

    move v1, v0

    goto :goto_18

    :cond_18
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->O:Ljava/lang/String;

    if-nez v1, :cond_19

    move v1, v0

    goto :goto_19

    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_19
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->P:Lcom/vuitton/android/data/dto/config/HelpConfigDto;

    if-nez v1, :cond_1a

    move v1, v0

    goto :goto_1a

    :cond_1a
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/config/HelpConfigDto;->hashCode()I

    move-result v1

    :goto_1a
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Q:Lcom/vuitton/android/data/dto/config/ServicesConfigDto;

    if-nez v1, :cond_1b

    move v1, v0

    goto :goto_1b

    :cond_1b
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/config/ServicesConfigDto;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->R:Ljava/lang/Boolean;

    if-nez v1, :cond_1c

    move v1, v0

    goto :goto_1c

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1c
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->S:Ljava/lang/Boolean;

    if-nez v1, :cond_1d

    move v1, v0

    goto :goto_1d

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->T:Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;

    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;->hashCode()I

    move-result v1

    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->U:Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;

    if-nez v3, :cond_1e

    move v3, v0

    goto :goto_1e

    :cond_1e
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;->hashCode()I

    move-result v3

    :goto_1e
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->V:Ljava/lang/String;

    if-nez v3, :cond_1f

    move v3, v0

    goto :goto_1f

    :cond_1f
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1f
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->W:Ljava/lang/String;

    if-nez v3, :cond_20

    move v3, v0

    goto :goto_20

    :cond_20
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_20
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->X:Ljava/lang/String;

    if-nez v3, :cond_21

    move v3, v0

    goto :goto_21

    :cond_21
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_21
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Y:Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;

    if-nez v3, :cond_22

    move v3, v0

    goto :goto_22

    :cond_22
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;->hashCode()I

    move-result v3

    :goto_22
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Z:Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;

    if-nez v3, :cond_23

    move v3, v0

    goto :goto_23

    :cond_23
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;->hashCode()I

    move-result v3

    :goto_23
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->a0:Ljava/lang/String;

    if-nez v3, :cond_24

    move v3, v0

    goto :goto_24

    :cond_24
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_24
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b0:Ljava/lang/String;

    if-nez v3, :cond_25

    move v3, v0

    goto :goto_25

    :cond_25
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_25
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->c0:Ljava/lang/String;

    if-nez v3, :cond_26

    move v3, v0

    goto :goto_26

    :cond_26
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->d0:Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;

    if-nez v3, :cond_27

    goto :goto_27

    :cond_27
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;->hashCode()I

    move-result v0

    :goto_27
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->e0:Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppConfigDto(abTestDtoList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aiCompanionConfigDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b:Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", legalPrivacyUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unformattedSalesforceApiUrl="

    const-string v2, ", bffBaseUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", atgApiUrl="

    const-string v2, ", accountCreationUrlLogin="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", accountCreationUrlRegistration="

    const-string v2, ", arModelReferenceApiUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->h:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", bestSellersSkuList="

    const-string v2, ", callForInquiry="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->j:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string v1, ", cartUrl="

    const-string v2, ", confirmationPageUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->l:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", contactFormUrl="

    const-string v2, ", consumerRightsUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->n:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", customerServicePhoneNumber="

    const-string v2, ", customerServiceSms="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->p:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", customerServiceEmail="

    const-string v2, ", customerServiceWhatsapp="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->r:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", customerServiceKakaoTalk="

    const-string v2, ", displayRepairs="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->t:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->u:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", distantRepairsConfigDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->v:Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unformattedFacadeSecureApiUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unformattedFacadeApiUrl="

    const-string v2, ", unformattedFacadeMyLVApiUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->x:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", featuresConfigDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->z:Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedConfigDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->A:Lcom/vuitton/android/data/dto/config/FeedConfigDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lvStoreLang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lvWebsiteUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productPageUrl="

    const-string v2, ", salesforceLang="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->C:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->D:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", shareAppUrl="

    const-string v2, ", storeLocatorUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->E:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->F:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showStoreStockGeolocationButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->H:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storeStockAvailabilityUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", urlCatchingList="

    const-string v2, ", useCountry="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->I:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->J:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->K:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", watchSkuList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->L:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", certificateConfigDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->M:Lcom/vuitton/android/data/dto/config/CertificateConfigDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nativeCartConfigDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->N:Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unformattedBackInStockUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", helpConfigDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->P:Lcom/vuitton/android/data/dto/config/HelpConfigDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", servicesConfigDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Q:Lcom/vuitton/android/data/dto/config/ServicesConfigDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEcommerce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->R:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEcommerceWebOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->S:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayVatIncludedLabelDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->T:Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", powerFrontConfigDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->U:Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", waitingRoomAssetUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emailUsUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", personalDataEmail="

    const-string v2, ", virtualStudioConfigDto="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->W:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->X:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Y:Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", personalSelectionsConfigDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Z:Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", googleCheckoutRedirectUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lineCheckoutRedirectUrl="

    const-string v2, ", kakaoCheckoutRedirectUrl="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->a0:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b0:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->c0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressAutocompleteConfigDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->d0:Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", personalisationConfigDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->e0:Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
