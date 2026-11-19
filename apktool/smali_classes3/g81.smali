.class public final synthetic Lg81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/common/network/HttpRequestProvider;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg81;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/perfectcorp/common/utility/HttpRequest;
    .locals 5

    iget p0, p0, Lg81;->a:I

    const-string v0, "SdkInitSetting"

    const-string v1, "type"

    const-string v2, "1.0"

    const-string v3, "contentver"

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/perfectcorp/common/utility/HttpRequest;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$Uris;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-virtual {p0, v2, v3}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/perfectcorp/common/utility/HttpRequest;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$Uris;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-virtual {p0, v2, v3}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SkincareDetectionFeatures"

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/perfectcorp/common/utility/HttpRequest;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$Uris;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-virtual {p0, v2, v3}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SdkSkinCareRecommendation"

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/perfectcorp/common/utility/HttpRequest;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$Uris;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-virtual {p0, v2, v3}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SkincareRecommendExtraInfo"

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v3, "/service/sdk/getShadeFinderRecommendInfo"

    invoke-static {v1, v3, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    const-string v0, "contentVer"

    invoke-virtual {p0, v2, v0}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/perfectcorp/common/utility/HttpRequest;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$Uris;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-virtual {p0, v2, v3}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ShadeFinderDetectMode"

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/perfectcorp/common/utility/HttpRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a:Ljava/lang/String;

    const-string v4, "/service/V2/getGenericStoreItemList"

    invoke-static {v2, v4, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SkuSet"

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/perfectcorp/common/utility/HttpRequest;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$Uris;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-virtual {p0, v2, v3}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/perfectcorp/common/utility/HttpRequest;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$Uris;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/perfectcorp/common/utility/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->a(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->f(Lcom/perfectcorp/common/utility/HttpRequest;)V

    invoke-virtual {p0, v2, v3}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/utility/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
