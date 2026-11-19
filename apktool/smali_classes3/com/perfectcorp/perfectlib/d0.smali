.class public final synthetic Lcom/perfectcorp/perfectlib/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/d0;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/d0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/d0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Lcom/perfectcorp/perfectlib/d0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/d0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/d0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    check-cast p1, Ljava/util/List;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/clflurry/b;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->a:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->a:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {v2, v3, v4}, Lcom/perfectcorp/perfectlib/ph/clflurry/b;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->a:Ljava/lang/String;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    const-string v4, "look_guid"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    invoke-static {p0, v4}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->c(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;

    iget v4, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;->j:I

    iget v6, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;->j:I

    if-le v4, v6, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_1
    if-ge v4, v6, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_7

    :cond_2
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v3, v1, :cond_3

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;

    move-result-object v1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v3, v1, :cond_4

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->e(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;

    move-result-object v1

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v3, v1, :cond_5

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->g(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;

    move-result-object v1

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_LINER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v3, v1, :cond_6

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->i(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n;

    move-result-object v1

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v3, v1, :cond_8

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    move-result-object v3

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;

    if-eqz v4, :cond_7

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$m;

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;

    invoke-direct {v4, v3, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$m;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;)V

    goto :goto_2

    :cond_7
    new-instance v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$m;

    invoke-direct {v4, v3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$m;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;)V

    :goto_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_8
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_ART:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v3, v1, :cond_f

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_ART_LAYER_2:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v3, v4, :cond_9

    goto :goto_4

    :cond_9
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CUBE_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v3, v1, :cond_e

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->REAL_3D_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v3, v1, :cond_a

    goto :goto_3

    :cond_a
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v3, v1, :cond_b

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    move-result-object v3

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$d;

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v6

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;

    invoke-direct {v4, v6, v3, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$d;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;)V

    goto :goto_2

    :cond_b
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v3, v1, :cond_c

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    move-result-object v3

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$b;

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v3

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    invoke-direct {v4, v3, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$b;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;)V

    goto :goto_2

    :cond_c
    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_STICK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v3, v1, :cond_d

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->h(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;

    move-result-object v1

    goto/16 :goto_1

    :cond_d
    invoke-static {p0, v3}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    move-result-object v1

    goto/16 :goto_1

    :cond_e
    :goto_3
    invoke-static {p0, v3}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$h;

    move-result-object v1

    goto/16 :goto_1

    :cond_f
    :goto_4
    sget-object v3, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a:Ljava/util/HashMap;

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$j;

    invoke-direct {v3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$j;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_ART_LAYER_2:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    filled-new-array {v1, v6}, [Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->j(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    iget-object v1, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$j;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$j;->j:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_12
    :goto_7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_8
    iget-object v1, p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->a:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->i(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/util/List;Lcom/perfectcorp/perfectlib/ph/clflurry/c;)V

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData$EventData;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->n(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v5

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, v1, v0, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->l(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    iget-object p0, v2, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    invoke-virtual {v2, p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c(Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/d0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ContentPreloader;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/d0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    check-cast p1, Ljava/lang/Throwable;

    const-string p1, "Look"

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, v0, Lcom/perfectcorp/perfectlib/ContentPreloader;->j:Ljava/util/Set;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_14
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
