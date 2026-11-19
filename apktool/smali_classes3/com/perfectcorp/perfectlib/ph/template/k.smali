.class final Lcom/perfectcorp/perfectlib/ph/template/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/perfectcorp/perfectlib/ph/template/j;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/template/j;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->b:Lcom/perfectcorp/perfectlib/ph/template/j;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->c:Ljava/lang/String;

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->b:Lcom/perfectcorp/perfectlib/ph/template/j;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/template/j;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-static {v7, v5, v6}, Lcom/perfectcorp/perfectlib/ph/template/e;->m(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    :cond_1
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const/16 v8, 0x10

    const/4 v9, 0x1

    if-ne v6, v7, :cond_7

    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    iget v12, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->l:I

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    sget-object v13, Lcom/perfectcorp/perfectlib/ph/template/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v11}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v11

    if-nez v11, :cond_2

    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v8}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v8

    goto :goto_1

    :cond_2
    iget-object v13, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->g:Ljava/util/ArrayList;

    invoke-static {v13}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {v13}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v8

    goto :goto_1

    :cond_3
    new-instance v13, Ln2;

    invoke-direct {v13, v11, v8}, Ln2;-><init>(Ljava/lang/Object;I)V

    new-instance v8, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v8, v13}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    :goto_1
    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->b:Lcom/perfectcorp/perfectlib/ph/template/j;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/template/j;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v4, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->b:Lcom/perfectcorp/perfectlib/ph/template/j;

    const/4 v10, -0x1

    if-eq v12, v10, :cond_6

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/template/j;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v8, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    sget-object v8, Lcom/perfectcorp/perfectlib/ph/template/l;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v8, v5

    if-eq v5, v9, :cond_5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_4

    goto/16 :goto_a

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->b:Lcom/perfectcorp/perfectlib/ph/template/j;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/template/j;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    :goto_3
    invoke-static {v5, v6, v4, v8}, Lcom/perfectcorp/perfectlib/ph/template/e;->l(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    goto/16 :goto_a

    :cond_5
    iget-object v5, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->b:Lcom/perfectcorp/perfectlib/ph/template/j;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/template/j;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->HIGHLIGHT:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    goto :goto_3

    :cond_6
    iget-object v5, v8, Lcom/perfectcorp/perfectlib/ph/template/j;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->HIGHLIGHT:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {v5, v6, v4, v8}, Lcom/perfectcorp/perfectlib/ph/template/e;->l(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    goto :goto_2

    :cond_7
    sget-object v10, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v6, v10, :cond_c

    sget-object v11, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v6, v11, :cond_c

    sget-object v11, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v6, v11, :cond_8

    goto :goto_5

    :cond_8
    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_TONER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v6, v8, :cond_a

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    sget-object v10, Lcom/perfectcorp/perfectlib/ph/template/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v9}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v9

    invoke-static {v9}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v9, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->b:Lcom/perfectcorp/perfectlib/ph/template/j;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/template/j;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->b:Lcom/perfectcorp/perfectlib/ph/template/j;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/template/j;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_4

    :cond_9
    move-object v5, v4

    :goto_4
    invoke-static {v8, v5, v6}, Lcom/perfectcorp/perfectlib/ph/template/e;->j(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    goto/16 :goto_a

    :cond_a
    iget-object v8, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->b:Lcom/perfectcorp/perfectlib/ph/template/j;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/template/j;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_4

    :cond_b
    iget-object v5, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    goto :goto_4

    :cond_c
    :goto_5
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    sget-object v13, Lcom/perfectcorp/perfectlib/ph/template/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v12}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v12

    if-nez v12, :cond_d

    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v8}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v8

    goto :goto_6

    :cond_d
    iget-object v13, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->g:Ljava/util/ArrayList;

    invoke-static {v13}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-static {v13}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v8

    goto :goto_6

    :cond_e
    new-instance v13, Ln2;

    invoke-direct {v13, v12, v8}, Ln2;-><init>(Ljava/lang/Object;I)V

    new-instance v8, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v8, v13}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    :goto_6
    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->b:Lcom/perfectcorp/perfectlib/ph/template/j;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/template/j;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v4, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_10

    if-ne v6, v10, :cond_10

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->b:Lcom/perfectcorp/perfectlib/ph/template/j;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/template/j;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v8

    if-eqz v8, :cond_f

    move-object v8, v5

    goto :goto_7

    :cond_f
    move-object v8, v4

    :goto_7
    invoke-static {v1, v8, v6}, Lcom/perfectcorp/perfectlib/ph/template/e;->j(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    move v1, v9

    :cond_10
    if-nez v2, :cond_12

    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v6, v8, :cond_12

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->b:Lcom/perfectcorp/perfectlib/ph/template/j;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/j;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v8

    if-eqz v8, :cond_11

    move-object v8, v5

    goto :goto_8

    :cond_11
    move-object v8, v4

    :goto_8
    invoke-static {v2, v8, v6}, Lcom/perfectcorp/perfectlib/ph/template/e;->j(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    move v2, v9

    :cond_12
    if-nez v3, :cond_14

    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v6, v8, :cond_14

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->b:Lcom/perfectcorp/perfectlib/ph/template/j;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/template/j;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_9

    :cond_13
    move-object v5, v4

    :goto_9
    invoke-static {v3, v5, v6}, Lcom/perfectcorp/perfectlib/ph/template/e;->j(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    move v3, v9

    :cond_14
    :goto_a
    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_ART:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v6, v4, :cond_0

    if-eq v6, v7, :cond_0

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v6, v4, :cond_0

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v6, v4, :cond_0

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v6, v4, :cond_15

    goto/16 :goto_0

    :cond_15
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/k;->a:Ljava/util/List;

    return-object p0
.end method
