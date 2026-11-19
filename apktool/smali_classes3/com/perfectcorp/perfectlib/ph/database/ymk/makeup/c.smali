.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;

.field public static final b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;


# instance fields
.field public final makeup:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EYE_WEAR:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->u([Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->makeup:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;

    return-void
.end method

.method public static b(ILjava/util/List;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/List;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a;->patterns:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a$b;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a$b;->pattern:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a;->patterns:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a$b;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a$b;->pattern:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->pattern_guid:Ljava/util/List;

    const-string v4, ""

    invoke-static {v4, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a;->patterns:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a$b;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a$b;->pattern:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;Ljava/lang/String;FILcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a$a;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 136

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->s:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->e:Ljava/util/ArrayList;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->g()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->g()Ljava/lang/String;

    move-result-object v11

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->effect_type:Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v12, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    sget-object v13, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {v13, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v13, v12

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    iget-object v13, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a$a;->attr_palette_guid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v13, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->palette_guid:Ljava/util/List;

    invoke-static {v12, v13}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    :goto_0
    const-string v14, ""

    if-eqz v4, :cond_2

    iget-object v15, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a;->attr_pattern_guid:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    iget-object v15, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->pattern_guid:Ljava/util/List;

    invoke-static {v14, v15}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_3
    move-object/from16 v15, p9

    :goto_1
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_4

    sget-object v16, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->LIPSTICK:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual/range {v16 .. v16}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->color_references:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->color_references:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$ColorReferences;

    iget-object v12, v12, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$ColorReferences;->color_reference:Ljava/util/List;

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$ColorReferences$ColorReference;

    iget-object v15, v12, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$ColorReferences$ColorReference;->patternGuid:Ljava/lang/String;

    :cond_4
    move-object/from16 v24, v15

    iget-object v12, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->sku_guid:Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    iget-object v15, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->v:Ljava/util/HashSet;

    invoke-virtual {v15, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v15, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->item_guid:Ljava/util/List;

    move-object/from16 v20, v10

    const/4 v10, 0x0

    invoke-static {v10, v15}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v25

    iget-object v15, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->nail_position:Ljava/util/List;

    invoke-static {v10, v15}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v11

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->transparency:Ljava/util/List;

    invoke-static {v10, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v11

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->light:Ljava/util/List;

    invoke-static {v10, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v19, v11

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->diffuse:Ljava/util/List;

    invoke-static {v10, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v21, v11

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->reflection:Ljava/util/List;

    invoke-static {v10, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v11

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->contrast:Ljava/util/List;

    invoke-static {v10, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v23, v11

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->roughness:Ljava/util/List;

    invoke-static {v10, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v26, v11

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->finish_type:Ljava/util/List;

    invoke-static {v10, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v27, v11

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_opacity:Ljava/util/List;

    invoke-static {v10, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v28, v11

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->textured_granularity:Ljava/util/List;

    invoke-static {v10, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v29, v11

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_granularity:Ljava/util/List;

    invoke-static {v10, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v30, v11

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->style_guid:Ljava/util/List;

    invoke-static {v10, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v31

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->feather_strength:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->inner_ratio:Ljava/util/List;

    invoke-static {v14, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v32, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->global_intensity:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v33, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->colored_mask_index:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v34, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->position:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v35, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->sku_set:Ljava/util/List;

    move-object/from16 v36, v11

    const/4 v11, 0x0

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->ombre_range:Ljava/util/List;

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v37, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->ombre_line_offset:Ljava/util/List;

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v38, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->coloring_section:Ljava/util/List;

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->thickness:Ljava/util/List;

    invoke-static {v14, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v40, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->smoothness:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v41, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->intensity:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v42, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->hidden_intensity:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v43, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->radius:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v44, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->foundation_intensity_mode:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v45, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->browdefinition:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v46, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->browcurvature:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v47, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->browthickness:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v48, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->browpositionx:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v49, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->browpositiony:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v50, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->browheadlocation:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v51, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->browtaillocation:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v52, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->object_distance_ratio:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v53, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->object_distance_ratio_back:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v54, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->object_distance_ratio_palm:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v55, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->adaptive_rotate:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v56, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->is_rigid_body:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v57, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->fullness:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->wrinkless:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shape_guid:Ljava/util/List;

    invoke-static {v14, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v58, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->colors:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->colors:Ljava/util/List;

    move-object/from16 v59, v11

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c;->color:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_2

    :cond_6
    move-object/from16 v59, v11

    const/4 v11, 0x0

    move v10, v11

    :goto_2
    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->colors:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->colors:Ljava/util/List;

    move-object/from16 v60, v12

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c;

    iget-object v11, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c;->level_color:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_3

    :cond_7
    move-object/from16 v60, v12

    const/4 v12, 0x0

    move v11, v12

    :goto_3
    iget-object v12, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->color_is_shimmers:Ljava/util/List;

    invoke-static {v12}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_9

    iget-object v12, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->color_is_shimmers:Ljava/util/List;

    move/from16 v61, v11

    const/4 v11, 0x0

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$b;

    iget-object v12, v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$b;->color_is_shimmer:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-eq v12, v10, :cond_8

    const-string v12, "parse() warning. colorCount("

    const-string v11, ") != isShimmerCount("

    invoke-static {v10, v12, v11}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->color_is_shimmers:Ljava/util/List;

    move-object/from16 v62, v13

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$b;

    iget-object v12, v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$b;->color_is_shimmer:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ") (presetGUID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    const-string v13, "ZipInfo"

    invoke-static {v12, v13, v11}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    :goto_4
    move-object/from16 v62, v13

    goto :goto_5

    :cond_9
    move/from16 v61, v11

    goto :goto_4

    :goto_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->c:Ljava/util/HashMap;

    invoke-virtual {v12, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v63, 0x1

    if-lez v10, :cond_26

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v64

    move-object/from16 v13, v62

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v10, :cond_23

    move/from16 v66, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->color_intensities:Ljava/util/List;

    invoke-static {v10}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->color_intensities:Ljava/util/List;

    move-object/from16 v67, v11

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$a;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$a;->color_intensity:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_b

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->color_intensities:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$a;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$a;->color_intensity:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    move v11, v10

    goto :goto_7

    :cond_a
    move-object/from16 v67, v11

    :cond_b
    const/4 v11, -0x1

    :goto_7
    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->color_is_shimmers:Ljava/util/List;

    invoke-static {v10}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v62

    if-nez v62, :cond_c

    move/from16 v62, v11

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v68

    move-object/from16 v11, v68

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$b;

    iget-object v11, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$b;->color_is_shimmer:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v12, v11, :cond_d

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$b;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$b;->color_is_shimmer:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    move/from16 v10, v63

    goto :goto_8

    :cond_c
    move/from16 v62, v11

    :cond_d
    const/4 v10, 0x0

    :goto_8
    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_intensities:Ljava/util/List;

    invoke-static {v11}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_intensities:Ljava/util/List;

    move/from16 v68, v10

    const/4 v10, 0x0

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$k;

    iget-object v11, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$k;->shimmer_intensity:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v12, v11, :cond_f

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_intensities:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$k;

    iget-object v10, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$k;->shimmer_intensity:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, -0x1

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    move v11, v10

    goto :goto_9

    :cond_e
    move/from16 v68, v10

    :cond_f
    const/4 v11, -0x1

    :goto_9
    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shine_intensities:Ljava/util/List;

    invoke-static {v10}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shine_intensities:Ljava/util/List;

    move/from16 v69, v11

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$l;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$l;->shine_intensity:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_11

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shine_intensities:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$l;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$l;->shine_intensity:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, -0x1

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    move v11, v10

    goto :goto_a

    :cond_10
    move/from16 v69, v11

    :cond_11
    const/4 v11, -0x1

    :goto_a
    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_densities:Ljava/util/List;

    invoke-static {v10}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_densities:Ljava/util/List;

    move/from16 v70, v11

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$i;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$i;->shimmer_density:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_13

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_densities:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$i;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$i;->shimmer_density:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, -0x1

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    move v11, v10

    goto :goto_b

    :cond_12
    move/from16 v70, v11

    :cond_13
    const/4 v11, -0x1

    :goto_b
    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_granularities:Ljava/util/List;

    invoke-static {v10}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_14

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_granularities:Ljava/util/List;

    move/from16 v71, v11

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$j;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$j;->shimmer_granularity:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_15

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_granularities:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$j;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$j;->shimmer_granularity:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, -0x1

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    move v11, v10

    goto :goto_c

    :cond_14
    move/from16 v71, v11

    :cond_15
    const/4 v11, -0x1

    :goto_c
    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->glow_intensities:Ljava/util/List;

    invoke-static {v10}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_16

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->glow_intensities:Ljava/util/List;

    move/from16 v72, v11

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$e;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$e;->glow_intensity:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_17

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->glow_intensities:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$e;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$e;->glow_intensity:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, -0x1

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    move v11, v10

    goto :goto_d

    :cond_16
    move/from16 v72, v11

    :cond_17
    const/4 v11, -0x1

    :goto_d
    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->metallic_intensities:Ljava/util/List;

    invoke-static {v10}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_18

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->metallic_intensities:Ljava/util/List;

    move/from16 v73, v11

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$f;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$f;->metallic_intensity:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_19

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->metallic_intensities:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$f;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$f;->metallic_intensity:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, -0x1

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    move v11, v10

    goto :goto_e

    :cond_18
    move/from16 v73, v11

    :cond_19
    const/4 v11, -0x1

    :goto_e
    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->glosses:Ljava/util/List;

    invoke-static {v10}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_1a

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->glosses:Ljava/util/List;

    move/from16 v74, v11

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$d;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$d;->gloss:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_1b

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->glosses:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$d;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$d;->gloss:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, -0x1

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    move v11, v10

    goto :goto_f

    :cond_1a
    move/from16 v74, v11

    :cond_1b
    const/4 v11, -0x1

    :goto_f
    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->transparencies:Ljava/util/List;

    invoke-static {v10}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_1c

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->transparencies:Ljava/util/List;

    move/from16 v75, v11

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$o;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$o;->transparency:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_1d

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->transparencies:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$o;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$o;->transparency:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, -0x1

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    move v11, v10

    goto :goto_10

    :cond_1c
    move/from16 v75, v11

    :cond_1d
    const/4 v11, -0x1

    :goto_10
    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_colors:Ljava/util/List;

    invoke-static {v10}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_20

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_colors:Ljava/util/List;

    move/from16 v76, v11

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$h;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$h;->shimmer_color:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_1f

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_colors:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$h;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$h;->shimmer_color:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v65, v13

    const/4 v11, -0x1

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v13

    if-ne v13, v11, :cond_1e

    invoke-static {v10}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->v(Ljava/lang/String;)I

    move-result v10

    goto :goto_13

    :cond_1e
    move v10, v13

    goto :goto_13

    :cond_1f
    :goto_11
    move-object/from16 v65, v13

    const/4 v11, -0x1

    goto :goto_12

    :cond_20
    move/from16 v76, v11

    goto :goto_11

    :goto_12
    move v10, v11

    :goto_13
    iget-object v13, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->colors:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c;

    iget-object v11, v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c;->color:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c$a;

    iget-object v11, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c$a;->attr_guid:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v68 .. v68}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v79

    invoke-static/range {v69 .. v69}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v70 .. v70}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v82

    invoke-static/range {v73 .. v73}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v84

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v87

    invoke-static/range {v72 .. v72}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v74 .. v74}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v89

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v90

    invoke-static/range {v62 .. v62}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v91

    invoke-static/range {v75 .. v75}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v76 .. v76}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v93

    const-string v94, ""

    const-string v77, ""

    const-string v78, ""

    const-string v81, ""

    const/16 v83, 0x0

    const-string v85, ""

    const-string v86, ""

    invoke-static/range {v77 .. v94}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    move-object v13, v10

    new-instance v10, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    move-object/from16 v68, v10

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->colors:Ljava/util/List;

    move-object/from16 v69, v11

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c;->color:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c$a;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c$a;->inner_text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v62 .. v62}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v62

    move-object/from16 v70, v15

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v71, v18

    const-string v18, ""

    move-object/from16 v72, v9

    move-object/from16 v95, v14

    move-object/from16 v11, v16

    move-object/from16 v112, v17

    move-object/from16 v98, v19

    move-object/from16 v99, v21

    move-object/from16 v100, v22

    move-object/from16 v101, v23

    move-object/from16 v102, v26

    move-object/from16 v103, v27

    move-object/from16 v104, v28

    move-object/from16 v105, v29

    move-object/from16 v106, v30

    move-object/from16 v107, v32

    move-object/from16 v109, v33

    move-object/from16 v110, v34

    move-object/from16 v111, v35

    move-object/from16 v108, v36

    move-object/from16 v113, v37

    move-object/from16 v114, v38

    move-object/from16 v115, v40

    move-object/from16 v117, v41

    move-object/from16 v118, v42

    move-object/from16 v119, v43

    move-object/from16 v120, v44

    move-object/from16 v121, v45

    move-object/from16 v122, v46

    move-object/from16 v123, v47

    move-object/from16 v124, v48

    move-object/from16 v125, v49

    move-object/from16 v126, v50

    move-object/from16 v127, v51

    move-object/from16 v128, v52

    move-object/from16 v129, v53

    move-object/from16 v130, v54

    move-object/from16 v131, v55

    move-object/from16 v132, v56

    move-object/from16 v133, v57

    move-object/from16 v134, v58

    move-object/from16 v116, v59

    move/from16 v135, v61

    move-object/from16 v14, v62

    move/from16 v23, v66

    move-object/from16 v9, v67

    move-object/from16 v17, v69

    move-object/from16 v96, v70

    move-object/from16 v97, v71

    const/16 v39, 0x0

    move-object/from16 v28, v7

    move/from16 v19, v12

    move-object/from16 v16, v13

    move-object/from16 v12, v20

    move-object/from16 v7, v65

    move-object v13, v10

    move-object/from16 v10, v68

    invoke-direct/range {v10 .. v18}, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->d:Ljava/lang/String;

    if-nez v3, :cond_21

    move-object v3, v13

    goto :goto_14

    :cond_21
    const-string v14, ","

    invoke-static {v3, v14, v13}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_14
    iget-object v13, v10, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->g:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_22

    goto :goto_15

    :cond_22
    move-object v13, v7

    :goto_15
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v19, 0x1

    move-object/from16 v16, v11

    move-object/from16 v20, v12

    move/from16 v10, v23

    move-object/from16 v14, v95

    move-object/from16 v15, v96

    move-object/from16 v18, v97

    move-object/from16 v19, v98

    move-object/from16 v21, v99

    move-object/from16 v22, v100

    move-object/from16 v23, v101

    move-object/from16 v26, v102

    move-object/from16 v27, v103

    move-object/from16 v29, v105

    move-object/from16 v30, v106

    move-object/from16 v32, v107

    move-object/from16 v36, v108

    move-object/from16 v33, v109

    move-object/from16 v34, v110

    move-object/from16 v35, v111

    move-object/from16 v17, v112

    move-object/from16 v37, v113

    move-object/from16 v38, v114

    move-object/from16 v40, v115

    move-object/from16 v59, v116

    move-object/from16 v41, v117

    move-object/from16 v42, v118

    move-object/from16 v43, v119

    move-object/from16 v44, v120

    move-object/from16 v45, v121

    move-object/from16 v46, v122

    move-object/from16 v47, v123

    move-object/from16 v48, v124

    move-object/from16 v49, v125

    move-object/from16 v50, v126

    move-object/from16 v51, v127

    move-object/from16 v52, v128

    move-object/from16 v53, v129

    move-object/from16 v54, v130

    move-object/from16 v55, v131

    move-object/from16 v56, v132

    move-object/from16 v57, v133

    move-object/from16 v58, v134

    move/from16 v61, v135

    move v12, v7

    move-object v11, v9

    move-object/from16 v7, v28

    move-object/from16 v9, v72

    move-object/from16 v28, v104

    goto/16 :goto_6

    :cond_23
    move-object/from16 v72, v9

    move-object v9, v11

    move-object/from16 v95, v14

    move-object/from16 v96, v15

    move-object/from16 v11, v16

    move-object/from16 v112, v17

    move-object/from16 v97, v18

    move-object/from16 v98, v19

    move-object/from16 v12, v20

    move-object/from16 v99, v21

    move-object/from16 v100, v22

    move-object/from16 v101, v23

    move-object/from16 v102, v26

    move-object/from16 v103, v27

    move-object/from16 v104, v28

    move-object/from16 v105, v29

    move-object/from16 v106, v30

    move-object/from16 v107, v32

    move-object/from16 v109, v33

    move-object/from16 v110, v34

    move-object/from16 v111, v35

    move-object/from16 v108, v36

    move-object/from16 v113, v37

    move-object/from16 v114, v38

    move-object/from16 v115, v40

    move-object/from16 v117, v41

    move-object/from16 v118, v42

    move-object/from16 v119, v43

    move-object/from16 v120, v44

    move-object/from16 v121, v45

    move-object/from16 v122, v46

    move-object/from16 v123, v47

    move-object/from16 v124, v48

    move-object/from16 v125, v49

    move-object/from16 v126, v50

    move-object/from16 v127, v51

    move-object/from16 v128, v52

    move-object/from16 v129, v53

    move-object/from16 v130, v54

    move-object/from16 v131, v55

    move-object/from16 v132, v56

    move-object/from16 v133, v57

    move-object/from16 v134, v58

    move-object/from16 v116, v59

    move/from16 v135, v61

    const/16 v39, 0x0

    move-object/from16 v28, v7

    move/from16 v23, v10

    move-object v7, v13

    invoke-static {v1, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->g(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_25

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_24

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const/4 v13, 0x0

    invoke-static {v10, v7, v13}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_24

    goto :goto_16

    :cond_24
    move/from16 v10, v63

    goto :goto_17

    :cond_25
    :goto_16
    const/4 v10, 0x0

    :goto_17
    move-object/from16 v13, v24

    move-object/from16 v24, v3

    move-object v3, v13

    move-object v13, v7

    move/from16 v7, v135

    goto/16 :goto_18

    :cond_26
    move-object/from16 v72, v9

    move-object v9, v11

    move-object/from16 v95, v14

    move-object/from16 v96, v15

    move-object/from16 v11, v16

    move-object/from16 v112, v17

    move-object/from16 v97, v18

    move-object/from16 v98, v19

    move-object/from16 v12, v20

    move-object/from16 v99, v21

    move-object/from16 v100, v22

    move-object/from16 v101, v23

    move-object/from16 v102, v26

    move-object/from16 v103, v27

    move-object/from16 v104, v28

    move-object/from16 v105, v29

    move-object/from16 v106, v30

    move-object/from16 v107, v32

    move-object/from16 v109, v33

    move-object/from16 v110, v34

    move-object/from16 v111, v35

    move-object/from16 v108, v36

    move-object/from16 v113, v37

    move-object/from16 v114, v38

    move-object/from16 v115, v40

    move-object/from16 v117, v41

    move-object/from16 v118, v42

    move-object/from16 v119, v43

    move-object/from16 v120, v44

    move-object/from16 v121, v45

    move-object/from16 v122, v46

    move-object/from16 v123, v47

    move-object/from16 v124, v48

    move-object/from16 v125, v49

    move-object/from16 v126, v50

    move-object/from16 v127, v51

    move-object/from16 v128, v52

    move-object/from16 v129, v53

    move-object/from16 v130, v54

    move-object/from16 v131, v55

    move-object/from16 v132, v56

    move-object/from16 v133, v57

    move-object/from16 v134, v58

    move-object/from16 v116, v59

    const/16 v39, 0x0

    move-object/from16 v28, v7

    move/from16 v23, v10

    move-object/from16 v3, v24

    move-object/from16 v24, v39

    move-object/from16 v64, v24

    move/from16 v7, v61

    move-object/from16 v13, v62

    const/4 v10, 0x0

    :goto_18
    if-lez v7, :cond_35

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v64

    const/4 v10, 0x0

    :goto_19
    if-ge v10, v7, :cond_32

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->color_intensities:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_27

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->color_intensities:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$a;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$a;->color_intensity:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-le v14, v10, :cond_27

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->color_intensities:Ljava/util/List;

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$a;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$a;->color_intensity:Ljava/util/List;

    invoke-static {v10, v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->b(ILjava/util/List;)Ljava/lang/String;

    move-result-object v14

    const/high16 v15, -0x40800000    # -1.0f

    invoke-static {v14, v15}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result v14

    float-to-int v14, v14

    move/from16 v47, v14

    goto :goto_1a

    :cond_27
    const/16 v47, -0x1

    :goto_1a
    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->glosses:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_28

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->glosses:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$d;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$d;->gloss:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-le v14, v10, :cond_28

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->glosses:Ljava/util/List;

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$d;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$d;->gloss:Ljava/util/List;

    invoke-static {v10, v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->b(ILjava/util/List;)Ljava/lang/String;

    move-result-object v14

    const/high16 v15, -0x40800000    # -1.0f

    invoke-static {v14, v15}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result v14

    float-to-int v14, v14

    move/from16 v48, v14

    goto :goto_1b

    :cond_28
    const/16 v48, -0x1

    :goto_1b
    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_colors:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_29

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_colors:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$h;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$h;->shimmer_color:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-le v14, v10, :cond_29

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_colors:Ljava/util/List;

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$h;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$h;->shimmer_color:Ljava/util/List;

    invoke-static {v10, v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->b(ILjava/util/List;)Ljava/lang/String;

    move-result-object v14

    const/high16 v15, -0x40800000    # -1.0f

    invoke-static {v14, v15}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result v14

    float-to-int v14, v14

    move/from16 v46, v14

    goto :goto_1c

    :cond_29
    const/16 v46, -0x1

    :goto_1c
    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->transparencies:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2a

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->transparencies:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$o;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$o;->transparency:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-le v14, v10, :cond_2a

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->transparencies:Ljava/util/List;

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$o;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$o;->transparency:Ljava/util/List;

    invoke-static {v10, v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->b(ILjava/util/List;)Ljava/lang/String;

    move-result-object v14

    const/high16 v15, -0x40800000    # -1.0f

    invoke-static {v14, v15}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result v14

    float-to-int v14, v14

    move/from16 v49, v14

    goto :goto_1d

    :cond_2a
    const/16 v49, -0x1

    :goto_1d
    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_intensities:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2b

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_intensities:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$k;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$k;->shimmer_intensity:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-le v14, v10, :cond_2b

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_intensities:Ljava/util/List;

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$k;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$k;->shimmer_intensity:Ljava/util/List;

    invoke-static {v10, v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->b(ILjava/util/List;)Ljava/lang/String;

    move-result-object v14

    const/high16 v15, -0x40800000    # -1.0f

    invoke-static {v14, v15}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result v14

    float-to-int v14, v14

    move/from16 v43, v14

    goto :goto_1e

    :cond_2b
    const/16 v43, -0x1

    :goto_1e
    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_densities:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2c

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_densities:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$i;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$i;->shimmer_density:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-le v14, v10, :cond_2c

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_densities:Ljava/util/List;

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$i;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$i;->shimmer_density:Ljava/util/List;

    invoke-static {v10, v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->b(ILjava/util/List;)Ljava/lang/String;

    move-result-object v14

    const/high16 v15, -0x40800000    # -1.0f

    invoke-static {v14, v15}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result v14

    float-to-int v14, v14

    move/from16 v44, v14

    goto :goto_1f

    :cond_2c
    const/16 v44, -0x1

    :goto_1f
    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_granularities:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2d

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_granularities:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$j;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$j;->shimmer_granularity:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-le v14, v10, :cond_2d

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->shimmer_granularities:Ljava/util/List;

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$j;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$j;->shimmer_granularity:Ljava/util/List;

    invoke-static {v10, v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->b(ILjava/util/List;)Ljava/lang/String;

    move-result-object v14

    const/high16 v15, -0x40800000    # -1.0f

    invoke-static {v14, v15}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result v14

    float-to-int v14, v14

    move/from16 v45, v14

    goto :goto_20

    :cond_2d
    const/16 v45, -0x1

    :goto_20
    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->colors:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c;->level_color:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->texture_guids:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2e

    iget-object v15, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->texture_guids:Ljava/util/List;

    move-object/from16 v26, v3

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$m;

    iget-object v3, v15, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$m;->texture_guid:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    :cond_2e
    move-object/from16 v26, v3

    move-object/from16 v3, v95

    :goto_21
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xc

    if-eq v14, v15, :cond_2f

    move v14, v10

    new-instance v10, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    move v3, v14

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    const-string v17, ""

    const-string v18, ""

    move-object/from16 v16, v13

    const-string v13, "000000"

    move-object/from16 v19, v16

    const-string v16, "{}"

    invoke-direct/range {v10 .. v18}, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v61, v7

    move-object/from16 v13, v19

    goto/16 :goto_23

    :cond_2f
    move-object/from16 v19, v13

    iget-object v13, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->colors:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c;

    iget-object v13, v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c;->level_color:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    move-object/from16 v16, v3

    move/from16 v61, v7

    const/4 v3, 0x0

    invoke-virtual {v13, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0x10

    invoke-static {v7, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v40

    const/4 v7, 0x4

    invoke-virtual {v13, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v41

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    move-object/from16 v50, v16

    goto :goto_22

    :cond_30
    move-object/from16 v50, v95

    :goto_22
    const/16 v42, 0x0

    invoke-static/range {v40 .. v50}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->b(IIZIIIIIIILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move v7, v10

    new-instance v10, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v18, ""

    const-string v17, ""

    move-object v3, v14

    move-object v14, v13

    move-object v13, v3

    move v3, v7

    move-object/from16 v7, v19

    invoke-direct/range {v10 .. v18}, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->g:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_31

    goto :goto_23

    :cond_31
    move-object v13, v7

    :goto_23
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v3, 0x1

    move-object/from16 v3, v26

    move/from16 v7, v61

    goto/16 :goto_19

    :cond_32
    move-object/from16 v26, v3

    move-object v7, v13

    invoke-static {v1, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->g(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v15, 0x0

    invoke-static {v3, v7, v15}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_24

    :cond_33
    move/from16 v3, v63

    goto :goto_25

    :cond_34
    :goto_24
    const/4 v3, 0x0

    :goto_25
    move v10, v3

    move-object/from16 v16, v11

    move-object v11, v7

    :goto_26
    move-object/from16 v3, v64

    goto :goto_27

    :cond_35
    move-object/from16 v26, v3

    move-object/from16 v16, v11

    move-object v11, v13

    goto :goto_26

    :goto_27
    iget-object v7, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->feather_strength:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_37

    iget-object v7, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->inner_ratio:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_37

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->g()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->n:Ljava/util/ArrayList;

    new-instance v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->style_guid:Ljava/util/List;

    move-object/from16 v15, v95

    invoke-static {v15, v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-object/from16 v29, v3

    move-object/from16 v14, v107

    move-object/from16 v3, v108

    invoke-direct {v13, v7, v3, v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->q:Ljava/util/ArrayList;

    new-instance v17, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;

    if-eqz v11, :cond_36

    move-object/from16 v18, v11

    :goto_28
    const/4 v13, -0x1

    goto :goto_29

    :cond_36
    move-object/from16 v18, v16

    goto :goto_28

    :goto_29
    invoke-static {v13, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v20

    invoke-static {v13, v14}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v21

    move-object/from16 v36, v3

    const-string v3, "100"

    invoke-static {v13, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v22

    move-object/from16 v19, v7

    invoke-direct/range {v17 .. v22}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/d;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v3, v17

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v19

    goto :goto_2a

    :cond_37
    move-object/from16 v29, v3

    move-object/from16 v15, v95

    move-object/from16 v14, v107

    move-object/from16 v36, v108

    move-object/from16 v3, v39

    :goto_2a
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->textures:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3a

    iget-object v9, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->textures:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$n;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$n;->texture:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v17, v9

    instance-of v9, v13, Ljava/lang/String;

    if-eqz v9, :cond_39

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    :goto_2c
    move-object/from16 v9, v17

    goto :goto_2b

    :cond_39
    instance-of v9, v13, Ljava/util/Map;

    if-eqz v9, :cond_38

    check-cast v13, Ljava/util/Map;

    const-string v9, "inner_text"

    invoke-interface {v13, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_38

    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_3a
    iget-object v9, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->textures:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3b

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3c

    :cond_3b
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_3c
    sget-object v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-ne v0, v9, :cond_3d

    move/from16 v18, v63

    goto :goto_2d

    :cond_3d
    const/16 v18, 0x0

    :goto_2d
    new-instance v9, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;

    invoke-direct {v9}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;-><init>()V

    move-object/from16 v13, v97

    iput-object v13, v9, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->a:Ljava/lang/String;

    move-object/from16 v0, v98

    iput-object v0, v9, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->b:Ljava/lang/String;

    move-object/from16 v30, v3

    move-object/from16 v3, v99

    iput-object v3, v9, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->c:Ljava/lang/String;

    move-object/from16 v2, v100

    iput-object v2, v9, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->d:Ljava/lang/String;

    move-object/from16 v2, v101

    iput-object v2, v9, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->e:Ljava/lang/String;

    move-object/from16 v2, v102

    iput-object v2, v9, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->f:Ljava/lang/String;

    move-object/from16 v2, v103

    iput-object v2, v9, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->g:Ljava/lang/String;

    move/from16 v17, v10

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;

    invoke-direct {v10, v9}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;-><init>(Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;)V

    if-eqz v17, :cond_3f

    move-object/from16 v107, v14

    const-string v14, ""

    if-eqz v11, :cond_3e

    new-instance v9, Lcom/perfectcorp/perfectlib/ph/template/d;

    move-object/from16 v20, v12

    move-object/from16 v12, v16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v9

    sget-object v9, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v9, v10}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v95, v15

    const-string v15, ""

    const-string v19, ""

    const-string v21, ""

    const-string v22, ""

    move/from16 v10, v23

    move-object/from16 v23, v9

    move-object v9, v13

    move v13, v10

    move-object/from16 v10, v17

    move/from16 v17, p4

    invoke-direct/range {v10 .. v23}, Lcom/perfectcorp/perfectlib/ph/template/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v23, v13

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v20

    goto :goto_2e

    :cond_3e
    move-object/from16 v20, v12

    move-object v9, v13

    move-object/from16 v95, v15

    move-object/from16 v12, v16

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/template/d;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v16

    sget-object v11, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    new-instance v13, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;

    invoke-direct {v13}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;-><init>()V

    new-instance v15, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;

    invoke-direct {v15, v13}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;-><init>(Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;)V

    invoke-virtual {v11, v15}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v15, ""

    const-string v19, ""

    const-string v21, ""

    const-string v22, ""

    move/from16 v13, v23

    move-object/from16 v23, v11

    move-object v11, v12

    move/from16 v17, p4

    invoke-direct/range {v10 .. v23}, Lcom/perfectcorp/perfectlib/ph/template/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v23, v13

    move-object v11, v10

    move-object/from16 v10, v20

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v11, v12

    :goto_2e
    iget-object v8, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->b:Ljava/util/HashMap;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    move-object/from16 v20, v11

    goto :goto_30

    :cond_3f
    move-object v10, v12

    move-object v9, v13

    move-object/from16 v107, v14

    move-object/from16 v95, v15

    move-object/from16 v12, v16

    goto :goto_2f

    :goto_30
    new-instance v8, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;

    invoke-direct {v8}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;-><init>()V

    move-object/from16 v11, v118

    const/4 v13, -0x1

    invoke-static {v13, v11}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v11

    iput v11, v8, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->a:I

    move-object/from16 v11, v119

    invoke-static {v13, v11}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v11

    iput v11, v8, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->b:I

    move-object/from16 v11, v120

    invoke-static {v13, v11}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v11

    iput v11, v8, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->c:I

    move-object/from16 v11, v122

    invoke-static {v13, v11}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v11

    const/16 v13, -0x3e8

    move-object/from16 v14, v123

    invoke-static {v13, v14}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v14

    move-object/from16 v15, v124

    invoke-static {v13, v15}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v15

    move-object/from16 v16, v12

    move-object/from16 v12, v125

    invoke-static {v13, v12}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v12

    move-object/from16 v1, v126

    invoke-static {v13, v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v1

    move-object/from16 v17, v10

    move-object/from16 v10, v127

    invoke-static {v13, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    move-object/from16 v103, v2

    move-object/from16 v2, v128

    invoke-static {v13, v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v2

    iput v11, v8, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->d:I

    iput v14, v8, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->e:I

    iput v15, v8, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->f:I

    iput v12, v8, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->g:I

    iput v1, v8, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->h:I

    iput v10, v8, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->i:I

    iput v2, v8, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->j:I

    invoke-virtual {v8}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities$Builder;->a()Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;-><init>()V

    if-eqz v20, :cond_40

    move-object/from16 v14, v20

    goto :goto_31

    :cond_40
    move-object/from16 v14, v95

    :goto_31
    iput-object v14, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->a:Ljava/lang/String;

    if-eqz v25, :cond_41

    move-object/from16 v14, v25

    goto :goto_32

    :cond_41
    move-object/from16 v14, v95

    :goto_32
    iput-object v14, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->F:Ljava/lang/String;

    if-eqz v31, :cond_42

    move-object/from16 v14, v31

    goto :goto_33

    :cond_42
    move-object/from16 v14, v95

    :goto_33
    iput-object v14, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->G:Ljava/lang/String;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_43

    const/4 v12, 0x0

    goto :goto_34

    :cond_43
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    :goto_34
    iput v12, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->H:I

    invoke-virtual/range {v107 .. v107}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_44

    const/4 v12, 0x0

    goto :goto_35

    :cond_44
    invoke-static/range {v107 .. v107}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    :goto_35
    iput v12, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->I:I

    move/from16 v8, p4

    iput v8, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->b:F

    move-object/from16 v8, v109

    const/4 v11, -0x1

    invoke-static {v11, v8}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->c:I

    move-object/from16 v8, v110

    invoke-static {v11, v8}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->d:I

    move-object/from16 v8, v111

    iput-object v8, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->e:Ljava/lang/String;

    move-object/from16 v8, v121

    iput-object v8, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->f:Ljava/lang/String;

    move-object/from16 v8, v115

    iput-object v8, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->n:Ljava/lang/String;

    move-object/from16 v8, v134

    if-eqz v8, :cond_45

    move-object v14, v8

    goto :goto_36

    :cond_45
    move-object/from16 v14, v95

    :goto_36
    iput-object v14, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->P:Ljava/lang/String;

    if-eqz v4, :cond_46

    iget-object v10, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a;->attr_pattern_mask_index:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_46

    if-eqz v5, :cond_46

    iget-object v10, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a$a;->attr_palette_color_index:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_46

    if-eqz v6, :cond_46

    iget-object v10, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a;->attr_pattern_mask_index:Ljava/lang/String;

    const/4 v11, -0x1

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->g:I

    iget-object v10, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a$a;->attr_palette_color_index:Ljava/lang/String;

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->h:I

    new-instance v10, Landroid/util/Pair;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a;->attr_pattern_mask_index:Ljava/lang/String;

    invoke-static {v11, v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v18, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a$a;->attr_palette_color_index:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v19, v26

    const-string v26, ""

    const/16 v27, 0x0

    const-string v25, ""

    move-object/from16 v21, v5

    invoke-direct/range {v18 .. v27}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;)V

    move-object/from16 v5, v18

    move-object/from16 v15, v19

    move-object/from16 v11, v20

    invoke-direct {v10, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_46
    move-object/from16 v11, v20

    move-object/from16 v15, v26

    :goto_37
    if-eqz v60, :cond_47

    move-object/from16 v14, v60

    goto :goto_38

    :cond_47
    move-object/from16 v14, v95

    :goto_38
    iput-object v14, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->j:Ljava/lang/String;

    move-object/from16 v4, v112

    iput-object v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->k:Ljava/lang/String;

    move-object/from16 v4, v113

    iput-object v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->l:Ljava/lang/String;

    move-object/from16 v4, v114

    iput-object v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->m:Ljava/lang/String;

    iput-object v7, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->i:Ljava/util/List;

    move-object/from16 v4, v116

    const/4 v13, -0x1

    invoke-static {v13, v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->o:I

    move-object/from16 v4, v117

    invoke-static {v13, v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->p:I

    move-object/from16 v4, v96

    iput-object v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->A:Ljava/lang/String;

    iput-object v9, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->q:Ljava/lang/String;

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->r:Ljava/lang/String;

    iput-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->s:Ljava/lang/String;

    move-object/from16 v0, v100

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->t:Ljava/lang/String;

    move-object/from16 v0, v101

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->u:Ljava/lang/String;

    move-object/from16 v0, v102

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->v:Ljava/lang/String;

    move-object/from16 v0, v103

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->w:Ljava/lang/String;

    move-object/from16 v0, v104

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->x:Ljava/lang/String;

    move-object/from16 v0, v105

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->y:Ljava/lang/String;

    move-object/from16 v0, v106

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->z:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->color_references:Ljava/util/List;

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->J:Ljava/util/List;

    move-object/from16 v0, v129

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->K:Ljava/lang/String;

    move-object/from16 v0, v130

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->M:Ljava/lang/String;

    move-object/from16 v0, v131

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->N:Ljava/lang/String;

    move-object/from16 v0, v133

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->L:Ljava/lang/String;

    move-object/from16 v0, v132

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->O:Ljava/lang/String;

    const-string v0, "blush"

    move-object/from16 v12, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static/range {v28 .. v28}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_48

    move-object/from16 v0, v28

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_39
    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;

    goto :goto_3a

    :cond_48
    const/4 v13, 0x0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/g;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_49

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_39

    :cond_49
    move-object/from16 v0, v39

    :goto_3a
    if-eqz v0, :cond_4d

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->B:Ljava/lang/String;

    iget-object v0, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string v4, "glow_strength"

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_4a
    move-object/from16 v0, v39

    :goto_3b
    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->C:Ljava/lang/String;

    const-string v0, "shimmer_density"

    invoke-virtual {v3, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_4b
    move-object/from16 v0, v39

    :goto_3c
    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->E:Ljava/lang/String;

    const-string v0, "shimmer_color"

    invoke-virtual {v3, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :cond_4c
    move-object/from16 v0, v39

    :goto_3d
    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;->D:Ljava/lang/String;

    :cond_4d
    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    invoke-direct {v0, v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras$Builder;)V

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->k:Ljava/util/ArrayList;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;

    move-object/from16 v5, p3

    move-object/from16 v6, v72

    invoke-direct {v4, v6, v5, v15, v12}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v16

    iput-object v5, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;->f:Ljava/lang/String;

    move-object/from16 v5, v29

    iput-object v5, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;->e:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;->g:Ljava/lang/String;

    add-int/lit8 v1, p5, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;->i:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v0, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;->j:Ljava/lang/String;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;

    invoke-direct {v0, v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Builder;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->u:Ljava/util/HashMap;

    new-instance v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;

    invoke-direct {v1, v15}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    goto :goto_3e

    :cond_4e
    move-object/from16 v0, p0

    invoke-static {v2, v15, v12, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->f(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;)V

    :goto_3e
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    iget-object v1, v2, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/template/p;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/template/p;->a:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    move-object/from16 v39, v3

    :cond_50
    if-eqz v39, :cond_51

    goto :goto_3f

    :cond_51
    invoke-static {v2, v8, v12, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->h(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;)V

    :cond_52
    :goto_3f
    sget-object v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v11, v0}, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->d(Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-static {v2, v11}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->g(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-static {v2, v11, v12, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->h(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;)V

    :cond_53
    return-void
.end method

.method public static f(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V
    .locals 5

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a;->palettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a$a;->palette:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d;

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;

    invoke-virtual {v2, p2, p1, v3, v4}, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->a(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static g(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V
    .locals 9

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a;->patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a$b;->pattern:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    :try_start_0
    sget-object v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    sget v7, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, p1

    move-object v4, p2

    :try_start_1
    invoke-static/range {v3 .. v8}, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->a(Lcom/perfectcorp/perfectlib/ph/template/idc/e;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Ljava/lang/String;FLcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;)Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move-object p2, v4

    move-object p1, v6

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v6, p1

    move-object v4, p2

    :goto_2
    move-object p1, v0

    const-string p2, "ZipInfo"

    const-string v0, "handleDeclaredPatterns failed. "

    invoke-static {p2, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 19

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->makeup:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->presets:Ljava/util/List;

    invoke-static {v1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    const-string v2, "ZipInfo"

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->presets:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$c;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$c;->preset:Ljava/util/List;

    invoke-static {v1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->attr_version:Ljava/lang/String;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v1, v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result v9

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->presets:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$c;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$c;->preset:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->effect:Ljava/util/List;

    invoke-static {v4}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "[toProcessData] effect is empty"

    invoke-static {v2, v0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v8, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->attr_guid:Ljava/lang/String;

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    invoke-direct {v6}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;-><init>()V

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->look_categories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v15, ""

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$b;

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$b;->look_category:Ljava/util/List;

    invoke-static {v5}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$b;->look_category:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->def:Ljava/util/List;

    invoke-static {v15, v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v11, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->def:Ljava/util/List;

    invoke-static {v15, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "def"

    invoke-direct {v10, v12, v7, v11}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v6, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->m:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->enu:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "enu"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->cht:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "cht"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->chs:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "chs"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->jpn:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "jpn"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->kor:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "kor"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->deu:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "deu"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->esp:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "esp"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->fra:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "fra"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->ita:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ita"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->plk:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "plk"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->ptb:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ptb"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->ptg:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ptg"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->prt:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "prt"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->rus:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "rus"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->nld:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "nld"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->idn:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "idn"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->mys:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "mys"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->tha:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "tha"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v12, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->tur:Ljava/util/List;

    invoke-static {v15, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "tur"

    invoke-direct {v10, v13, v7, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->fas:Ljava/util/List;

    invoke-static {v15, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    const-string v12, "fas"

    invoke-direct {v10, v12, v7, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/localization/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$b;->look_category:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/template/idc/b;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->def:Ljava/util/List;

    invoke-static {v15, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/b;

    iget-object v12, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->attr_look_type:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v8

    invoke-direct/range {v10 .. v17}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v4, v6, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->eye_line:Ljava/util/List;

    const-string v4, "eye_line"

    invoke-static {v2, v4, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->f(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->eye_lash:Ljava/util/List;

    const-string v4, "eye_lash"

    invoke-static {v2, v4, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->f(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->eye_shadow:Ljava/util/List;

    const-string v4, "eye_shadow"

    invoke-static {v2, v4, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->f(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->eye_brow:Ljava/util/List;

    const-string v4, "eye_brow"

    invoke-static {v2, v4, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->f(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->eye_contact:Ljava/util/List;

    const-string v4, "eye_contact"

    invoke-static {v2, v4, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->f(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->skin_toner:Ljava/util/List;

    const-string v4, "skin_toner"

    invoke-static {v2, v4, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->f(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->blush:Ljava/util/List;

    const-string v4, "blush"

    invoke-static {v2, v4, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->f(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->skin_smooth:Ljava/util/List;

    const-string v4, "skin_smooth"

    invoke-static {v2, v4, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->f(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->lipstick:Ljava/util/List;

    const-string v4, "lipstick"

    invoke-static {v2, v4, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->f(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->hair_dye:Ljava/util/List;

    const-string v4, "hair_dye"

    invoke-static {v2, v4, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->f(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->lip_liner:Ljava/util/List;

    const-string v4, "lip_liner"

    invoke-static {v2, v4, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->f(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->face_contour_pattern:Ljava/util/List;

    const-string v4, "face_contour_pattern"

    invoke-static {v2, v4, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->f(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->nail:Ljava/util/List;

    const-string v4, "nail"

    invoke-static {v2, v4, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->f(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->ring:Ljava/util/List;

    const-string v4, "ring"

    invoke-static {v2, v4, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->g(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->bracelet:Ljava/util/List;

    const-string v5, "bracelet"

    invoke-static {v2, v5, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->g(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->watch:Ljava/util/List;

    const-string v7, "watch"

    invoke-static {v2, v7, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->g(Ljava/lang/Iterable;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    move v10, v3

    :goto_1
    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->effect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_a

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->effect:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->patterns:Ljava/util/List;

    invoke-static {v11}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->patterns:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g;

    iget-object v12, v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g;->pattern:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v14, v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a;->palettes:Ljava/util/List;

    invoke-static {v14}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_4

    iget-object v14, v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a;->palettes:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a;->palette:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a$a;

    move-object/from16 v18, v11

    move-object v11, v12

    move-object v12, v14

    const/4 v14, 0x0

    move-object v3, v7

    move-object v7, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v1

    move-object v1, v5

    move-object/from16 v5, p2

    invoke-static/range {v5 .. v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->e(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;Ljava/lang/String;FILcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a$a;Ljava/util/ArrayList;Ljava/lang/String;)V

    move-object v5, v1

    move-object v12, v11

    move-object/from16 v1, v18

    move-object v11, v2

    move-object v2, v7

    move-object v7, v3

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v18, v1

    move-object v1, v5

    move-object v3, v7

    move-object v7, v2

    move-object v2, v11

    move-object v5, v1

    move-object v11, v2

    move-object v2, v7

    move-object/from16 v1, v18

    move-object v7, v3

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v18, v1

    move-object v1, v5

    move-object v3, v7

    move-object v2, v11

    invoke-static {v6, v2}, Lcom/perfectcorp/perfectlib/ph/template/r;->h(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/util/ArrayList;)V

    goto :goto_7

    :cond_6
    move-object/from16 v18, v1

    move-object v1, v5

    move-object v3, v7

    move-object v7, v2

    iget-object v2, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->effect_type:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;->effect_type:Ljava/util/List;

    invoke-static {v15, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->watch:Ljava/util/List;

    :goto_4
    invoke-static {v2, v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->d(Ljava/util/List;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    move-object v14, v2

    goto :goto_6

    :cond_7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->bracelet:Ljava/util/List;

    goto :goto_4

    :cond_8
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->ring:Ljava/util/List;

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    :goto_6
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v5 .. v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->e(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;Ljava/lang/String;FILcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a$a;Ljava/util/ArrayList;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move-object v5, v1

    move-object v7, v3

    move-object/from16 v1, v18

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v18, v1

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;

    invoke-direct {v1, v8}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->attr_version:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->b:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->name:Ljava/util/List;

    invoke-static {v2}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v2, v15

    const/4 v3, 0x0

    goto :goto_8

    :cond_b
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->name:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/b;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->a(Lcom/perfectcorp/perfectlib/ph/template/idc/b;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->description:Ljava/util/List;

    invoke-static {v2}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v2, v15

    goto :goto_9

    :cond_c
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->description:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/b;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/b;->a(Lcom/perfectcorp/perfectlib/ph/template/idc/b;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->attr_thumbnail:Ljava/lang/String;

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->e:Ljava/lang/String;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->attr_preview_image:Ljava/lang/String;

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->f:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->g:Ljava/lang/String;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->attr_supported_mode:Ljava/lang/String;

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->h:Ljava/lang/String;

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    move-object/from16 v5, p2

    if-ne v5, v0, :cond_d

    const/4 v3, 0x1

    :cond_d
    iput-boolean v3, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->i:Z

    iput-object v15, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->j:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->e()Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    move-result-object v0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;->m:Ljava/lang/String;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$a;)V

    iget-object v1, v6, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->p:Ljava/lang/String;

    iput-object v0, v6, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->w:Ljava/lang/String;

    invoke-static {v6}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    return-object v0

    :cond_e
    :goto_a
    const-string v0, "[toProcessData] preset is empty"

    invoke-static {v2, v0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
