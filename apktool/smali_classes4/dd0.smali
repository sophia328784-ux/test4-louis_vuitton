.class public final synthetic Ldd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ldd0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v0, v0, Ldd0;->b:I

    const/4 v1, 0x0

    const-string v2, "com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute.EditBranchId"

    const-string v3, "com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute.EditMyInfo"

    const-string v4, "com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute.EditPassword"

    const-string v5, "com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute.EditTaxId"

    const-string v6, "com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute.MyInfo"

    const-string v7, "com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterRoutes.Register"

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcoil3/network/CacheStrategy;->a:Lcoil3/network/internal/DefaultCacheStrategy;

    return-object v0

    :pswitch_0
    sget-object v0, Lcoil3/network/ConcurrentRequestStrategy;->a:Lcoil3/network/ConcurrentRequestStrategy;

    return-object v0

    :pswitch_1
    sget-object v0, Lcoil3/network/CacheStrategy;->a:Lcoil3/network/internal/DefaultCacheStrategy;

    return-object v0

    :pswitch_2
    sget-object v0, Lcoil3/network/ConcurrentRequestStrategy;->a:Lcoil3/network/ConcurrentRequestStrategy;

    return-object v0

    :pswitch_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    new-instance v0, Landroidx/lifecycle/SavedStateViewModelFactory;

    invoke-direct {v0}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>()V

    return-object v0

    :pswitch_8
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$Register;->INSTANCE:Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$Register;

    new-array v2, v10, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v7, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_9
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes;->Companion:Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$Companion;

    new-instance v1, Lkotlinx/serialization/SealedClassSerializer;

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v2, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes;

    invoke-virtual {v0, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-class v2, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$JusoSearch;

    invoke-virtual {v0, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-class v4, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$Register;

    invoke-virtual {v0, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v4, v9, [Lkotlin/reflect/KClass;

    aput-object v2, v4, v10

    aput-object v0, v4, v8

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$Register;->INSTANCE:Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$Register;

    new-array v5, v10, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v7, v2, v5}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-array v5, v9, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$JusoSearch$$serializer;->a:Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$JusoSearch$$serializer;

    aput-object v2, v5, v10

    aput-object v0, v5, v8

    new-array v6, v10, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterRoutes"

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v1

    :pswitch_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$PerfumeSamples;->INSTANCE:Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$PerfumeSamples;

    new-array v2, v10, [Ljava/lang/annotation/Annotation;

    const-string v3, "com.vuitton.android.presentation.screen.cart.NativeCartRoute.PerfumeSamples"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_c
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$Packaging;->INSTANCE:Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$Packaging;

    new-array v2, v10, [Ljava/lang/annotation/Annotation;

    const-string v3, "com.vuitton.android.presentation.screen.cart.NativeCartRoute.Packaging"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_d
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$Cart;->INSTANCE:Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$Cart;

    new-array v2, v10, [Ljava/lang/annotation/Annotation;

    const-string v3, "com.vuitton.android.presentation.screen.cart.NativeCartRoute.Cart"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/main/navigation/MyLvRoute;->INSTANCE:Lcom/vuitton/android/presentation/screen/main/navigation/MyLvRoute;

    new-array v2, v10, [Ljava/lang/annotation/Annotation;

    const-string v3, "com.vuitton.android.presentation.screen.main.navigation.MyLvRoute"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$Forest;

    const-string v1, "Recomposition"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->g(Ljava/lang/String;)V

    const-string v1, "onScreenshotDetected...  "

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$MyInfo;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$MyInfo;

    new-array v2, v10, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v6, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_13
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditTaxId;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditTaxId;

    new-array v2, v10, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v5, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_14
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditPassword;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditPassword;

    new-array v2, v10, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v4, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_15
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditMyInfo;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditMyInfo;

    new-array v2, v10, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_16
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditBranchId;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditBranchId;

    new-array v3, v10, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v2, v1, v3}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_17
    sget-object v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute;->Companion:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$Companion;

    new-instance v11, Lkotlinx/serialization/SealedClassSerializer;

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    const-class v1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditBranchId;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-class v7, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditMyInfo;

    invoke-virtual {v0, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const-class v12, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditPassword;

    invoke-virtual {v0, v12}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    const-class v14, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditTaxId;

    invoke-virtual {v0, v14}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    const-class v15, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$MyInfo;

    invoke-virtual {v0, v15}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v15, 0x5

    move-object/from16 v16, v14

    new-array v14, v15, [Lkotlin/reflect/KClass;

    aput-object v1, v14, v10

    aput-object v7, v14, v8

    aput-object v12, v14, v9

    const/4 v1, 0x3

    aput-object v16, v14, v1

    const/4 v7, 0x4

    aput-object v0, v14, v7

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v12, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditBranchId;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditBranchId;

    move/from16 p0, v1

    new-array v1, v10, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v2, v12, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditMyInfo;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditMyInfo;

    new-array v12, v10, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v3, v2, v12}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v2, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v3, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditPassword;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditPassword;

    new-array v12, v10, [Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v4, v3, v12}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v3, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditTaxId;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditTaxId;

    new-array v12, v10, [Ljava/lang/annotation/Annotation;

    invoke-direct {v3, v5, v4, v12}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v5, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$MyInfo;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$MyInfo;

    new-array v12, v10, [Ljava/lang/annotation/Annotation;

    invoke-direct {v4, v6, v5, v12}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-array v15, v15, [Lkotlinx/serialization/KSerializer;

    aput-object v0, v15, v10

    aput-object v1, v15, v8

    aput-object v2, v15, v9

    aput-object v3, v15, p0

    aput-object v4, v15, v7

    new-array v0, v10, [Ljava/lang/annotation/Annotation;

    const-string v12, "com.vuitton.android.presentation.screen.account.myinformation.MyInformationRoute"

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v11

    :pswitch_18
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$List;->INSTANCE:Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$List;

    new-array v2, v10, [Ljava/lang/annotation/Annotation;

    const-string v3, "com.vuitton.android.presentation.screen.booking.MyBookingsRoutes.List"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_19
    sget-object v0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/pdp/WearingDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/WearingDto$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_1a
    invoke-static {}, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetTypeDto;->values()[Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetTypeDto;

    move-result-object v0

    const-string v2, "3D-asset-android"

    const-string v3, "3D-asset-ios"

    const-string v4, "image"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v3, "com.vuitton.android.data.dto.model3dasset.Model3dAssetTypeDto"

    invoke-static {v3, v0, v2, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object v0

    return-object v0

    :pswitch_1b
    invoke-static {}, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;->values()[Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;

    move-result-object v0

    const-string v2, "LD-R"

    const-string v3, "background3D"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v3, "com.vuitton.android.data.dto.model3dasset.Model3dAssetNameDto"

    invoke-static {v3, v0, v2, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object v0

    return-object v0

    :pswitch_1c
    sget-object v0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetDto;->Companion:Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetDto$Companion;

    sget-object v0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;->Companion:Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0

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
