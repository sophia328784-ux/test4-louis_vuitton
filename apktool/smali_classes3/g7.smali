.class public final synthetic Lg7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Function;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lg7;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;->skuGuid:Ljava/lang/String;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->a:Ljava/lang/String;

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/nailLook/a$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/nailLook/a$a;->guid:Ljava/lang/String;

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/nailLook/a$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/nailLook/a$a;->guid:Ljava/lang/String;

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/nailLook/a$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/nailLook/a$a;->guid:Ljava/lang/String;

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a$a;->guid:Ljava/lang/String;

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a$a;->guid:Ljava/lang/String;

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a$a;->guid:Ljava/lang/String;

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/jewelryLook/a$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/jewelryLook/a$a;->guid:Ljava/lang/String;

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/jewelryLook/a$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/jewelryLook/a$a;->guid:Ljava/lang/String;

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/jewelryLook/a$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/jewelryLook/a$a;->guid:Ljava/lang/String;

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    return-object p0

    :pswitch_b
    check-cast p1, Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;

    sget-object p0, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/common/network/DownloadReport;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    return-object p0

    :pswitch_c
    check-cast p1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;->a:Ljava/lang/String;

    return-object p0

    :pswitch_f
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/template/c;->a:Ljava/lang/String;

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/m;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->a:Ljava/lang/String;

    return-object p0

    :pswitch_11
    check-cast p1, Ljava/lang/String;

    const-string p0, "=?"

    invoke-static {p1, p0}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$e;

    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    const-string p0, "The background data should not be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$e;->guid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->a:Ljava/lang/String;

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$e;->lastModified:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->c:J

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;-><init>()V

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$e;->guid:Ljava/lang/String;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->a:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$e;->payload:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;->b:Ljava/lang/String;

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    invoke-direct {p1, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$a;)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->s:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;)I

    move-result p1

    iput p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;->f:I

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    invoke-direct {p1, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$a;)V

    return-object p1

    :pswitch_13
    check-cast p1, Ljava/lang/String;

    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p1, p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a:Ljava/lang/String;

    return-object p0

    :pswitch_15
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a:Ljava/lang/String;

    return-object p0

    :pswitch_16
    check-cast p1, Ljava/lang/String;

    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;

    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->shineIntensity:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;

    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteGuid:Ljava/lang/String;

    return-object p0

    :pswitch_1a
    check-cast p1, Ljava/lang/String;

    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->c()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0

    :pswitch_1c
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

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
