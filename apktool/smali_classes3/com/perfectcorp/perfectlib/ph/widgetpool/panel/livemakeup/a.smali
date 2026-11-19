.class public abstract Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;
    .locals 3

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    return-object p0
.end method

.method public static b(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;
    .locals 4

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;

    if-nez v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;->a:Ljava/util/List;

    new-instance v2, Lxx0;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Lxx0;-><init>(I)V

    invoke-static {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {p0, v0, v3}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->n(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, v1, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method public static c(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;
    .locals 13

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    move-result-object v1

    if-nez p1, :cond_0

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v3

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIII)V

    return-object v2

    :cond_0
    new-instance v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {p0, v0, v2}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v4

    iget-object v5, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->d:Ljava/lang/String;

    iget-object v6, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->e:Ljava/lang/String;

    iget-object v7, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->b:Ljava/lang/String;

    iget-object v8, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v9, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->h:I

    iget v11, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->i:I

    iget v12, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->j:I

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIII)V

    iget p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->a:I

    iput p0, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;->j:I

    return-object v3
.end method

.method public static d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;
    .locals 10

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    :goto_0
    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {p0, p1, v2}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v2

    move v3, v0

    move-object v0, v1

    move-object v1, v2

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->m(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v2

    move v4, v3

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->j(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v4

    move v6, v5

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->n(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object p0

    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_STICK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const/4 v9, 0x0

    if-eq p1, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->y(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object v9, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->a:Ljava/lang/String;

    :cond_2
    :goto_1
    if-gtz v6, :cond_3

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result p0

    move v8, p0

    :goto_2
    move-object v6, v9

    goto :goto_3

    :cond_3
    move v8, v6

    goto :goto_2

    :goto_3
    invoke-direct/range {v0 .. v8}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;I)V

    return-object v0
.end method

.method public static e(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;
    .locals 4

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;

    if-nez v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;->a:Ljava/util/List;

    new-instance v2, Lxx0;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Lxx0;-><init>(I)V

    invoke-static {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {p0, v0, v3}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->n(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, v1, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method public static f(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$h;
    .locals 2

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CUBE_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->REAL_3D_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Unsupported mode "

    invoke-static {p1, p0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$h;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->c:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$h;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static g(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;
    .locals 4

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;

    if-nez v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->a:Ljava/util/List;

    new-instance v2, Lxx0;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lxx0;-><init>(I)V

    invoke-static {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {p0, v0, v3}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/util/List;)V

    return-object v2
.end method

.method public static h(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;
    .locals 11

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_STICK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {v1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->n(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->j(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v2

    move v5, v3

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v0

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;

    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {p0, v7, v8}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v8

    invoke-virtual {p0, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->y(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    const/4 v9, -0x1

    if-ne v1, v9, :cond_3

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v1

    :cond_3
    move v7, v1

    new-instance v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$p;

    invoke-direct {v9, v5, v5, v5, v5}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$p;-><init>(IIII)V

    const/4 v10, 0x0

    move-object v1, v8

    const/4 v8, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v10}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;IILcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$p;I)V

    return-object v0
.end method

.method public static i(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n;
    .locals 4

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_LINER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;

    if-nez v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    new-instance v2, Lxx0;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lxx0;-><init>(I)V

    invoke-static {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {p0, v0, v3}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/util/List;)V

    return-object v2
.end method

.method public static j(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;-><init>()V

    const/16 v2, 0x46

    iput v2, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->l:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->values()[Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_8

    aget-object v6, v3, v5

    invoke-virtual {v0, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/b;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v7, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    invoke-virtual {v0, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->j(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v6, v8, :cond_0

    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v6, v8, :cond_0

    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v6, v8, :cond_7

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x0

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0, v7}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    move-result-object v8

    new-instance v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$b;

    invoke-virtual {v8}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v8

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    invoke-direct {v9, v8, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$b;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;)V

    new-instance v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$b;

    invoke-direct {v7, v9}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$b;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$b;)V

    iput-object v7, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->q:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$b;

    goto/16 :goto_6

    :pswitch_1
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BRONZER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0, v7}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    move-result-object v7

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    invoke-direct {v8, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;)V

    iput-object v8, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->p:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    goto/16 :goto_6

    :pswitch_2
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CONCEALER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0, v7}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    move-result-object v7

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    invoke-direct {v8, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;)V

    iput-object v8, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->o:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    goto/16 :goto_6

    :pswitch_3
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->i(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n;

    invoke-direct {v8, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n;)V

    :cond_1
    iput-object v8, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->n:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n;

    goto/16 :goto_6

    :pswitch_4
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v7

    if-nez v7, :cond_2

    move-object v7, v8

    goto :goto_1

    :cond_2
    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_1
    invoke-static {v0, v7}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->c(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;

    move-result-object v7

    iput-object v7, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->k:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    iget-object v8, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_2
    invoke-static {v0, v8}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->c(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;

    move-result-object v7

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;

    invoke-direct {v8, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;)V

    const/4 v9, -0x1

    iput v9, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;->i:I

    iput v9, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;->j:I

    iget v7, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;->i:I

    iput v7, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;->i:I

    iput-object v8, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->j:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$i;

    goto/16 :goto_6

    :pswitch_5
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0, v7}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    move-result-object v8

    new-instance v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$d;

    invoke-virtual {v8}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v10

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->b:Ljava/lang/String;

    iget-object v11, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;

    invoke-direct {v9, v10, v8, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$d;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;)V

    iput-object v9, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->e:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$d;

    goto/16 :goto_6

    :pswitch_6
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CUBE_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    :goto_3
    invoke-static {v0, v7}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$h;

    move-result-object v7

    iput-object v7, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->d:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$h;

    goto/16 :goto_6

    :pswitch_7
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_WEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    goto :goto_3

    :pswitch_8
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0, v7}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    move-result-object v8

    new-instance v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$f;

    invoke-virtual {v8}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v10

    iget-object v11, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->c:Ljava/lang/String;

    iget-object v12, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d:Ljava/lang/String;

    iget-object v13, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v15, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->h:I

    iget v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o:I

    move/from16 v16, v7

    invoke-direct/range {v9 .. v16}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$f;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    new-instance v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$f;

    invoke-direct {v7, v9}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$f;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$f;)V

    iput-object v7, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$f;

    goto/16 :goto_6

    :pswitch_9
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_BROW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0, v7}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    move-result-object v7

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$e;

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v9

    iget-object v10, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->c:Ljava/lang/String;

    iget-object v11, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d:Ljava/lang/String;

    iget-object v12, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    iget-object v13, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->g:Ljava/util/ArrayList;

    iget v14, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->h:I

    iget-object v15, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->n:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;

    invoke-direct/range {v8 .. v15}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$e;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;ILcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;)V

    new-instance v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$e;

    invoke-direct {v7, v8}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$e;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$e;)V

    iput-object v7, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$e;

    goto/16 :goto_6

    :pswitch_a
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->h(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;

    move-result-object v7

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;

    invoke-direct {v8, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;)V

    iput-object v8, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->i:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$o;

    goto/16 :goto_6

    :pswitch_b
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->g(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;

    invoke-direct {v8, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;)V

    :cond_4
    iput-object v8, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->g:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c;

    goto :goto_6

    :pswitch_c
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LASHES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0, v7}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    move-result-object v7

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    invoke-direct {v8, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;)V

    iput-object v8, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->f:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    goto :goto_6

    :pswitch_d
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->e(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;

    invoke-direct {v8, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;)V

    :cond_5
    :goto_4
    iput-object v8, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;

    goto :goto_6

    :pswitch_e
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;

    invoke-direct {v8, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g;)V

    goto :goto_4

    :pswitch_f
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0, v7}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    move-result-object v8

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;

    if-eqz v9, :cond_6

    new-instance v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$m;

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;

    invoke-direct {v9, v8, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$m;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;)V

    goto :goto_5

    :cond_6
    new-instance v9, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$m;

    invoke-direct {v9, v8}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$m;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;)V

    :goto_5
    iput-object v9, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->m:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$m;

    goto :goto_6

    :pswitch_10
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_TONER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0, v7}, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;

    move-result-object v7

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$k;

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v9

    iget-object v10, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->d:Ljava/lang/String;

    iget-object v11, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->f:Ljava/lang/String;

    iget-object v12, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->g:Ljava/util/ArrayList;

    iget v13, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$l;->h:I

    invoke-direct/range {v8 .. v13}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$k;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;I)V

    new-instance v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$k;

    invoke-direct {v7, v8}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$k;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$k;)V

    iput-object v7, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->h:Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$k;

    :goto_6
    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->isReshape()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a;->a(Ljava/util/ArrayList;)V

    :cond_9
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
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
