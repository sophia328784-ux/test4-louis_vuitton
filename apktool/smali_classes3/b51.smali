.class public final synthetic Lb51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lb51;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v0, v0, Lb51;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    sget v0, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthChromeClient;->e:I

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;-><init>()V

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;-><init>()V

    return-object v0

    :pswitch_7
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchResponse;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchResponse$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchResponse;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchResponse$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchChoice$Companion;

    invoke-virtual {v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchChoice$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_9
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchData;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchData$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_a
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchData;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchData$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/FacetSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/FacetSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_b
    sget-object v0, Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;->Companion:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto$Companion;

    sget-object v0, Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0

    :pswitch_c
    sget-object v0, Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;->Companion:Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_d
    sget-object v0, Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_e
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    return-object v0

    :pswitch_f
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/VideoProgressType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v2, "com.dynamicyield.sdk.wrapper.core.enums.VideoProgressType"

    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v1

    :pswitch_10
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/VideoWatchEventProperties$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_11
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation$Companion;

    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_12
    invoke-static {}, Lcom/vuitton/android/data/dto/account/orders/ValidationDto;->values()[Lcom/vuitton/android/data/dto/account/orders/ValidationDto;

    move-result-object v0

    const-string v2, "pending"

    const-string v3, "cancelled"

    const-string v4, "validated"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v3, "com.vuitton.android.data.dto.account.orders.ValidationDto"

    invoke-static {v3, v0, v2, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object v0

    return-object v0

    :pswitch_13
    sget-object v0, Lcoil3/disk/UtilsKt;->a:Lkotlin/Lazy;

    new-instance v0, Lcoil3/disk/DiskCache$Builder;

    invoke-direct {v0}, Lcoil3/disk/DiskCache$Builder;-><init>()V

    sget-object v1, Lokio/FileSystem;->c:Lokio/Path;

    const-string v2, "coil3_disk_cache"

    invoke-virtual {v1, v2}, Lokio/Path;->e(Ljava/lang/String;)Lokio/Path;

    move-result-object v6

    const-wide/16 v1, 0x0

    iget-wide v3, v0, Lcoil3/disk/DiskCache$Builder;->b:D

    cmpl-double v1, v3, v1

    if-lez v1, :cond_0

    :try_start_0
    invoke-virtual {v6}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v7

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    mul-long/2addr v1, v7

    long-to-double v1, v1

    mul-double/2addr v3, v1

    double-to-long v7, v3

    iget-wide v9, v0, Lcoil3/disk/DiskCache$Builder;->c:J

    iget-wide v11, v0, Lcoil3/disk/DiskCache$Builder;->d:J

    invoke-static/range {v7 .. v12}, Lkotlin/ranges/RangesKt;->e(JJJ)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-wide v1, v0, Lcoil3/disk/DiskCache$Builder;->c:J

    :goto_0
    move-wide v4, v1

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0

    :goto_1
    new-instance v3, Lcoil3/disk/RealDiskCache;

    iget-object v7, v0, Lcoil3/disk/DiskCache$Builder;->a:Lokio/JvmSystemFileSystem;

    iget-object v8, v0, Lcoil3/disk/DiskCache$Builder;->e:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-direct/range {v3 .. v8}, Lcoil3/disk/RealDiskCache;-><init>(JLokio/Path;Lokio/FileSystem;Lkotlin/coroutines/CoroutineContext;)V

    return-object v3

    :pswitch_14
    sget-object v0, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;->Companion:Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleItemDto$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_15
    sget-object v0, Lcom/vuitton/android/data/dto/osa/twist/UpdateAppointmentDtoRequest;->Companion:Lcom/vuitton/android/data/dto/osa/twist/UpdateAppointmentDtoRequest$Companion;

    sget-object v0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;->Companion:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0

    :pswitch_16
    sget-object v0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->Companion:Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto$Companion;

    sget-object v0, Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0

    :pswitch_17
    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/TypographyKt;->a:Landroidx/compose/ui/text/font/FontListFontFamily;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no local LV typography provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    sget-object v0, Landroidx/compose/material3/TypographyKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance v1, Landroidx/compose/material3/Typography;

    const/16 v17, 0x7fff

    const/16 v18, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v18}, Landroidx/compose/material3/Typography;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :pswitch_19
    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/TypographyKt;->a:Landroidx/compose/ui/text/font/FontListFontFamily;

    const-string v0, "ru"

    const-string v1, "zh"

    const-string v2, "ar"

    const-string v3, "ja"

    const-string v4, "ko"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_1a
    invoke-static {}, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionTypeDto;->values()[Lcom/vuitton/android/data/dto/product/vto/TutorialSectionTypeDto;

    move-result-object v0

    const-string v2, "assetList"

    const-string v3, "steps"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v3, "com.vuitton.android.data.dto.product.vto.TutorialSectionTypeDto"

    invoke-static {v3, v0, v2, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object v0

    return-object v0

    :pswitch_1b
    sget-object v0, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDto$Companion;

    sget-object v0, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionTypeDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/TutorialSectionTypeDto$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0

    :pswitch_1c
    sget-object v0, Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$StepsSectionDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$StepsSectionDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

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
