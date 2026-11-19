.class Lcom/sightcall/universal/api/Apis$5;
.super Lcom/sightcall/universal/util/Lazy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/api/Apis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/util/Lazy<",
        "Lcom/squareup/moshi/Moshi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/util/Lazy;-><init>()V

    return-void
.end method


# virtual methods
.method public init()Lcom/squareup/moshi/Moshi;
    .locals 3

    new-instance p0, Lcom/squareup/moshi/Moshi$Builder;

    invoke-direct {p0}, Lcom/squareup/moshi/Moshi$Builder;-><init>()V

    sget-object v0, Lcom/sightcall/universal/api/Transient;->ADAPTER_FACTORY:Lcom/squareup/moshi/JsonAdapter$Factory;

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/Moshi$Builder;->b(Lcom/squareup/moshi/JsonAdapter$Factory;)V

    sget-object v0, Lcom/sightcall/universal/api/FallbackOnNull;->ADAPTER_FACTORY:Lcom/squareup/moshi/JsonAdapter$Factory;

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/Moshi$Builder;->b(Lcom/squareup/moshi/JsonAdapter$Factory;)V

    sget-object v0, Lcom/sightcall/universal/api/FallbackEnumField;->ADAPTER_FACTORY:Lcom/squareup/moshi/JsonAdapter$Factory;

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/Moshi$Builder;->b(Lcom/squareup/moshi/JsonAdapter$Factory;)V

    sget-object v0, Lcom/sightcall/universal/api/FallbackEnum;->ADAPTER_FACTORY:Lcom/squareup/moshi/JsonAdapter$Factory;

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/Moshi$Builder;->b(Lcom/squareup/moshi/JsonAdapter$Factory;)V

    new-instance v0, Lcom/squareup/moshi/adapters/Rfc3339DateJsonAdapter;

    invoke-direct {v0}, Lcom/squareup/moshi/adapters/Rfc3339DateJsonAdapter;-><init>()V

    invoke-virtual {v0}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/Moshi$Builder;->c(Lcom/squareup/moshi/JsonAdapter;)V

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$MultipleFormatsMultipartyAdapter;

    invoke-direct {v0}, Lcom/sightcall/universal/agent/Usecase$MultipleFormatsMultipartyAdapter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/Moshi$Builder;->a(Lcom/sightcall/universal/agent/Usecase$MultipleFormatsMultipartyAdapter;)V

    const-class v0, Lcom/sightcall/universal/api/JsonApi$Included;

    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->of(Ljava/lang/Class;Ljava/lang/String;)Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/agent/Usecase;

    const-string v2, "usecases"

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->withSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/agent/Consent;

    const-string v2, "agent-consents"

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->withSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/agent/ProviderCustomization;

    const-string v2, "provider-customizations"

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->withSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/agent/ArOverlayModel;

    const-string v2, "ar-overlay-models"

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->withSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/agent/IntegrationScope;

    const-string v2, "integrations"

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->withSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/agent/Provider;

    const-string v2, "providers"

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->withSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/agent/Product;

    const-string v2, "products"

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->withSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/agent/Language;

    const-string v2, "languages"

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->withSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/agent/Location;

    const-string v2, "locations"

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->withSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/agent/Pincode;

    const-string v2, "pincodes"

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->withSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/api/JsonApi$Included;->UNKNOWN:Lcom/sightcall/universal/api/JsonApi$Included;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;->withDefaultValue(Ljava/lang/Object;)Lcom/sightcall/universal/api/PolymorphicJsonAdapterFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/Moshi$Builder;->b(Lcom/squareup/moshi/JsonAdapter$Factory;)V

    const-class v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$Item;

    invoke-static {v0}, Lcom/sightcall/universal/api/JsonAdapterFactory;->of(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserConnected;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/api/JsonAdapterFactory;->withSubtype(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserJoined;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/api/JsonAdapterFactory;->withSubtype(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/api/JsonAdapterFactory;->withSubtype(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/api/JsonAdapterFactory;->withSubtype(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentAccepted;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/api/JsonAdapterFactory;->withSubtype(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ConsentDeclined;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/api/JsonAdapterFactory;->withSubtype(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$DisplayNameSet;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/api/JsonAdapterFactory;->withSubtype(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ChatMessageSent;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/api/JsonAdapterFactory;->withSubtype(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$ChatMessageReceived;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/api/JsonAdapterFactory;->withSubtype(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$HostConnected;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/api/JsonAdapterFactory;->withSubtype(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/api/JsonAdapterFactory;->withSubtype(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$GpsReceived;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/api/JsonAdapterFactory;->withSubtype(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$BaseItem;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/api/JsonAdapterFactory;->withSubtype(Ljava/lang/Class;)Lcom/sightcall/universal/api/JsonAdapterFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/Moshi$Builder;->b(Lcom/squareup/moshi/JsonAdapter$Factory;)V

    new-instance v0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterFactory;

    invoke-direct {v0}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterFactory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/Moshi$Builder;->b(Lcom/squareup/moshi/JsonAdapter$Factory;)V

    new-instance v0, Lcom/squareup/moshi/Moshi;

    invoke-direct {v0, p0}, Lcom/squareup/moshi/Moshi;-><init>(Lcom/squareup/moshi/Moshi$Builder;)V

    return-object v0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 0

    .line 243
    invoke-virtual {p0}, Lcom/sightcall/universal/api/Apis$5;->init()Lcom/squareup/moshi/Moshi;

    move-result-object p0

    return-object p0
.end method
