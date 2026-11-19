.class public Lcom/sightcall/universal/util/UniversalSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_API_BASE_URL:Ljava/lang/String; = "api_base_url"

.field private static final KEY_API_INTERCEPTOR:Ljava/lang/String; = "api_interceptor"

.field private static final KEY_API_LOGIN_URL:Ljava/lang/String; = "api_login_url"

.field private static final KEY_DEFAULT_ENV:Ljava/lang/String; = "default_environment"

.field private static final KEY_LOGGER_VERBOSITY:Ljava/lang/String; = "logger_verbosity"

.field private static final KEY_NETWORK_TRAFFIC:Ljava/lang/String; = "network_traffic"

.field private static final KEY_ON_SCREEN_DISPLAY:Ljava/lang/String; = "on_screen_display"

.field private static final KEY_SECURE_SCREEN:Ljava/lang/String; = "secure_screen"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "universal_settings"


# instance fields
.field private final apiBaseUrl:Lcom/sightcall/universal/util/LazyStringPreference;

.field private final apiInterceptor:Lcom/sightcall/universal/util/LazyBooleanPreference;

.field private final apiLoginUrl:Lcom/sightcall/universal/util/LazyStringPreference;

.field private final defaultEnvironment:Lcom/sightcall/universal/util/LazyEnumPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/LazyEnumPreference<",
            "Lcom/sightcall/universal/api/Environment;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerVerbosity:Lcom/sightcall/universal/util/LazyIntegerPreference;

.field private final networkTraffic:Lcom/sightcall/universal/util/LazyBooleanPreference;

.field private final onScreenDisplay:Lcom/sightcall/universal/util/LazyBooleanPreference;

.field private final secureScreen:Lcom/sightcall/universal/util/LazyBooleanPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "universal_settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v2, Lcom/sightcall/universal/util/UniversalSettings$1;

    const-class v6, Lcom/sightcall/universal/api/Environment;

    sget-object v7, Lcom/sightcall/universal/api/Environment;->PROD:Lcom/sightcall/universal/api/Environment;

    const-string v5, "default_environment"

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sightcall/universal/util/UniversalSettings$1;-><init>(Lcom/sightcall/universal/util/UniversalSettings;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Lcom/sightcall/universal/api/Environment;)V

    iput-object v2, v3, Lcom/sightcall/universal/util/UniversalSettings;->defaultEnvironment:Lcom/sightcall/universal/util/LazyEnumPreference;

    new-instance p0, Lcom/sightcall/universal/util/LazyBooleanPreference;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "secure_screen"

    invoke-direct {p0, v4, v0, p1}, Lcom/sightcall/universal/util/LazyBooleanPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object p0, v3, Lcom/sightcall/universal/util/UniversalSettings;->secureScreen:Lcom/sightcall/universal/util/LazyBooleanPreference;

    new-instance p0, Lcom/sightcall/universal/util/UniversalSettings$2;

    const-string v0, "logger_verbosity"

    const/4 v1, 0x0

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/sightcall/universal/util/UniversalSettings$2;-><init>(Lcom/sightcall/universal/util/UniversalSettings;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/util/LazyPreference;->apply()Lcom/sightcall/universal/util/LazyPreference;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/util/LazyIntegerPreference;

    iput-object p0, v3, Lcom/sightcall/universal/util/UniversalSettings;->loggerVerbosity:Lcom/sightcall/universal/util/LazyIntegerPreference;

    new-instance p0, Lcom/sightcall/universal/util/UniversalSettings$3;

    const-string v0, "api_interceptor"

    invoke-direct {p0, v3, v4, v0, p1}, Lcom/sightcall/universal/util/UniversalSettings$3;-><init>(Lcom/sightcall/universal/util/UniversalSettings;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/util/LazyPreference;->apply()Lcom/sightcall/universal/util/LazyPreference;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/util/LazyBooleanPreference;

    iput-object p0, v3, Lcom/sightcall/universal/util/UniversalSettings;->apiInterceptor:Lcom/sightcall/universal/util/LazyBooleanPreference;

    new-instance p0, Lcom/sightcall/universal/util/LazyBooleanPreference;

    const-string v0, "on_screen_display"

    invoke-direct {p0, v4, v0, p1}, Lcom/sightcall/universal/util/LazyBooleanPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object p0, v3, Lcom/sightcall/universal/util/UniversalSettings;->onScreenDisplay:Lcom/sightcall/universal/util/LazyBooleanPreference;

    new-instance p0, Lcom/sightcall/universal/util/LazyBooleanPreference;

    const-string v0, "network_traffic"

    invoke-direct {p0, v4, v0, p1}, Lcom/sightcall/universal/util/LazyBooleanPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object p0, v3, Lcom/sightcall/universal/util/UniversalSettings;->networkTraffic:Lcom/sightcall/universal/util/LazyBooleanPreference;

    new-instance p0, Lcom/sightcall/universal/util/LazyStringPreference;

    const-string p1, "api_base_url"

    invoke-direct {p0, v4, p1, v1}, Lcom/sightcall/universal/util/LazyStringPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v3, Lcom/sightcall/universal/util/UniversalSettings;->apiBaseUrl:Lcom/sightcall/universal/util/LazyStringPreference;

    new-instance p0, Lcom/sightcall/universal/util/LazyStringPreference;

    const-string p1, "api_login_url"

    invoke-direct {p0, v4, p1, v1}, Lcom/sightcall/universal/util/LazyStringPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v3, Lcom/sightcall/universal/util/UniversalSettings;->apiLoginUrl:Lcom/sightcall/universal/util/LazyStringPreference;

    return-void
.end method


# virtual methods
.method public apiBaseUrl()Lcom/sightcall/universal/util/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/universal/util/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/util/UniversalSettings;->apiBaseUrl:Lcom/sightcall/universal/util/LazyStringPreference;

    return-object p0
.end method

.method public apiInterceptor()Lcom/sightcall/universal/util/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/universal/util/Lazy<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/util/UniversalSettings;->apiInterceptor:Lcom/sightcall/universal/util/LazyBooleanPreference;

    return-object p0
.end method

.method public apiLoginUrl()Lcom/sightcall/universal/util/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/universal/util/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/util/UniversalSettings;->apiLoginUrl:Lcom/sightcall/universal/util/LazyStringPreference;

    return-object p0
.end method

.method public defaultEnvironment()Lcom/sightcall/universal/util/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/universal/util/Lazy<",
            "Lcom/sightcall/universal/api/Environment;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/util/UniversalSettings;->defaultEnvironment:Lcom/sightcall/universal/util/LazyEnumPreference;

    return-object p0
.end method

.method public loggerVerbosity()Lcom/sightcall/universal/util/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/universal/util/Lazy<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/util/UniversalSettings;->loggerVerbosity:Lcom/sightcall/universal/util/LazyIntegerPreference;

    return-object p0
.end method

.method public networkTraffic()Lcom/sightcall/universal/util/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/universal/util/Lazy<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/util/UniversalSettings;->networkTraffic:Lcom/sightcall/universal/util/LazyBooleanPreference;

    return-object p0
.end method

.method public onScreenDisplay()Lcom/sightcall/universal/util/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/universal/util/Lazy<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/util/UniversalSettings;->onScreenDisplay:Lcom/sightcall/universal/util/LazyBooleanPreference;

    return-object p0
.end method

.method public secureScreen()Lcom/sightcall/universal/util/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/universal/util/Lazy<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/util/UniversalSettings;->secureScreen:Lcom/sightcall/universal/util/LazyBooleanPreference;

    return-object p0
.end method
