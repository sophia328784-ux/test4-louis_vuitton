.class public final synthetic Lzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/common/network/HttpRequestProvider;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;I)V
    .locals 0

    iput p2, p0, Lzw;->a:I

    iput-object p1, p0, Lzw;->b:Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/perfectcorp/common/utility/HttpRequest;
    .locals 13

    iget v0, p0, Lzw;->a:I

    const-string v1, "New"

    const-string v2, "order"

    const-string v3, "/service/V3/getMakeupItemList"

    const-string v4, "/service/V2/getGenericStoreItemByGuid"

    const-string v5, "contentver"

    const-string v6, "4.0"

    const-string v7, "skuformatver"

    const-string v8, "makeupver"

    const-string v9, "contentVer"

    const-string v10, "messagedigest"

    const-string v11, "guids"

    const-string v12, "type"

    iget-object p0, p0, Lzw;->b:Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$d;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/V2/getSkincareProduct"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lang"

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$d;->b:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/requests/RequestUrlHelper;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "productIds"

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/LocaleCodeNotSetException;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/exceptions/LocaleCodeNotSetException;-><init>()V

    throw p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$b;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/V2/inventory"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$b;->b:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/requests/RequestUrlHelper;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "skuIds"

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$a;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/V2/get-conditional-info"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    const-string v1, "sku"

    invoke-virtual {v0, v1, v12}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$a;->b:Ljava/util/Collection;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/requests/RequestUrlHelper;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v11}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$r;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/V2/getTemplateByGuid"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$r;->b:Ljava/util/Collection;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/requests/RequestUrlHelper;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v11}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    return-object v0

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$q;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/sdk/getSkuByGuids"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    iget v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$q;->c:I

    if-lez v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1, v8}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$q;->b:Ljava/util/Collection;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/requests/RequestUrlHelper;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v11}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    return-object v0

    :pswitch_4
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$p;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/sdk/getSkuGUIDsByType"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v12}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$p;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$p;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$p;->c:Ljava/lang/String;

    invoke-virtual {v0, p0, v10}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object v0

    :pswitch_5
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$o;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    invoke-static {v2, v4, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SkuSet"

    invoke-virtual {v0, v1, v12}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$o;->b:Ljava/util/Collection;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/requests/RequestUrlHelper;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v11}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    return-object v0

    :pswitch_6
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$m;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/sdk/getSkuByCustShadeIds"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    sget v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$m;->b:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/requests/RequestUrlHelper;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "custshadeids"

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_7
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$l;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/V2/getProductMaskList"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    const-string v1, "producttype"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$l;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_8
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$k;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/V2/getProductMaskByProductGUIDs"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$k;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/requests/RequestUrlHelper;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "productguids"

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_9
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$j;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/sdk/getProductMapping"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->b(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$j;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v12}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_a
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$i;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/V2/getProductGUIDBySkuGUID"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    sget v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$i;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/requests/RequestUrlHelper;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "skuguids"

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_b
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$h;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    invoke-static {v5, v3, v4}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    const-string v3, "15.0"

    invoke-virtual {v0, v3, v9}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "NailLook"

    invoke-virtual {v0, v3, v12}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$h;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p0, v10}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-object v0

    :pswitch_c
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/V2/getMakeupItemByGuids"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;->b:Ljava/util/Collection;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/requests/RequestUrlHelper;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v11}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v9}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "zipJSON"

    const-string v1, "true"

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    return-object v0

    :pswitch_d
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$f;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/sdk/getLookList"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    sget v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$f;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$f;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v10}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return-object v0

    :pswitch_e
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$e;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    invoke-static {v5, v3, v4}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    sget v3, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v9}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "JewelryLook"

    invoke-virtual {v0, v3, v12}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$e;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, p0, v10}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    return-object v0

    :pswitch_f
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$d;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/V3/getIDSystemData"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$d;->b:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/requests/RequestUrlHelper;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ids"

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_10
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$c;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/channel/getGenericTag"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v12}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$c;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$c;->c:Ljava/lang/String;

    invoke-virtual {v0, p0, v10}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    return-object v0

    :pswitch_11
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$b;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/V2/getGenericStoreItemList"

    invoke-static {v2, v3, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v12}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$b;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0, p0, v10}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    return-object v0

    :pswitch_12
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$a;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    invoke-static {v2, v4, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    const-string v1, "44.0"

    invoke-virtual {v0, v1, v5}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$a;->b:Ljava/util/Collection;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/requests/RequestUrlHelper;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v11}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    return-object v0

    :pswitch_13
    check-cast p0, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$StringResponseBuilder;

    new-instance v0, Lcom/perfectcorp/common/utility/HttpRequest;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$StringResponseBuilder;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
