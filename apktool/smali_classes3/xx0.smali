.class public final synthetic Lxx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Function;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lxx0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget p0, p0, Lxx0;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_guid:Ljava/lang/String;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->attr_guid:Ljava/lang/String;

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/b$b;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/template/b$b;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->b:Ljava/lang/String;

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->a:Ljava/lang/String;

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;->c:Ljava/lang/String;

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/lang/String;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->j:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Ljava/lang/String;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->j:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g$a;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;->c:Ljava/lang/String;

    iget v4, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;->d:I

    iget v5, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;->e:I

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Setting;->f:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$g$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V

    return-object v0

    :pswitch_a
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->c:Ljava/lang/String;

    iget v4, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->d:I

    iget v5, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->e:I

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->f:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V

    return-object v0

    :pswitch_b
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Setting;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n$a;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Setting;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Setting;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Setting;->c:Ljava/lang/String;

    iget v4, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Setting;->d:I

    iget v5, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Setting;->e:I

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Setting;->f:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/dataeditcenter/a$n$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V

    return-object v0

    :pswitch_c
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;

    sget p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;->a:Ljava/lang/String;

    return-object p0

    :pswitch_f
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/c;

    sget p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/template/c;->a:Ljava/lang/String;

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;->b:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    sget-object p0, Lcom/perfectcorp/perfectlib/SkuInfo;->NULL:Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    sget-object p0, Lcom/perfectcorp/perfectlib/SkuInfo;->NULL:Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/f$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/f$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/f$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/f$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/f$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/f$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    return-object p0

    :pswitch_19
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/b$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/b$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/b$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/b$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_1c
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;->skuGuid:Ljava/lang/String;

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
