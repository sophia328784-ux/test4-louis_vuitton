.class public final synthetic Lzu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lzu0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget p0, p0, Lzu0;->b:I

    const-string v0, "com.vuitton.android.presentation.screen.options.settings.SettingsRoutes.EditConsents"

    const-string v1, "com.vuitton.android.presentation.screen.options.settings.SettingsRoutes.EditProfile"

    const-string v2, "com.vuitton.android.presentation.screen.options.settings.SettingsRoutes.EditSettings"

    const-string v3, "com.vuitton.android.presentation.screen.options.settings.SettingsRoutes.Home"

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;->Companion:Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDropDownDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDropDownDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;->Companion:Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/product/sizeguide/MediaCategoryDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/sizeguide/MediaCategoryDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;->Companion:Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideRowDto;->Companion:Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideRowDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDropDownDto;->Companion:Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDropDownDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideRowDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideRowDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/vuitton/android/data/dto/booking/SingleTextLayoutDto;->values()[Lcom/vuitton/android/data/dto/booking/SingleTextLayoutDto;

    move-result-object p0

    const-string v0, "small"

    const-string v1, "large"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v4, v4}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.booking.SingleTextLayoutDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SignupProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/SignupProperties$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SecondaryIdentifier$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/SecondaryIdentifier$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/vuitton/android/data/dto/account/orders/ShippingTypeDto;->values()[Lcom/vuitton/android/data/dto/account/orders/ShippingTypeDto;

    move-result-object p0

    const-string v0, "clickAndCollect"

    const-string v1, "standard"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v4, v4}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.account.orders.ShippingTypeDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/account/orders/ItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/orders/ItemDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/ShippingTypeDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/ShippingTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/account/orders/ShippingTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object p0, Landroidx/navigation3/scene/SharedEntryInSceneNavEntryDecoratorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    return-object v4

    :pswitch_a
    sget-object p0, Landroidx/compose/material3/ShapesKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance v0, Landroidx/compose/material3/Shapes;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/Shapes;-><init>(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :pswitch_b
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/ShapeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LV shapes provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_c
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local ShadeFinderTracker provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/data/dto/product/vto/ShadeFinderResponseDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/ShadeFinderResponseDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/product/vto/RecommendationDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/vto/RecommendationDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/vuitton/android/data/dto/product/vto/ShadeFinderRequestDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/ShadeFinderRequestDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_f
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$Home;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$Home;

    new-array v1, v5, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v3, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_10
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditSettings;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditSettings;

    new-array v1, v5, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_11
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditProfile;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditProfile;

    new-array v2, v5, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v1, v0, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_12
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditConsents;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditConsents;

    new-array v2, v5, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v0, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes;->Companion:Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$Companion;

    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    sget-object p0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v4, Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes;

    invoke-virtual {p0, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const-class v4, Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditConsents;

    invoke-virtual {p0, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const-class v7, Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditProfile;

    invoke-virtual {p0, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const-class v9, Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditSettings;

    invoke-virtual {p0, v9}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const-class v10, Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$Home;

    invoke-virtual {p0, v10}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    const/4 v10, 0x4

    move-object v11, v9

    new-array v9, v10, [Lkotlin/reflect/KClass;

    aput-object v4, v9, v5

    const/4 v4, 0x1

    aput-object v7, v9, v4

    const/4 v7, 0x2

    aput-object v11, v9, v7

    const/4 v11, 0x3

    aput-object p0, v9, v11

    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v12, Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditConsents;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditConsents;

    new-array v13, v5, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v0, v12, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v12, Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditProfile;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditProfile;

    new-array v13, v5, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, v12, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v12, Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditSettings;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$EditSettings;

    new-array v13, v5, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v2, v12, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v2, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v12, Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$Home;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/settings/SettingsRoutes$Home;

    new-array v13, v5, [Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v3, v12, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-array v10, v10, [Lkotlinx/serialization/KSerializer;

    aput-object p0, v10, v5

    aput-object v0, v10, v4

    aput-object v1, v10, v7

    aput-object v2, v10, v11

    new-array v11, v5, [Ljava/lang/annotation/Annotation;

    const-string v7, "com.vuitton.android.presentation.screen.options.settings.SettingsRoutes"

    invoke-direct/range {v6 .. v11}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v6

    :pswitch_14
    sget-object p0, Lcom/google/firebase/sessions/SessionData;->Companion:Lcom/google/firebase/sessions/SessionData$Companion;

    new-instance p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    sget-object v1, Lcom/google/firebase/sessions/ProcessData$$serializer;->a:Lcom/google/firebase/sessions/ProcessData$$serializer;

    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_15
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/navigation/ServiceRoute;->INSTANCE:Lcom/vuitton/android/presentation/screen/main/navigation/ServiceRoute;

    new-array v1, v5, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.main.navigation.ServiceRoute"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_16
    sget-object p0, Lcoil3/util/ServiceLoaderComponentRegistry;->a:Lkotlin/Lazy;

    const-class p0, Lcoil3/util/DecoderServiceLoaderTarget;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->b(Ljava/util/Iterator;)Lkotlin/sequences/ConstrainedOnceSequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->x(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcoil3/util/Collections_jvmCommonKt;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_17
    sget-object p0, Lcoil3/util/ServiceLoaderComponentRegistry;->a:Lkotlin/Lazy;

    const-class p0, Lcoil3/util/FetcherServiceLoaderTarget;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->b(Ljava/util/Iterator;)Lkotlin/sequences/ConstrainedOnceSequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->x(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcoil3/util/Collections_jvmCommonKt;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchResponse;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchResponse$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchResponse;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchResponse$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchChoice$Companion;

    invoke-virtual {v0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchChoice$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/FacetSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/FacetSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->Companion:Lcom/vuitton/android/data/dto/pdp/SellableStatusDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;->Companion:Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

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
