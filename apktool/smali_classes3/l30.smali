.class public final synthetic Ll30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ll30;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget p0, p0, Ll30;->b:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Landroidx/compose/runtime/tooling/InspectionTablesKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-object v0

    :pswitch_0
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityEventProperties$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityData$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/ImpressionEngagement;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/ImpressionEngagement$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.dynamicyield.sdk.wrapper.core.enums.EngagementType"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_4
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/ImpressionEngagement;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/ImpressionEngagement$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->a:Lkotlinx/serialization/internal/IntSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleTypeDto;->values()[Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleTypeDto;

    move-result-object p0

    const-string v1, "citation"

    const-string v2, "paragraph"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleTextModuleTypeDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleAlignmentDto;->values()[Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleAlignmentDto;

    move-result-object p0

    const-string v1, "right"

    const-string v2, "left"

    const-string v3, "center"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleTextModuleAlignmentDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleAlignmentDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleAlignmentDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleAlignmentDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleTypeDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextModuleTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSlideDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSlideDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSlideDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSlideDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-static {}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->values()[Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    move-result-object p0

    const-string v4, "4/5"

    const-string v5, "1/1"

    const-string v0, "full-screen"

    const-string v1, "16/9"

    const-string v2, "9/16"

    const-string v3, "2/3"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    filled-new-array/range {v1 .. v6}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleSizeCardDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductModelDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductModelDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto$$serializer;->a:Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductDisplayStyleDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductImageStyleDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto$$serializer;->a:Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

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
