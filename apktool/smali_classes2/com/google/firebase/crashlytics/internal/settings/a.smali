.class public final synthetic Lcom/google/firebase/crashlytics/internal/settings/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/a;->b:Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/a;->b:Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController$1;->b:Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->f:Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsSpiCall;

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->b:Lcom/google/firebase/crashlytics/internal/settings/SettingsRequest;

    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsSpiCall;->c:Lcom/google/firebase/crashlytics/internal/Logger;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->b()V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsSpiCall;->b(Lcom/google/firebase/crashlytics/internal/settings/SettingsRequest;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v0, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsSpiCall;->b:Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsSpiCall;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;

    invoke-direct {v4, v0, v3}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "User-Agent"

    const-string v5, "Crashlytics Android SDK/20.1.0"

    invoke-virtual {v4, v0, v5}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string v5, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    invoke-virtual {v4, v0, v5}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsSpiCall;->a(Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;Lcom/google/firebase/crashlytics/internal/settings/SettingsRequest;)V

    const/4 p0, 0x3

    invoke-virtual {v1, p0}, Lcom/google/firebase/crashlytics/internal/Logger;->a(I)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 p0, 0x2

    invoke-virtual {v1, p0}, Lcom/google/firebase/crashlytics/internal/Logger;->a(I)V

    invoke-virtual {v4}, Lcom/google/firebase/crashlytics/internal/network/HttpGetRequest;->b()Lcom/google/firebase/crashlytics/internal/network/HttpResponse;

    move-result-object v0

    iget v3, v0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->a:I

    invoke-virtual {v1, p0}, Lcom/google/firebase/crashlytics/internal/Logger;->a(I)V

    const/16 p0, 0xc8

    if-eq v3, p0, :cond_1

    const/16 p0, 0xc9

    if-eq v3, p0, :cond_1

    const/16 p0, 0xca

    if-eq v3, p0, :cond_1

    const/16 p0, 0xcb

    if-ne v3, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/Logger;->b()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, v0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    goto :goto_1

    :catch_0
    const/4 p0, 0x5

    :try_start_2
    invoke-virtual {v1, p0}, Lcom/google/firebase/crashlytics/internal/Logger;->a(I)V

    invoke-virtual {v1, p0}, Lcom/google/firebase/crashlytics/internal/Logger;->a(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/Logger;->b()V

    :goto_1
    return-object v2
.end method
