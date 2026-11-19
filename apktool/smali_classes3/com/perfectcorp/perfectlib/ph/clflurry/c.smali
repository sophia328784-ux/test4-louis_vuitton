.class public Lcom/perfectcorp/perfectlib/ph/clflurry/c;
.super Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;


# instance fields
.field public d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Z)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/clflurry/d;->c:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object p1

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->d(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    move-result-object v0

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    const-string v3, "_set"

    if-eq v0, v2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->a()Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    move-object v1, v3

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getEventFeature()Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    move-object v1, v3

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    return-object v1

    :pswitch_1
    const-string p0, "reshape_lip"

    return-object p0

    :pswitch_2
    const-string p0, "reshape_eye"

    return-object p0

    :pswitch_3
    const-string p0, "reshape_nose"

    return-object p0

    :pswitch_4
    const-string p0, "reshape_jaw"

    return-object p0

    :pswitch_5
    const-string p0, "reshape_cheekbone"

    return-object p0

    :pswitch_6
    const-string p0, "reshape_chin"

    return-object p0

    :pswitch_7
    const-string p0, "reshape_face"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/perfectcorp/perfectlib/ph/utility/b;Lcom/perfectcorp/perfectlib/ph/clflurry/b;)V
    .locals 4

    if-eqz p0, :cond_5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/clflurry/d;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->eventFeature:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const-string v2, "^"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v1, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->p(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v3, "_sku_guid"

    invoke-virtual {p1, v1, v3, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v1, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->r(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v3, "_item_guid"

    invoke-virtual {p1, v1, v3, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, v1, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->s(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "_pattern_guid"

    invoke-virtual {p1, v1, p0, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static i(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/util/List;Lcom/perfectcorp/perfectlib/ph/clflurry/c;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_6d

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    if-nez v4, :cond_0

    goto/16 :goto_5d

    :cond_0
    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->b:Ljava/lang/String;

    iget v6, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->h:I

    sget-object v7, Lcom/perfectcorp/perfectlib/ph/clflurry/d;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const-string v9, "_color_code"

    const-string v10, "_shimmer_intensity_list"

    const-string v11, "_intensity"

    const-string v12, "_palette_guid"

    const-string v13, "_intensity_list"

    const-string v14, "_palette_color_list"

    const-string v15, "_palette_index_list"

    move/from16 v16, v3

    const-string v3, ","

    const-string v8, ""

    move/from16 v18, v7

    const/16 v19, 0x1

    const-string v7, "^"

    packed-switch v18, :pswitch_data_0

    goto/16 :goto_5d

    :pswitch_0
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Background:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-virtual {v2, v5}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->t(Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/template/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_5d

    :cond_1
    iget-object v5, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->e:Ljava/lang/String;

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n;->i:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v21, v4

    move-object/from16 p1, v8

    move-object/from16 v11, p1

    move-object v12, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move/from16 v9, v16

    move-object/from16 v16, v20

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v9, v4, :cond_f

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n$a;

    move-object/from16 v22, v6

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n$a;->f:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move/from16 v23, v9

    invoke-static {v12}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    move/from16 v24, v12

    iget-object v12, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n$a;->a:Ljava/lang/String;

    if-eqz v24, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v7, v12}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget v4, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n$a;->d:I

    invoke-static/range {p1 .. p1}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    :goto_2
    move-object/from16 v25, v12

    move-object/from16 v12, v24

    goto :goto_3

    :cond_3
    invoke-static {v4, v7}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto :goto_2

    :goto_3
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-ltz v4, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v12}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->c()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_4
    move-object v12, v8

    :goto_4
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_5

    :goto_5
    move-object/from16 p1, v9

    move-object/from16 v9, v16

    goto :goto_6

    :cond_5
    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :goto_6
    invoke-virtual {v9, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-ltz v4, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->l()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_6
    move-object v9, v8

    :goto_7
    invoke-static/range {v20 .. v20}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_7

    goto :goto_8

    :cond_7
    invoke-static {v7, v9}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_8
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    if-ltz v4, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_8

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_8
    move-object v4, v8

    :goto_9
    invoke-static/range {v19 .. v19}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_a

    :cond_9
    invoke-static {v7, v4}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v21 .. v21}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n;->e()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    sget-object v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->CUSTOM:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-eq v4, v6, :cond_e

    if-eqz v5, :cond_c

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, v5

    :goto_b
    move-object/from16 v6, v18

    goto :goto_c

    :cond_a
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :goto_c
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    iget-object v9, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->a:Ljava/lang/String;

    if-eqz v6, :cond_b

    goto :goto_d

    :cond_b
    invoke-static {v7, v9}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_d
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_e

    :cond_c
    move-object/from16 v6, v18

    :goto_e
    invoke-static {v11}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object v6, v1

    goto :goto_f

    :cond_d
    invoke-static {v7, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_10

    :cond_e
    move-object/from16 v6, v18

    move-object/from16 v18, v6

    :goto_10
    add-int/lit8 v9, v23, 0x1

    move-object/from16 v6, v22

    move-object/from16 v12, v25

    goto/16 :goto_0

    :cond_f
    move-object/from16 v9, v16

    move-object/from16 v6, v18

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-virtual {v2, v11}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v12}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->s(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    move-object/from16 v8, p1

    invoke-virtual {v2, v0, v15, v8}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v14, v9}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v17

    invoke-virtual {v2, v0, v8}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->r(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v6}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->p(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    move-object/from16 v8, v19

    invoke-virtual {v2, v0, v13, v8}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v20

    invoke-virtual {v2, v0, v10, v8}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    check-cast v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$d;

    iget-object v1, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$d;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;

    if-eqz v1, :cond_6d

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/List;

    aput-object v0, v4, v16

    aput-object v1, v4, v19

    invoke-static {v4}, Lcom/perfectcorp/common/utility/Lists;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;

    const/16 v4, 0x5e

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;->c()Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;

    move-result-object v1

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v4

    new-instance v5, Lxx0;

    const/16 v6, 0x18

    invoke-direct {v5, v6}, Lxx0;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->s(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v1, "_wearing_style_guid"

    invoke-virtual {v2, v5, v1, v3}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->m()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->a:Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->p(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->r(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v3

    new-instance v4, Lxx0;

    const/16 v6, 0x19

    invoke-direct {v4, v6}, Lxx0;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->p(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    new-instance v3, Lxx0;

    const/16 v4, 0x1a

    invoke-direct {v3, v4}, Lxx0;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->r(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    return-void

    :pswitch_3
    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->t(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v2, v5}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->u(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->x(Ljava/lang/String;)V

    return-void

    :pswitch_4
    check-cast v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$j;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$j;->i:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->x(Ljava/lang/String;)V

    return-void

    :pswitch_5
    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->w(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object v1

    if-nez v1, :cond_12

    goto/16 :goto_5d

    :cond_12
    int-to-float v1, v6

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->x(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v11, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_6
    move-object v0, v4

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d:Ljava/lang/String;

    sget-object v5, Lcom/perfectcorp/perfectlib/ph/template/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v5

    iget-object v10, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;->e()Ljava/util/List;

    move-result-object v10

    sget-object v13, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_STICK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v14, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->r(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    goto :goto_11

    :cond_13
    if-eqz v5, :cond_6d

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v13

    const/4 v10, 0x0

    :goto_11
    if-nez v13, :cond_14

    goto/16 :goto_5d

    :cond_14
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v18, v8

    move/from16 v15, v16

    :goto_12
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    if-ge v15, v8, :cond_15

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    :cond_15
    invoke-static {v3, v14}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->n(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->w(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object v14

    if-nez v14, :cond_16

    goto/16 :goto_5d

    :cond_16
    int-to-float v6, v6

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickProfile;

    if-eqz v14, :cond_17

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickProfile;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickType;

    invoke-virtual {v14}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickType;->b()Ljava/lang/String;

    move-result-object v14

    goto :goto_13

    :cond_17
    const/4 v14, 0x0

    :goto_13
    if-eqz v5, :cond_18

    iget-object v15, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->e:Ljava/lang/String;

    if-eqz v15, :cond_18

    iget-object v0, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->a:Ljava/lang/String;

    invoke-virtual {v2, v15}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->t(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->u(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v12, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v20, v1

    move/from16 v21, v6

    goto/16 :goto_18

    :cond_18
    if-eqz v10, :cond_1e

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;->f()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;->f()Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v20, v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v21, v6

    move/from16 v6, v19

    if-ne v1, v6, :cond_1b

    move/from16 v6, v16

    if-eqz v5, :cond_19

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_14

    :cond_19
    move-object/from16 v0, v18

    :goto_14
    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->t(Ljava/lang/String;)V

    if-eqz v15, :cond_1a

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_15

    :cond_1a
    move-object/from16 v0, v18

    :goto_15
    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->u(Ljava/lang/String;)V

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v12, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_1b
    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v7, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->p(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v5, 0x0

    goto :goto_17

    :cond_1c
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->D(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->colorReferences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->itemGuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_1d
    :goto_17
    invoke-static {v7, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->r(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->w(Ljava/lang/String;)V

    goto :goto_18

    :cond_1e
    move-object/from16 v20, v1

    move/from16 v21, v6

    const/4 v5, 0x0

    :goto_18
    invoke-virtual {v2, v5, v9, v3}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->x(Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v11, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_texture"

    invoke-virtual {v2, v5, v0, v14}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    invoke-static/range {v20 .. v20}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->y(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "_style"

    invoke-virtual {v2, v5, v1, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->v(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->q(Ljava/lang/String;)V

    return-void

    :pswitch_7
    move-object/from16 v18, v8

    move/from16 v6, v16

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v18

    move-object v8, v5

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    :goto_19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v17, v12

    const-string v12, "Perfect"

    if-ge v6, v4, :cond_2f

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;

    if-eqz v4, :cond_2d

    iget-object v1, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->c:Ljava/lang/String;

    move/from16 v19, v6

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d:Ljava/lang/String;

    move-object/from16 v20, v13

    iget-object v13, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->g:Ljava/util/ArrayList;

    iget v4, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;->i:I

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2c

    sget-object v21, Lcom/perfectcorp/perfectlib/ph/template/e;->a:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v21, v10

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v10

    if-eqz v10, :cond_2e

    move-object/from16 v22, v12

    iget-object v12, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->e:Ljava/lang/String;

    move-object/from16 v23, v12

    invoke-static {v5}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_1a

    :cond_20
    invoke-static {v7, v6}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1a
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_21

    goto :goto_1b

    :cond_21
    invoke-static {v7, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1b
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1c

    :cond_22
    invoke-static {v4, v7}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1c
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_23

    if-ltz v4, :cond_23

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_23
    move-object/from16 v1, v18

    :goto_1d
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    move-object/from16 v1, v22

    goto :goto_1e

    :cond_24
    iget-object v1, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->a:Ljava/lang/String;

    :goto_1e
    invoke-static/range {v21 .. v21}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_26

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_25

    goto :goto_1f

    :cond_25
    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_26
    :goto_1f
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    move-object/from16 v12, v22

    goto :goto_20

    :cond_27
    move-object/from16 v12, v23

    :goto_20
    invoke-static {v11}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_28

    goto :goto_21

    :cond_28
    invoke-static {v7, v12}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_29
    :goto_21
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_2a

    if-ltz v4, :cond_2a

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_2a
    move-object/from16 v1, v18

    :goto_22
    invoke-static/range {v17 .. v17}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2b

    goto :goto_23

    :cond_2b
    invoke-static {v7, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_23
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v16, v16, 0x1

    goto :goto_25

    :cond_2c
    move-object/from16 v21, v10

    goto :goto_24

    :cond_2d
    move/from16 v19, v6

    move-object/from16 v21, v10

    move-object/from16 v20, v13

    :cond_2e
    :goto_24
    move-object/from16 v12, v17

    move-object/from16 v10, v21

    :goto_25
    add-int/lit8 v6, v19, 0x1

    move-object/from16 v1, p1

    move-object/from16 v13, v20

    goto/16 :goto_19

    :cond_2f
    move-object/from16 v21, v10

    move-object/from16 v22, v12

    move-object/from16 v20, v13

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-virtual {v2, v5}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->w(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v8}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->s(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v15, v9}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->n(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v14, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    move-object/from16 v1, v18

    if-nez v0, :cond_30

    move-object/from16 v10, v21

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-static {v3, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-virtual {v2, v5, v3}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->r(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    goto :goto_26

    :cond_30
    move-object/from16 v0, v22

    :cond_31
    :goto_26
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {v0, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->p(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    :goto_27
    move-object/from16 v12, v17

    move-object/from16 v3, v20

    goto :goto_28

    :cond_32
    const/4 v5, 0x0

    goto :goto_27

    :goto_28
    invoke-virtual {v2, v5, v3, v12}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->v(Ljava/lang/String;)V

    return-void

    :pswitch_8
    move-object v1, v8

    move-object v3, v13

    move/from16 v6, v16

    move-object v5, v4

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;->b()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/perfectcorp/perfectlib/ph/template/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v9

    if-nez v9, :cond_33

    goto/16 :goto_5d

    :cond_33
    iget-object v11, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->e:Ljava/lang/String;

    iget-object v13, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;->i:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p1, v1

    move-object/from16 v16, p1

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v20, v18

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v5

    const/4 v1, 0x0

    :goto_29
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_40

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g$a;

    move/from16 v25, v1

    iget-object v1, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g$a;->f:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v26, v13

    invoke-static/range {p1 .. p1}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    move-object/from16 v28, v4

    iget-object v4, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g$a;->a:Ljava/lang/String;

    if-eqz v27, :cond_34

    goto :goto_2a

    :cond_34
    invoke-static {v7, v4}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2a
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g$a;->d:I

    invoke-static/range {v21 .. v21}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_35

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    :goto_2b
    move-object/from16 p1, v4

    move-object/from16 v4, v21

    goto :goto_2c

    :cond_35
    invoke-static {v5, v7}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto :goto_2b

    :goto_2c
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    if-ltz v5, :cond_36

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_36

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->c()Ljava/lang/String;

    move-result-object v4

    goto :goto_2d

    :cond_36
    move-object/from16 v4, v18

    :goto_2d
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ltz v5, :cond_37

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_37

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->l()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2e

    :cond_37
    move-object/from16 v4, v18

    :goto_2e
    invoke-static/range {v23 .. v23}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_38

    goto :goto_2f

    :cond_38
    invoke-static {v7, v4}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2f
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    if-ltz v5, :cond_39

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_39

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    :cond_39
    move-object/from16 v1, v18

    :goto_30
    invoke-static/range {v22 .. v22}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3a

    goto :goto_31

    :cond_3a
    invoke-static {v7, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_31
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v24 .. v24}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;->e()Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    sget-object v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->CUSTOM:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-eq v1, v4, :cond_3f

    if-eqz v11, :cond_3d

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move-object v1, v11

    :goto_32
    move-object/from16 v4, v20

    goto :goto_33

    :cond_3b
    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    :goto_33
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v17 .. v17}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    iget-object v5, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->a:Ljava/lang/String;

    if-eqz v4, :cond_3c

    goto :goto_34

    :cond_3c
    invoke-static {v7, v5}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_34
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_35

    :cond_3d
    move-object/from16 v4, v20

    :goto_35
    invoke-static/range {v16 .. v16}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3e

    move-object v4, v8

    goto :goto_36

    :cond_3e
    invoke-static {v7, v8}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_36
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_37

    :cond_3f
    move-object/from16 v4, v20

    move-object/from16 v20, v4

    :goto_37
    add-int/lit8 v1, v25, 0x1

    move-object/from16 v13, v26

    move-object/from16 v4, v28

    goto/16 :goto_29

    :cond_40
    move-object/from16 v28, v4

    move-object/from16 v26, v13

    move-object/from16 v4, v20

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_41

    move-object/from16 v0, v16

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v12, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, p1

    invoke-virtual {v2, v6}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->x(Ljava/lang/String;)V

    move-object/from16 v8, v17

    invoke-virtual {v2, v8}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->u(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->t(Ljava/lang/String;)V

    :goto_38
    move-object/from16 v0, v21

    goto :goto_39

    :cond_41
    move-object/from16 v6, p1

    move-object/from16 v0, v16

    move-object/from16 v8, v17

    const/4 v5, 0x0

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->w(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->s(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v8}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->r(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v4}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->p(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    goto :goto_38

    :goto_39
    invoke-virtual {v2, v5, v15, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->n(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v14, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v22

    invoke-virtual {v2, v5, v3, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v23

    invoke-virtual {v2, v5, v10, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->v(Ljava/lang/String;)V

    move-object/from16 v4, v28

    iget-object v0, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->q(Ljava/lang/String;)V

    return-void

    :pswitch_9
    move-object/from16 v18, v8

    move-object v3, v13

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/perfectcorp/perfectlib/ph/template/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v5

    if-nez v5, :cond_42

    goto/16 :goto_5d

    :cond_42
    iget-object v6, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->e:Ljava/lang/String;

    iget-object v8, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;->i:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v4

    move-object/from16 p1, v18

    move-object/from16 v12, p1

    move-object v13, v12

    move-object/from16 v16, v13

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    const/4 v11, 0x0

    :goto_3a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-ge v11, v4, :cond_4f

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;

    move-object/from16 v22, v8

    iget-object v8, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->f:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_43

    iget-object v13, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->a:Ljava/lang/String;

    :cond_43
    iget v4, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;->d:I

    move/from16 v23, v11

    invoke-static/range {p1 .. p1}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_44

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    :goto_3b
    move-object/from16 v25, v13

    move-object/from16 v13, v24

    goto :goto_3c

    :cond_44
    invoke-static {v4, v7}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto :goto_3b

    :goto_3c
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-ltz v4, :cond_45

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_45

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v13}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->c()Ljava/lang/String;

    move-result-object v13

    goto :goto_3d

    :cond_45
    move-object/from16 v13, v18

    :goto_3d
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ltz v4, :cond_46

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_46

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v13}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->l()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    :goto_3e
    move-object/from16 p1, v11

    goto :goto_3f

    :cond_46
    move-object/from16 v13, v18

    goto :goto_3e

    :goto_3f
    invoke-static/range {v20 .. v20}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_47

    goto :goto_40

    :cond_47
    invoke-static {v7, v13}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_40
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    if-ltz v4, :cond_48

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_48

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_41

    :cond_48
    move-object/from16 v4, v18

    :goto_41
    invoke-static/range {v19 .. v19}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_49

    goto :goto_42

    :cond_49
    invoke-static {v7, v4}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_42
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v21 .. v21}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;->e()Z

    move-result v4

    if-nez v4, :cond_4e

    iget-object v4, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    sget-object v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->CUSTOM:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-eq v4, v8, :cond_4e

    if-eqz v6, :cond_4c

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4a

    move-object v4, v6

    :goto_43
    move-object/from16 v8, v17

    goto :goto_44

    :cond_4a
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_43

    :goto_44
    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v16}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    iget-object v11, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->a:Ljava/lang/String;

    if-eqz v8, :cond_4b

    goto :goto_45

    :cond_4b
    invoke-static {v7, v11}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_45
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_46

    :cond_4c
    move-object/from16 v8, v17

    :goto_46
    invoke-static {v12}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4d

    move-object v8, v1

    goto :goto_47

    :cond_4d
    invoke-static {v7, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_47
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_48

    :cond_4e
    move-object/from16 v8, v17

    move-object/from16 v17, v8

    :goto_48
    add-int/lit8 v11, v23, 0x1

    move-object/from16 v8, v22

    move-object/from16 v13, v25

    goto/16 :goto_3a

    :cond_4f
    move-object/from16 v22, v8

    move-object/from16 v8, v17

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-virtual {v2, v12}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->w(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->x(Ljava/lang/String;)V

    move-object/from16 v0, p1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v15, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->n(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v14, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v5, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->r(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v8}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->p(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v5, v3, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v5, v10, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->v(Ljava/lang/String;)V

    move-object/from16 v4, v21

    iget-object v0, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->q(Ljava/lang/String;)V

    return-void

    :pswitch_a
    move-object/from16 v18, v8

    move-object v3, v13

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$m;

    iget-object v1, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$m;->i:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_50
    :goto_49
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_51

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Lcom/perfectcorp/perfectlib/ph/template/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v8

    if-eqz v8, :cond_50

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_51
    iget-object v6, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$m;->k:Ljava/util/ArrayList;

    iget-object v8, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->g:Ljava/util/ArrayList;

    iget-boolean v9, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$m;->l:Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget-object v11, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move/from16 v22, v9

    move-object/from16 p1, v18

    move-object/from16 v13, p1

    move-object/from16 v17, v13

    move-object/from16 v20, v17

    move-object/from16 v21, v20

    const/4 v9, 0x0

    :goto_4a
    if-ge v9, v10, :cond_60

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    move-object/from16 v24, v8

    const/4 v8, 0x1

    if-le v10, v8, :cond_53

    invoke-static/range {p1 .. p1}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    move/from16 v26, v10

    iget-object v10, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->c:Ljava/lang/String;

    if-eqz v25, :cond_52

    goto :goto_4b

    :cond_52
    invoke-static {v7, v10}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_4b
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4c

    :cond_53
    move/from16 v26, v10

    move-object/from16 v8, p1

    :goto_4c
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_54

    move-object/from16 v25, v4

    const/4 v10, 0x0

    goto :goto_4d

    :cond_54
    if-eqz v22, :cond_55

    add-int/lit8 v10, v26, -0x1

    sub-int/2addr v10, v9

    move-object/from16 v25, v4

    goto :goto_4d

    :cond_55
    move-object/from16 v25, v4

    move v10, v9

    :goto_4d
    invoke-static/range {v17 .. v17}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_56

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_4e

    :cond_56
    invoke-static {v10, v7}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_4e
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v23 .. v23}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v9, v4, :cond_57

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_4f

    :cond_57
    const/4 v4, 0x0

    :goto_4f
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_58

    goto :goto_50

    :cond_58
    invoke-static {v7, v4}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_50
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v10, 0x1

    if-le v4, v10, :cond_59

    move v4, v9

    :goto_51
    const/4 v10, -0x1

    goto :goto_52

    :cond_59
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v10, :cond_5a

    const/4 v4, 0x0

    goto :goto_51

    :cond_5a
    const/4 v4, -0x1

    goto :goto_51

    :goto_52
    if-eq v4, v10, :cond_5f

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-object/from16 v23, v5

    iget-object v5, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->e:Ljava/lang/String;

    if-eqz v5, :cond_5d

    invoke-static/range {v20 .. v20}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    move-object/from16 v27, v6

    iget-object v6, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->e:Ljava/lang/String;

    if-eqz v20, :cond_5b

    goto :goto_53

    :cond_5b
    invoke-static {v7, v6}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v18}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->a:Ljava/lang/String;

    if-eqz v6, :cond_5c

    goto :goto_54

    :cond_5c
    invoke-static {v7, v10}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_54
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_55

    :cond_5d
    move-object/from16 v27, v6

    :goto_55
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v13}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5e

    goto :goto_56

    :cond_5e
    invoke-static {v7, v4}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_56
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    goto :goto_57

    :cond_5f
    move-object/from16 v23, v5

    move-object/from16 v27, v6

    :goto_57
    add-int/lit8 v9, v9, 0x1

    move-object/from16 p1, v8

    move-object/from16 v5, v23

    move-object/from16 v8, v24

    move-object/from16 v4, v25

    move/from16 v10, v26

    move-object/from16 v6, v27

    goto/16 :goto_4a

    :cond_60
    move/from16 v26, v10

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-virtual {v2, v13}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->w(Ljava/lang/String;)V

    move-object/from16 v8, p1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v8}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->s(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v5, v15, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->n(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v14, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v5, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->r(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v5, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->p(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v5, v3, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->v(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-virtual {v2, v11}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->q(Ljava/lang/String;)V

    return-void

    :pswitch_b
    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->c()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_61

    goto/16 :goto_5d

    :cond_61
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    move/from16 v8, v16

    :goto_58
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_62

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->c()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_58

    :cond_62
    invoke-static {v3, v7}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->n(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->w(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object v8

    if-nez v8, :cond_63

    goto/16 :goto_5d

    :cond_63
    sget-object v10, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Wig:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    if-ne v0, v10, :cond_64

    rsub-int/lit8 v0, v6, 0x64

    int-to-float v0, v0

    goto :goto_59

    :cond_64
    int-to-float v0, v6

    :goto_59
    iget-object v6, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->c:Ljava/lang/String;

    if-eqz v6, :cond_65

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->t(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->u(Ljava/lang/String;)V

    :cond_65
    invoke-virtual {v2, v7}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->x(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v12, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6, v9, v3}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v11, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->v(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->q(Ljava/lang/String;)V

    return-void

    :pswitch_c
    move-object/from16 v18, v8

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Eyelashes:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    if-ne v0, v1, :cond_67

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v0

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->c:Ljava/lang/String;

    goto :goto_5a

    :cond_66
    move-object/from16 v8, v18

    :goto_5a
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LASHES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0, v8}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->d(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-eq v0, v1, :cond_69

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->a()Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    move-result-object v0

    goto :goto_5b

    :cond_67
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Concealer:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    if-eq v0, v1, :cond_68

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Bronzer:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    if-ne v0, v1, :cond_69

    :cond_68
    :goto_5b
    iput-object v0, v2, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    :cond_69
    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v1

    if-nez v1, :cond_6a

    goto :goto_5d

    :cond_6a
    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    move/from16 v8, v16

    :goto_5c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_6b

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-virtual {v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->c()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5c

    :cond_6b
    invoke-static {v3, v7}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->n(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->a()Ljava/lang/String;

    move-result-object v7

    int-to-float v6, v6

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->e:Ljava/lang/String;

    if-eqz v8, :cond_6c

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->a:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->t(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->u(Ljava/lang/String;)V

    :cond_6c
    const/4 v1, 0x0

    invoke-virtual {v2, v1, v12, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v9, v3}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->x(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v11, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->v(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->q(Ljava/lang/String;)V

    :cond_6d
    :goto_5d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Ljava/util/ArrayList;Lcom/perfectcorp/perfectlib/ph/clflurry/b;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/utility/b;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v3, v4, Lcom/perfectcorp/perfectlib/ph/utility/b;->e:Ljava/lang/String;

    :cond_0
    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/utility/b;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/ph/utility/b;->b:Ljava/lang/String;

    sget-object v7, Lcom/perfectcorp/perfectlib/PerfectEffect;->WATCH:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v5, v7, :cond_1

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->WATCH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    sget-object v7, Lcom/perfectcorp/perfectlib/PerfectEffect;->BRACELET:Lcom/perfectcorp/perfectlib/PerfectEffect;

    const-string v8, "_skuset_guid"

    if-ne v5, v7, :cond_3

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BRACELET:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Bracelet:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    :goto_3
    invoke-virtual {p1, v5, v8, v6}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_2

    :cond_3
    sget-object v7, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v5, v7, :cond_4

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->RING:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Ring:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    goto :goto_3

    :cond_4
    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NAIL:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    goto :goto_1

    :goto_4
    invoke-static {v4, p1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->g(Lcom/perfectcorp/perfectlib/ph/utility/b;Lcom/perfectcorp/perfectlib/ph/clflurry/b;)V

    goto :goto_0

    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    const-string v4, "jewelry_look_guid"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {p1, v0, v2, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->l(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    return-void
.end method

.method public static m(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/ph/clflurry/a;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->i(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/util/List;Lcom/perfectcorp/perfectlib/ph/clflurry/c;)V

    return-void
.end method

.method public static varargs n(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-le v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;Lcom/perfectcorp/perfectlib/ph/clflurry/b;)V
    .locals 8

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->lookGuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->lookGuid:Ljava/lang/String;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    const-string v2, "nail_look_guid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    array-length v2, p0

    const-string v3, ""

    const/4 v4, 0x0

    move-object v5, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v6, p0, v4

    iget-boolean v7, v6, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->is_enabled:Z

    if-eqz v7, :cond_1

    iget-object v7, v6, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->skuGuid:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v6, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->skuItemGuid:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v6, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->wearingStyleGuid:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v5, v6, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->wearingStyleGuid:Ljava/lang/String;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v0, v3

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, "^"

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v4, v2}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v4, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_7

    const-string p0, "_wearing_style_guid"

    invoke-virtual {p1, v1, p0, v5}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NAIL:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, p0, v1, v2}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->l(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-virtual {p1, v1, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->p(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->r(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final f(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/util/List;)V
    .locals 9

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->d()Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->j(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x1

    const/16 v3, 0x21

    const/16 v4, 0x20

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    sget-object v6, Lcom/perfectcorp/perfectlib/ph/clflurry/d;->c:[I

    iget-object v7, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v4, :cond_3

    if-eq v6, v3, :cond_2

    move-object v6, v5

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->j:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;

    goto :goto_1

    :cond_3
    iget-object v6, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->f:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    :goto_1
    iget-object v7, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->n:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-static {v7, v6, p2}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->d()Ljava/util/EnumSet;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v7, Lcom/perfectcorp/perfectlib/ph/clflurry/d;->c:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v4, :cond_7

    if-eq v7, v3, :cond_6

    move-object v7, v5

    goto :goto_3

    :cond_6
    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->j:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;

    goto :goto_3

    :cond_7
    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->f:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    :goto_3
    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->isReshape()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {p1, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->n(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    move v8, v2

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    :goto_4
    invoke-static {v6, v7, v8}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    const-string p1, "^"

    invoke-static {p1, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "user_select_feature"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    if-eqz p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 4

    invoke-static {p1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->l(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/clflurry/d;->c:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string p0, "Unexpected value: "

    invoke-static {v1, p0}, La61;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v1, "lippeak"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    const-string v1, "lipheight_lower"

    goto :goto_1

    :pswitch_2
    const-string v1, "lipheight_upper"

    goto :goto_1

    :pswitch_3
    const-string v1, "lipheight_overall"

    goto :goto_1

    :pswitch_4
    const-string v1, "lipwidth"

    goto :goto_1

    :pswitch_5
    const-string v1, "lipsize"

    goto :goto_1

    :pswitch_6
    const-string v1, "eyeangle"

    goto :goto_1

    :pswitch_7
    const-string v1, "eyedistance"

    goto :goto_1

    :pswitch_8
    const-string v1, "eyeheight"

    goto :goto_1

    :pswitch_9
    const-string v1, "eyewidth"

    goto :goto_1

    :pswitch_a
    const-string v1, "eyesize_right"

    goto :goto_1

    :pswitch_b
    const-string v1, "eyesize_left"

    goto :goto_1

    :pswitch_c
    const-string v1, "eyesize_overall"

    goto :goto_1

    :pswitch_d
    const-string v1, "nosewidth"

    goto :goto_1

    :pswitch_e
    const-string v1, "nosewing"

    goto :goto_1

    :pswitch_f
    const-string v1, "nosetip"

    goto :goto_1

    :pswitch_10
    const-string v1, "nosebridge"

    goto :goto_1

    :pswitch_11
    const-string v1, "noselift"

    goto :goto_1

    :pswitch_12
    const-string v1, "nosesize"

    goto :goto_1

    :pswitch_13
    const-string v1, "jaw"

    goto :goto_1

    :pswitch_14
    const-string v1, "cheekbone"

    goto :goto_1

    :pswitch_15
    const-string v1, "facewidth"

    goto :goto_1

    :pswitch_16
    const-string v1, "chinlength"

    goto :goto_1

    :pswitch_17
    const-string v1, "chinshape_right"

    goto :goto_1

    :pswitch_18
    const-string v1, "chinshape_left"

    goto :goto_1

    :pswitch_19
    const-string v1, "chinshape_overall"

    goto :goto_1

    :pswitch_1a
    const-string v1, "faceshape_right"

    goto :goto_1

    :pswitch_1b
    const-string v1, "faceshape_left"

    goto :goto_1

    :pswitch_1c
    const-string v1, "faceshape_overall"

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "^"

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "reshape_use"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final l(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 5

    invoke-static {p1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NAIL:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v3, v4, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->d(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    const-string p1, "^"

    invoke-static {p1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "user_select_feature"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final p(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V
    .locals 1

    const-string v0, "_sku_guid_list"

    invoke-virtual {p0, p1, v0, p2}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 2

    const-string v0, "_skuset_guid"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final r(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V
    .locals 1

    const-string v0, "_item_guid_list"

    invoke-virtual {p0, p1, v0, p2}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final s(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V
    .locals 1

    const-string v0, "_pattern_guid_list"

    invoke-virtual {p0, p1, v0, p2}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "_sku_guid"

    invoke-virtual {p0, v0, v1, p1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "_item_guid"

    invoke-virtual {p0, v0, v1, p1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 2

    const-string v0, "_color_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 2

    const-string v0, "_palette_guid_list"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "_pattern_guid"

    invoke-virtual {p0, v0, v1, p1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->h(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
