.class public final Lcom/appsflyer/internal/AFj1eSDK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/internal/AFj1cSDK;


# instance fields
.field private final AFKeystoreWrapper:Lkotlin/Lazy;

.field private AFLogger:Lcom/appsflyer/share/platform_extension/PluginInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr61;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lr61;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFj1eSDK;->AFKeystoreWrapper:Lkotlin/Lazy;

    return-void
.end method

.method private static final AFKeystoreWrapper()Lcom/appsflyer/share/platform_extension/PluginInfo;
    .locals 6

    new-instance v0, Lcom/appsflyer/share/platform_extension/PluginInfo;

    sget-object v1, Lcom/appsflyer/share/platform_extension/Plugin;->NATIVE:Lcom/appsflyer/share/platform_extension/Plugin;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "7.0.1"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/share/platform_extension/PluginInfo;-><init>(Lcom/appsflyer/share/platform_extension/Plugin;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static synthetic a()Lcom/appsflyer/share/platform_extension/PluginInfo;
    .locals 1

    invoke-static {}, Lcom/appsflyer/internal/AFj1eSDK;->AFKeystoreWrapper()Lcom/appsflyer/share/platform_extension/PluginInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final AFLogger()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appsflyer/internal/AFj1eSDK;->AFLogger:Lcom/appsflyer/share/platform_extension/PluginInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFj1eSDK;->AFKeystoreWrapper:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/share/platform_extension/PluginInfo;

    :cond_0
    invoke-virtual {v0}, Lcom/appsflyer/share/platform_extension/PluginInfo;->getPlugin()Lcom/appsflyer/share/platform_extension/Plugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/share/platform_extension/Plugin;->getPluginName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    const-string v2, "platform"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appsflyer/internal/AFj1eSDK;->AFLogger:Lcom/appsflyer/share/platform_extension/PluginInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFj1eSDK;->AFKeystoreWrapper:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/share/platform_extension/PluginInfo;

    :cond_1
    invoke-virtual {v0}, Lcom/appsflyer/share/platform_extension/PluginInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    const-string v3, "version"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFj1eSDK;->AFLogger:Lcom/appsflyer/share/platform_extension/PluginInfo;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/appsflyer/internal/AFj1eSDK;->AFKeystoreWrapper:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/share/platform_extension/PluginInfo;

    :cond_2
    invoke-virtual {v1}, Lcom/appsflyer/share/platform_extension/PluginInfo;->getAdditionalParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/appsflyer/internal/AFj1eSDK;->AFLogger:Lcom/appsflyer/share/platform_extension/PluginInfo;

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/appsflyer/internal/AFj1eSDK;->AFKeystoreWrapper:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/appsflyer/share/platform_extension/PluginInfo;

    :cond_3
    invoke-virtual {v1}, Lcom/appsflyer/share/platform_extension/PluginInfo;->getAdditionalParams()Ljava/util/Map;

    move-result-object p0

    const-string v1, "extras"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public final registerClient(Lcom/appsflyer/share/platform_extension/PluginInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/appsflyer/internal/AFj1eSDK;->AFLogger:Lcom/appsflyer/share/platform_extension/PluginInfo;

    return-void
.end method

.method public final unregisterClient()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/internal/AFj1eSDK;->AFLogger:Lcom/appsflyer/share/platform_extension/PluginInfo;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/appsflyer/internal/AFj1eSDK;->AFKeystoreWrapper:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/appsflyer/share/platform_extension/PluginInfo;

    :cond_0
    invoke-virtual {v0}, Lcom/appsflyer/share/platform_extension/PluginInfo;->getPlugin()Lcom/appsflyer/share/platform_extension/Plugin;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsflyer/share/platform_extension/Plugin;->getPluginName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
