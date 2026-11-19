.class public final Lcom/vuitton/foundation/model/domain/model/config/AppConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00a9\u0004\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u001a\u001a\u00020\u0007\u0012\u0006\u0010\u001b\u001a\u00020\u0007\u0012\u0006\u0010\u001c\u001a\u00020\u0007\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010#\u001a\u00020\u0007\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0002\u0012\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0002\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0008\u0010.\u001a\u0004\u0018\u00010-\u0012\u0008\u0010/\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u00100\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u00101\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u00102\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u00103\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u00104\u001a\u00020\u0007\u0012\u0006\u00105\u001a\u00020!\u0012\u0006\u00107\u001a\u000206\u0012\u0008\u00109\u001a\u0004\u0018\u000108\u0012\u0008\u0010:\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010<\u001a\u0004\u0018\u00010;\u0012\u0008\u0010>\u001a\u0004\u0018\u00010=\u0012\u0008\u0010@\u001a\u0004\u0018\u00010?\u0012\u0006\u0010A\u001a\u00020!\u0012\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020B0\u0002\u0012\u0006\u0010D\u001a\u00020!\u0012\u0006\u0010E\u001a\u00020!\u0012\u0006\u0010G\u001a\u00020F\u0012\u0008\u0010I\u001a\u0004\u0018\u00010H\u0012\u0008\u0010J\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010L\u001a\u00020K\u0012\u0006\u0010N\u001a\u00020M\u00a2\u0006\u0004\u0008O\u0010P\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/config/AppConfig;",
        "",
        "",
        "Lcom/vuitton/foundation/model/domain/model/config/AbTest;",
        "abTestList",
        "Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;",
        "featuresConfig",
        "",
        "contactFormUrl",
        "legalPrivacyUrl",
        "lvWebsiteUrl",
        "shareAppUrl",
        "storeLocatorUrl",
        "accountCreationUrlLogin",
        "accountCreationUrlRegistration",
        "Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;",
        "aiCompanionConfig",
        "cartUrl",
        "confirmationPageUrl",
        "consumerRightsUrl",
        "productPageUrl",
        "storeStockAvailabilityUrl",
        "emailUsUrl",
        "googleCheckoutRedirectUrl",
        "lineCheckoutRedirectUrl",
        "kakaoCheckoutRedirectUrl",
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
        "Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;",
        "nativeCart",
        "Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;",
        "myCertificates",
        "Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;",
        "feedConfig",
        "Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;",
        "help",
        "customerServicePhoneNumber",
        "customerServiceSms",
        "customerServiceEmail",
        "customerServiceWhatsapp",
        "customerServiceKakaoTalk",
        "callForInquiry",
        "displayRepairs",
        "Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;",
        "distantRepairsConfig",
        "Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;",
        "services",
        "waitingRoomAssetUrl",
        "Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;",
        "virtualStudioConfig",
        "Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;",
        "personalSelectionsConfig",
        "Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;",
        "personalisationConfig",
        "showStoreStockGeolocationButton",
        "Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;",
        "urlCatchingList",
        "isEcommerce",
        "isEcommerceWebOnly",
        "Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;",
        "displayVatIncludedLabel",
        "Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;",
        "powerFrontConfig",
        "personalDataEmail",
        "Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;",
        "addressAutocompleteConfig",
        "",
        "configRevision",
        "<init>",
        "(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;ZLjava/util/List;ZZLcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;J)V",
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


# instance fields
.field public final A:Z

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public final D:Ljava/util/List;

.field public final E:Ljava/util/List;

.field public final F:Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;

.field public final G:Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;

.field public final H:Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;

.field public final I:Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;

.field public final J:Ljava/lang/String;

.field public final K:Ljava/lang/String;

.field public final L:Ljava/lang/String;

.field public final M:Ljava/lang/String;

.field public final N:Ljava/lang/String;

.field public final O:Ljava/lang/String;

.field public final P:Z

.field public final Q:Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

.field public final R:Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;

.field public final S:Ljava/lang/String;

.field public final T:Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;

.field public final U:Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;

.field public final V:Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;

.field public final W:Z

.field public final X:Ljava/util/List;

.field public final Y:Z

.field public final Z:Z

.field public final a:Ljava/util/List;

.field public final a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

.field public final b:Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;

.field public final b0:Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;

