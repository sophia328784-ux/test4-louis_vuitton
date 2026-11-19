.class public final synthetic Lcom/perfectcorp/perfectlib/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/z0;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/z0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/d;
    .locals 3

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/z0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast p1, Lcom/perfectcorp/common/network/RequestTask$Response;

    check-cast p2, Lcom/perfectcorp/common/network/RequestTask$Response;

    check-cast p3, Lcom/perfectcorp/common/network/RequestTask$Response;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    iget-object p0, p2, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/c;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/c;->result:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/c$a;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/c$a;->products:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object p2, p3, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast p2, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/b;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/b;->result:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/b$a;

    const-string p3, "true"

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/b$a;->CheckInventory:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "false"

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    const-string v0, "[syncServerInternal] Check inventory status : "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x3

    const-string v2, "SkinCare3RecommendationHandler"

    invoke-static {v0, v2, p3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p3, Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v0, "SkinCare3Preferences"

    invoke-static {v0}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->a(Ljava/lang/String;)Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/perfectcorp/common/utility/BasicPreferences;-><init>(Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;)V

    const-string v0, "FEATURE_CHECK_INVENTORY"

    if-eqz p2, :cond_3

    iget-object v2, p2, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/b$a;->CheckInventory:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p3}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/b$a;->CheckInventory:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    :cond_3
    invoke-virtual {p3}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    goto :goto_3

    :goto_4
    sget-object p2, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p2}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "RECOMMENDATION_EXTRA_INFO"

    invoke-interface {p2, p3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p0, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/d;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/perfectcorp/perfectlib/z0;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/z0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/VtoPattern$SubPalette;

    check-cast p1, Landroid/util/Pair;

    new-instance v0, Lcom/perfectcorp/perfectlib/VtoPalette$SubPalette;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoPattern;->d:Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/SkuInfo;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/SubItemInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/perfectcorp/perfectlib/VtoPalette$SubPalette;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/SubItemInfo;)V

    return-object v0

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/VtoPattern$PatternMajor;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lxx0;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lxx0;-><init>(I)V

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;-><init>()V

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->c:Ljava/util/List;

    new-instance p1, Lcom/perfectcorp/perfectlib/SubItemInfo;

    invoke-direct {p1, v1}, Lcom/perfectcorp/perfectlib/SubItemInfo;-><init>(Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/VtoPalette$PatternMajor;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/VtoPattern;->d:Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoPattern$PatternMajor;->e:Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-direct {v0, v1, p0, p1}, Lcom/perfectcorp/perfectlib/VtoPalette$PatternMajor;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/SubItemInfo;)V

    return-object v0

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/VtoPattern$PaletteMajor;

    check-cast p1, Lcom/perfectcorp/perfectlib/SkuInfo;

    new-instance v0, Lcom/perfectcorp/perfectlib/VtoPalette$PaletteMajor;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoPattern;->d:Lcom/perfectcorp/perfectlib/ProductInfo;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/perfectlib/VtoPalette$PaletteMajor;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)V

    return-object v0

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/VtoPalette$SubPalette;

    check-cast p1, Lcom/perfectcorp/perfectlib/SubItemInfo;

    new-instance v0, Lcom/perfectcorp/perfectlib/VtoPattern$SubPalette;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoPalette;->d:Lcom/perfectcorp/perfectlib/ProductInfo;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/perfectlib/VtoPattern$SubPalette;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SubItemInfo;)V

    return-object v0

    :pswitch_4
    check-cast p0, Lcom/perfectcorp/perfectlib/VtoPalette$PaletteMajor;

    check-cast p1, Lcom/perfectcorp/perfectlib/SubItemInfo;

    new-instance v0, Lcom/perfectcorp/perfectlib/VtoPattern$PaletteMajor;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoPalette;->d:Lcom/perfectcorp/perfectlib/ProductInfo;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/perfectlib/VtoPattern$PaletteMajor;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SubItemInfo;)V

    return-object v0

    :pswitch_5
    check-cast p0, Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/m;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[getPatterns] can not get pattern, ID="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VtoDetailPatternEarrings"

    invoke-static {p1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/template/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/SubItemInfo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/VtoPattern$PatternEarrings;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoDetail;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, p0, p1, v0}, Lcom/perfectcorp/perfectlib/VtoPattern;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_6
    check-cast p0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;

    new-instance v0, Lcom/perfectcorp/perfectlib/Tag$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-wide v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/Tag$Builder;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/Tag$Builder;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, v0, Lcom/perfectcorp/perfectlib/Tag$Builder;->c:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/Tag$Builder;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    new-instance p0, Lcom/perfectcorp/perfectlib/Tag;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/Tag;-><init>(Lcom/perfectcorp/perfectlib/Tag$Builder;)V

    return-object p0

    :pswitch_7
    check-cast p0, Lcom/perfectcorp/perfectlib/PerfectEffect;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getFeatureType()Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ProductMaskHelper;->a(Ljava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    move-result-object p1

    new-instance v0, Lh8;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lh8;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_8
    check-cast p0, Lcom/perfectcorp/perfectlib/ShadeFinderData;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "ShadeFinderRecommendationHandler"

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[sortSkuDatas] Collect color array for Venus. skuDatas#size()="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;

    aput-object v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ShadeFinderData;->getLabSkinTone()Lcom/perfectcorp/perfectlib/LabColorSpace;

    move-result-object p0

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/LabColorSpace;->getL()F

    move-result v0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/LabColorSpace;->getA()F

    move-result v4

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/LabColorSpace;->getB()F

    move-result p0

    invoke-direct {v6, v0, v4, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;-><init>(FFF)V

    const-string p0, "[sortSkuDatas] Get matching results."

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-array p0, v3, [Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, [Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;

    sget-object v5, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$ShadeFinderSingleton;->a:Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;

    iget-wide v3, v5, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-static/range {v3 .. v8}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_GetShadeFinderShadeMatching(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[sortSkuDatas] skuDatas="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string p0, "[sortSkuDatas] Sort data by order."

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/perfectcorp/perfectlib/z3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string p0, "[sortSkuDatas] Return result."

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    const-string p0, "Get shade finder matching result (L*a*b*) failed."

    invoke-static {v2, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Can\'t get shade finder matching result."

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_3
    return-object p1

    :cond_4
    const-string p0, "[sortSkuDatas] skuDatas is empty"

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/NoShadeFinderProductException;

    const-string p1, "skuDatas is empty."

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/exceptions/NoShadeFinderProductException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_9
    check-cast p0, Lcom/perfectcorp/perfectlib/internal/AppliedResult;

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    sget p1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/AppliedResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lcom/perfectcorp/perfectlib/internal/AppliedResult;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/internal/AppliedResult;->getConfiguration()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->a()Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/internal/AppliedResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lcom/perfectcorp/perfectlib/NailLookHandler;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/NailLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->F(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v1, Lcom/perfectcorp/perfectlib/LookInfo;

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailLookHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-direct {v1, v0, p1, v2, p0}, Lcom/perfectcorp/perfectlib/LookInfo;-><init>(Ljava/util/Map;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    return-object v1

    :pswitch_c
    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    sget-object p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0

    :pswitch_d
    check-cast p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->F(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v1, Lcom/perfectcorp/perfectlib/LookInfo;

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-direct {v1, v0, p1, v2, p0}, Lcom/perfectcorp/perfectlib/LookInfo;-><init>(Ljava/util/Map;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
