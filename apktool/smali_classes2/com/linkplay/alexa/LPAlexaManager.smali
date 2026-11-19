.class public Lcom/linkplay/alexa/LPAlexaManager;
.super Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public bUsingCode(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForIP(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getAlexaVer()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v1, 0x133ee7c

    if-lt v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    invoke-super {p0, p1}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->bUsingCode(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->bUsingCode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/alexa/request/presenter/AlexaListener;)V
    .locals 1

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForIP(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v0}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-static {p1, v0}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v0

    invoke-static {p1, v0}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v0, p2}, Ln00;->n(Lcom/linkplay/request/RequestItem;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object p1

    new-instance v0, Lcom/linkplay/alexa/LPAlexaManager$3;

    invoke-direct {v0, p0, p3}, Lcom/linkplay/alexa/LPAlexaManager$3;-><init>(Lcom/linkplay/alexa/LPAlexaManager;Lcom/linkplay/alexa/request/presenter/AlexaListener;)V

    invoke-virtual {p1, p2, v0}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public getAlexaStatus(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/alexa/LPAlexaListener;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpUUID()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Lcom/linkplay/alexa/LPAlexaManager$1;

    invoke-direct {v0, p0, p2}, Lcom/linkplay/alexa/LPAlexaManager$1;-><init>(Lcom/linkplay/alexa/LPAlexaManager;Lcom/linkplay/alexa/LPAlexaListener;)V

    invoke-static {p1, v0}, Lcom/linkplay/alexa/AlexaStatus;->getAlexaStatus(Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAlexaVer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForIP(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/model/LPDeviceStatus;->getAlexaVer()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->getAlexaVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLanguage(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/alexa/LPAlexaListener;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->getLanguage(Ljava/lang/String;Lcom/linkplay/alexa/request/presenter/AlexaListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getPromptStatus(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/alexa/LPAlexaListener;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->getPromptStatus(Ljava/lang/String;Lcom/linkplay/alexa/request/presenter/AlexaListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getUUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForIP(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/model/LPDeviceStatus;->getUUID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->getUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUpnpUUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForIP(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpUUID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->getUpnpUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initLoginView(Lcom/linkplay/core/device/LPDevice;Landroid/webkit/WebView;Lcom/linkplay/alexa/LPAlexaLoginListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/linkplay/alexa/LPAlexaManager;->initLoginView(Lcom/linkplay/core/device/LPDevice;Landroid/webkit/WebView;Lcom/linkplay/alexa/request/modle/AlexaProfileInfo;Lcom/linkplay/alexa/LPAlexaLoginListener;)V

    return-void
.end method

.method public initLoginView(Lcom/linkplay/core/device/LPDevice;Landroid/webkit/WebView;Lcom/linkplay/alexa/request/modle/AlexaProfileInfo;Lcom/linkplay/alexa/LPAlexaLoginListener;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->initLoginView(Landroid/webkit/WebView;Ljava/lang/String;Lcom/linkplay/alexa/request/modle/AlexaProfileInfo;Lcom/linkplay/alexa/request/presenter/AlexaLoginListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initLoginView(Lcom/linkplay/core/device/LPDevice;Landroid/webkit/WebView;ZLjava/lang/String;Lcom/linkplay/alexa/LPAlexaLoginListener;)V
    .locals 0

    .line 21
    iput-boolean p3, p0, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->isBeta:Z

    .line 22
    iput-object p4, p0, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->strBeta:Ljava/lang/String;

    const/4 p3, 0x0

    .line 23
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/linkplay/alexa/LPAlexaManager;->initLoginView(Lcom/linkplay/core/device/LPDevice;Landroid/webkit/WebView;Lcom/linkplay/alexa/request/modle/AlexaProfileInfo;Lcom/linkplay/alexa/LPAlexaLoginListener;)V

    return-void
.end method

.method public initSplashView(Lcom/linkplay/core/device/LPDevice;Landroid/webkit/WebView;Lcom/linkplay/alexa/LPAlexaSplashListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p0, p2, p1, p3}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->initSplashView(Landroid/webkit/WebView;Ljava/lang/String;Lcom/linkplay/alexa/request/presenter/AlexaSplashListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initSplashView(Lcom/linkplay/core/device/LPDevice;Landroid/webkit/WebView;ZLjava/lang/String;Lcom/linkplay/alexa/LPAlexaSplashListener;)V
    .locals 0

    iput-boolean p3, p0, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->isBeta:Z

    iput-object p4, p0, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->strBeta:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p5}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->initSplashView(Landroid/webkit/WebView;Ljava/lang/String;Lcom/linkplay/alexa/request/presenter/AlexaSplashListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isAlexaLogin(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/alexa/LPAlexaListener;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->isAlexaLogin(Ljava/lang/String;Lcom/linkplay/alexa/request/presenter/AlexaListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public logout(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/alexa/LPAlexaListener;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->logout(Ljava/lang/String;Lcom/linkplay/alexa/request/presenter/AlexaListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAuthcode(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/alexa/LPAlexaListener;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/linkplay/alexa/LPAlexaManager$2;

    invoke-direct {v0, p0, p2}, Lcom/linkplay/alexa/LPAlexaManager$2;-><init>(Lcom/linkplay/alexa/LPAlexaManager;Lcom/linkplay/alexa/LPAlexaListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/linkplay/alexa/LPAlexaManager;->setAuthcode(Ljava/lang/String;Lcom/linkplay/alexa/request/presenter/AlexaLoginListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAuthcode(Ljava/lang/String;Lcom/linkplay/alexa/request/presenter/AlexaLoginListener;)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->setAuthcode(Ljava/lang/String;Lcom/linkplay/alexa/request/presenter/AlexaLoginListener;)V

    return-void
.end method

.method public setLanguage(Lcom/linkplay/core/device/LPDevice;Ljava/lang/String;Lcom/linkplay/alexa/LPAlexaListener;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->setLanguage(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/alexa/request/presenter/AlexaListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPromptStatus(Lcom/linkplay/core/device/LPDevice;Ljava/lang/String;Lcom/linkplay/alexa/LPAlexaListener;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/linkplay/alexa/request/presenter/AlexaRequestUtil;->setPromptStatus(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/alexa/request/presenter/AlexaListener;)V

    :cond_1
    :goto_0
    return-void
.end method
