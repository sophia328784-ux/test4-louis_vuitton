.class public final Lcom/perfectcorp/perfectlib/ShadeFinderData;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;

.field public final b:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ShadeFinderData;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ShadeFinderData;->b:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;

    return-void
.end method


# virtual methods
.method public final getFitzpatrickScale()Lcom/perfectcorp/perfectlib/FitzpatrickScale;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderData;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->fitzpatrick_scale:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown fitzpatrick scale: "

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->fitzpatrick_scale:I

    invoke-static {p0, v0}, Lr81;->c(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE6:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE5:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE4:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE3:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE2:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE1:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->UNKNOWN:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getLabSkinTone()Lcom/perfectcorp/perfectlib/LabColorSpace;
    .locals 6

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;->c()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;->e:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->b()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/d;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/d;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/m;->a(Lcom/perfectcorp/thirdparty/com/google/common/base/d;)Lcom/perfectcorp/thirdparty/com/google/common/base/m;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/d;->b()Lcom/perfectcorp/thirdparty/com/google/common/base/d;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/perfectcorp/thirdparty/com/google/common/base/m;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/m;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/n;

    invoke-direct {v4, v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/m;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/base/n;Lcom/perfectcorp/thirdparty/com/google/common/base/d;)V

    invoke-virtual {v4, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/m;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {v3, v1, v4, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;-><init>(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    :catchall_0
    :goto_1
    if-eqz v2, :cond_4

    new-instance p0, Lcom/perfectcorp/perfectlib/LabColorSpace;

    iget v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;->l:F

    iget v1, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;->a:F

    iget v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;->b:F

    invoke-direct {p0, v0, v1, v2}, Lcom/perfectcorp/perfectlib/LabColorSpace;-><init>(FFF)V

    return-object p0

    :cond_4
    new-instance v0, Lcom/perfectcorp/perfectlib/LabColorSpace;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderData;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;

    iget v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->adaptive_skin_tone_lab_l:F

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->adaptive_skin_tone_lab_a:F

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->adaptive_skin_tone_lab_b:F

    invoke-direct {v0, v1, v2, p0}, Lcom/perfectcorp/perfectlib/LabColorSpace;-><init>(FFF)V

    return-object v0
.end method

.method public final getRM200QCSkinTone()Lcom/perfectcorp/perfectlib/LabColorSpace;
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/LabColorSpace;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderData;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;

    iget v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->rm200qc_skin_tone_lab_l:F

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->rm200qc_skin_tone_lab_a:F

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->rm200qc_skin_tone_lab_b:F

    invoke-direct {v0, v1, v2, p0}, Lcom/perfectcorp/perfectlib/LabColorSpace;-><init>(FFF)V

    return-object v0
.end method

.method public final getRgbSkinTone()Lcom/perfectcorp/perfectlib/RgbColorSpace;
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/RgbColorSpace;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderData;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;

    iget v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->skin_color_rgb_r:I

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->skin_color_rgb_g:I

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->skin_color_rgb_b:I

    invoke-direct {v0, v1, v2, p0}, Lcom/perfectcorp/perfectlib/RgbColorSpace;-><init>(III)V

    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderData;->b:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderData;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ShadeFinderReport;->report_id:I

    const/4 v0, 0x6

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
