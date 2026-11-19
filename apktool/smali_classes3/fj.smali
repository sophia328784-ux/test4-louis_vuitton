.class public final synthetic Lfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lfj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget p0, p0, Lfj;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDataDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondStoneDto$$serializer;->a:Lcom/vuitton/android/data/dto/certificate/CertificateDiamondStoneDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDataDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDataDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;->values()[Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;

    move-result-object p0

    const-string v0, "text"

    const-string v2, "image"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.account.orders.CategoryTypeDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;->Companion:Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/catalog/SubcategoryGroupsDto$$serializer;->a:Lcom/vuitton/android/data/dto/catalog/SubcategoryGroupsDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;->Companion:Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/catalog/PLPEntryDto$$serializer;->a:Lcom/vuitton/android/data/dto/catalog/PLPEntryDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;->Companion:Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/catalog/PLPEntryDto$$serializer;->a:Lcom/vuitton/android/data/dto/catalog/PLPEntryDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local CatalogTracker provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_9
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Category;->INSTANCE:Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Category;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.catalog.components.CatalogRoutes.Category"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->Companion:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->Companion:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute$Companion;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;->values()[Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.vuitton.android.presentation.screen.storemode.models.StoreModeLaunchMode"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_c
    sget-object p0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->Companion:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute$Companion;

    sget-object p0, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->Companion:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/vuitton/android/data/dto/catalog/CatalogDto;->Companion:Lcom/vuitton/android/data/dto/catalog/CatalogDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/catalog/SectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/catalog/SectionDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_f
    invoke-static {}, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->values()[Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.vuitton.android.presentation.screen.main.navigation.CatalogDeepLinkType"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_10
    sget-object p0, Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;->Companion:Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_11
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/main/navigation/CartRoute;->INSTANCE:Lcom/vuitton/android/presentation/screen/main/navigation/CartRoute;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.main.navigation.CartRoute"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/data/dto/cart/bff/CartResponseMultipleDto;->Companion:Lcom/vuitton/android/data/dto/cart/bff/CartResponseMultipleDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/cart/common/CartErrorDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/common/CartErrorDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->Companion:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/TaxInfoDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/TaxInfoDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->Companion:Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/CartItem;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/CartItem$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/vuitton/android/data/dto/cart/common/CartErrorsDto;->Companion:Lcom/vuitton/android/data/dto/cart/common/CartErrorsDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/cart/common/CartErrorDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/common/CartErrorDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/vuitton/android/data/dto/cart/common/CartErrorDto;->Companion:Lcom/vuitton/android/data/dto/cart/common/CartErrorDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;->Companion:Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-static {}, Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;->values()[Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    move-result-object p0

    const-string v0, "maxQuantityPersonalizationError"

    const-string v2, "outOfStockError"

    const-string v3, "maxQuantityError"

    const-string v4, "maxQuantityBySkuError"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v1, v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.cart.common.CartErrorCodeDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->Companion:Lcom/vuitton/android/data/dto/cart/bff/CartDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->Companion:Lcom/vuitton/android/data/dto/careservices/CareServicesDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->Companion:Lcom/vuitton/android/data/dto/repair/RepairStatusDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/repair/RepairStatusDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->Companion:Lcom/vuitton/android/data/dto/careservices/CareServicesDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;->Companion:Lcom/vuitton/android/data/dto/repair/RepairTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/repair/RepairTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