.field public final c:Ljava/lang/String;

.field public final c0:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final d0:Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;

.field public final e:Ljava/lang/String;

.field public final e0:J

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;

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

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;ZLjava/util/List;ZZLcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/foundation/model/domain/model/config/AbTest;",
            ">;",
            "Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;",
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
            "Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;",
            "Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;",
            "Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;",
            "Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;",
            "Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;",
            "Ljava/lang/String;",
            "Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;",
            "Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;",
            "Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;",
            "Z",
            "Ljava/util/List<",
            "Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;",
            ">;ZZ",
            "Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;",
            "Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;",
            "Ljava/lang/String;",
            "Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;",
            "J)V"
        }
    .end annotation

    move-object/from16 v0, p20

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    move-object/from16 v3, p28

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p7, v0, v1, v2, v3}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p30 .. p30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p31 .. p31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p33 .. p33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p34 .. p34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p41 .. p41}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p43 .. p43}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p50 .. p50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p53 .. p53}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p56 .. p56}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->b:Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->j:Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;

    iput-object p11, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->k:Ljava/lang/String;

    move-object/from16 p1, p12

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->l:Ljava/lang/String;

    move-object/from16 p1, p13

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->m:Ljava/lang/String;

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->n:Ljava/lang/String;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->p:Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->q:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->r:Ljava/lang/String;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->u:Ljava/lang/String;

    iput-object v2, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->v:Ljava/lang/String;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->w:Ljava/lang/String;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->x:Ljava/lang/String;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->y:Ljava/lang/String;

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->z:Ljava/lang/String;

    move/from16 p1, p27

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->A:Z

    iput-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->B:Ljava/lang/String;

    move-object/from16 p1, p29

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->C:Ljava/lang/String;

    move-object/from16 p1, p30

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->D:Ljava/util/List;

    move-object/from16 p1, p31

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->E:Ljava/util/List;

    move-object/from16 p1, p32

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->F:Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;

    move-object/from16 p1, p33

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->G:Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;

    move-object/from16 p1, p34

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->H:Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;

    move-object/from16 p1, p35

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->I:Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;

    move-object/from16 p1, p36

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->J:Ljava/lang/String;

    move-object/from16 p1, p37

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->K:Ljava/lang/String;

    move-object/from16 p1, p38

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->L:Ljava/lang/String;

    move-object/from16 p1, p39

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->M:Ljava/lang/String;

    move-object/from16 p1, p40

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->N:Ljava/lang/String;

    move-object/from16 p1, p41

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->O:Ljava/lang/String;

    move/from16 p1, p42

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->P:Z

    move-object/from16 p1, p43

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Q:Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    move-object/from16 p1, p44

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->R:Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;

    move-object/from16 p1, p45

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->S:Ljava/lang/String;

    move-object/from16 p1, p46

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->T:Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;

    move-object/from16 p1, p47

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->U:Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;

    move-object/from16 p1, p48

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->V:Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;

    move/from16 p1, p49

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->W:Z

    move-object/from16 p1, p50

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->X:Ljava/util/List;

    move/from16 p1, p51

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Y:Z

    move/from16 p1, p52

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Z:Z

    move-object/from16 p1, p53

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    move-object/from16 p1, p54

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->b0:Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;

    move-object/from16 p1, p55

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->c0:Ljava/lang/String;

    move-object/from16 p1, p56

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->d0:Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;

    move-wide/from16 p1, p57

    iput-wide p1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e0:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;ZLjava/util/List;ZZLcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 63

    const/high16 v0, 0x800000

    and-int v0, p60, v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v60, v0

    :goto_0
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    move-object/from16 v21, p17

    move-object/from16 v22, p18

    move-object/from16 v23, p19

    move-object/from16 v24, p20

    move-object/from16 v25, p21

    move-object/from16 v26, p22

    move-object/from16 v27, p23

    move-object/from16 v28, p24

    move-object/from16 v29, p25

    move-object/from16 v30, p26

    move/from16 v31, p27

    move-object/from16 v32, p28

    move-object/from16 v33, p29

    move-object/from16 v34, p30

    move-object/from16 v35, p31

    move-object/from16 v36, p32

    move-object/from16 v37, p33

    move-object/from16 v38, p34

    move-object/from16 v39, p35

    move-object/from16 v40, p36

    move-object/from16 v41, p37

    move-object/from16 v42, p38

    move-object/from16 v43, p39

    move-object/from16 v44, p40

    move-object/from16 v45, p41

    move/from16 v46, p42

    move-object/from16 v47, p43

    move-object/from16 v48, p44

    move-object/from16 v49, p45

    move-object/from16 v50, p46

    move-object/from16 v51, p47

    move-object/from16 v52, p48

    move/from16 v53, p49

    move-object/from16 v54, p50

    move/from16 v55, p51

    move/from16 v56, p52

    move-object/from16 v57, p53

    move-object/from16 v58, p54

    move-object/from16 v59, p55

    move-wide/from16 v61, p57

    goto :goto_1

    :cond_0
    move-object/from16 v60, p56

    goto :goto_0

    .line 256
    :goto_1
    invoke-direct/range {v4 .. v62}, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;-><init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;ZLjava/util/List;ZZLcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;J)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->b:Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->b:Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->j:Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->j:Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->q:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->u:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->w:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->x:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->x:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->y:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->y:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->z:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->z:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->A:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->A:Z

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->B:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->B:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->C:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->C:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->D:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->D:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->E:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->E:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->F:Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->F:Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->G:Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->G:Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->H:Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->H:Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->I:Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->I:Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->J:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->J:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->K:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->K:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->L:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->L:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->M:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->M:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->N:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->N:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->O:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->O:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->P:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->P:Z

    if-eq v1, v3, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Q:Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Q:Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->R:Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->R:Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->S:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->S:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->T:Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->T:Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v2

    :cond_2f
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->U:Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->U:Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->V:Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->V:Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v2

    :cond_31
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->W:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->W:Z

    if-eq v1, v3, :cond_32

    return v2

    :cond_32
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->X:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->X:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    return v2

    :cond_33
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Y:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Y:Z

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Z:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Z:Z

    if-eq v1, v3, :cond_35

    return v2

    :cond_35
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v2

    :cond_36
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->b0:Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->b0:Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->c0:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->c0:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->d0:Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->d0:Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v2

    :cond_39
    iget-wide v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e0:J

    iget-wide p0, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e0:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_3a

    return v2

    :cond_3a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a:Ljava/util/List;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->b:Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->c:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->h:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->i:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->j:Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->k:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->l:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->m:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v0

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->n:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v0

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->o:Ljava/lang/String;

    if-nez v3, :cond_8

    move v3, v0

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->p:Ljava/lang/String;

    if-nez v3, :cond_9

    move v3, v0

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->q:Ljava/lang/String;

    if-nez v3, :cond_a

    move v3, v0

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->r:Ljava/lang/String;

    if-nez v3, :cond_b

    move v3, v0

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->s:Ljava/lang/String;

    if-nez v3, :cond_c

    move v3, v0

    goto :goto_c

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->t:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->u:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->v:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->w:Ljava/lang/String;

    if-nez v3, :cond_d

    move v3, v0

    goto :goto_d

    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->x:Ljava/lang/String;

    if-nez v3, :cond_e

    move v3, v0

    goto :goto_e

    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_e
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->y:Ljava/lang/String;

    if-nez v3, :cond_f

    move v3, v0

    goto :goto_f

    :cond_f
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->z:Ljava/lang/String;

    if-nez v3, :cond_10

    move v3, v0

    goto :goto_10

    :cond_10
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->A:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->B:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->C:Ljava/lang/String;

    if-nez v3, :cond_11

    move v3, v0

    goto :goto_11

    :cond_11
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->D:Ljava/util/List;

    invoke-static {v1, v2, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->E:Ljava/util/List;

    invoke-static {v1, v2, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->F:Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;

    if-nez v3, :cond_12

    move v3, v0

    goto :goto_12

    :cond_12
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->G:Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->H:Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;->a:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->I:Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;

    if-nez v3, :cond_13

    move v3, v0

    goto :goto_13

    :cond_13
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;->hashCode()I

    move-result v3

    :goto_13
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->J:Ljava/lang/String;

    if-nez v3, :cond_14

    move v3, v0

    goto :goto_14

    :cond_14
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_14
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->K:Ljava/lang/String;

    if-nez v3, :cond_15

    move v3, v0

    goto :goto_15

    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_15
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->L:Ljava/lang/String;

    if-nez v3, :cond_16

    move v3, v0

    goto :goto_16

    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_16
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->M:Ljava/lang/String;

    if-nez v3, :cond_17

    move v3, v0

    goto :goto_17

    :cond_17
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_17
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->N:Ljava/lang/String;

    if-nez v3, :cond_18

    move v3, v0

    goto :goto_18

    :cond_18
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_18
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->O:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->P:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Q:Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->R:Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;

    if-nez v1, :cond_19

    move v1, v0

    goto :goto_19

    :cond_19
    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;->hashCode()I

    move-result v1

    :goto_19
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->S:Ljava/lang/String;

    if-nez v1, :cond_1a

    move v1, v0

    goto :goto_1a

    :cond_1a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1a
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->T:Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;

    if-nez v1, :cond_1b

    move v1, v0

    goto :goto_1b

    :cond_1b
    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->U:Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;

    if-nez v1, :cond_1c

    move v1, v0

    goto :goto_1c

    :cond_1c
    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;->hashCode()I

    move-result v1

    :goto_1c
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->V:Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;

    if-nez v1, :cond_1d

    move v1, v0

    goto :goto_1d

    :cond_1d
    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->W:Z

    invoke-static {v3, v2, v1}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->X:Ljava/util/List;

    invoke-static {v1, v2, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Y:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Z:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->b0:Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;

    if-nez v1, :cond_1e

    move v1, v0

    goto :goto_1e

    :cond_1e
    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;->hashCode()I

    move-result v1

    :goto_1e
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->c0:Ljava/lang/String;

    if-nez v1, :cond_1f

    goto :goto_1f

    :cond_1f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1f
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->d0:Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;

    iget-boolean v0, v0, Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;->a:Z

    invoke-static {v3, v2, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-wide v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e0:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppConfig(abTestList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", featuresConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->b:Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contactFormUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", legalPrivacyUrl="

    const-string v2, ", lvWebsiteUrl="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", shareAppUrl="

    const-string v2, ", storeLocatorUrl="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", accountCreationUrlLogin="

    const-string v2, ", accountCreationUrlRegistration="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->h:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", aiCompanionConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->j:Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cartUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", confirmationPageUrl="

    const-string v2, ", consumerRightsUrl="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->l:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", productPageUrl="

    const-string v2, ", storeStockAvailabilityUrl="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->n:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", emailUsUrl="

    const-string v2, ", googleCheckoutRedirectUrl="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->p:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", lineCheckoutRedirectUrl="

    const-string v2, ", kakaoCheckoutRedirectUrl="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->r:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", bffBaseUrl="

    const-string v2, ", atgApiUrl="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->t:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", salesforceApiUrl="

    const-string v2, ", arModelReferenceApiUrl="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->v:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", facadeSecureApiUrl="

    const-string v2, ", facadeApiUrl="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->x:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", facadeMyLVApiUrl="

    const-string v2, ", useCountry="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->y:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->z:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", lvStoreLang="

    const-string v2, ", salesforceLang="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->B:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->A:Z

    invoke-static {v1, v3, v2, v0, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v1, ", bestSellersSkuList="

    const-string v2, ", watchSkuList="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->C:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->D:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->E:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nativeCart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->F:Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", myCertificates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->G:Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->H:Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", help="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->I:Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customerServicePhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customerServiceSms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customerServiceEmail="

    const-string v2, ", customerServiceWhatsapp="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->K:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->L:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", customerServiceKakaoTalk="

    const-string v2, ", callForInquiry="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->M:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->N:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", displayRepairs="

    const-string v2, ", distantRepairsConfig="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->O:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->P:Z

    invoke-static {v3, v1, v2, v0, v4}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Q:Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->R:Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", waitingRoomAssetUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", virtualStudioConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->T:Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", personalSelectionsConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->U:Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", personalisationConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->V:Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showStoreStockGeolocationButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->W:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", urlCatchingList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->X:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEcommerce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEcommerceWebOnly="

    const-string v2, ", displayVatIncludedLabel="

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Y:Z

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Z:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", powerFrontConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->b0:Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", personalDataEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->c0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressAutocompleteConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->d0:Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configRevision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-wide v2, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e0:J

    invoke-static {v2, v3, v1, v0}, Lo60;->j(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
