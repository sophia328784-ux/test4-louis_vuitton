.class public final Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/environment/EnvironmentProviderImpl$Companion;,
        Lcom/vuitton/android/data/environment/EnvironmentProviderImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;",
        "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
        "Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;",
        "environmentDataSource",
        "Lcom/vuitton/foundation/secrets/SecretsProvider;",
        "secretsProvider",
        "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
        "buildConfigProvider",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;Lcom/vuitton/foundation/secrets/SecretsProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V",
        "Companion",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;

.field public final b:Lcom/vuitton/foundation/secrets/SecretsProvider;

.field public final c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

.field public d:Lcom/vuitton/foundation/model/domain/model/environment/Environment;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;Lcom/vuitton/foundation/secrets/SecretsProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->a:Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->b:Lcom/vuitton/foundation/secrets/SecretsProvider;

    iput-object p3, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->n()Z

    move-result p1

    iget-object v0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->b:Lcom/vuitton/foundation/secrets/SecretsProvider;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->s()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/vuitton/foundation/secrets/SecretKey;->MULESOFT_CARESERVICES_CLIENT_SECRET_PROD:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {v0, p0}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/vuitton/foundation/secrets/SecretKey;->MULESOFT_CARESERVICES_CLIENT_SECRET_INTEGRATION:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {v0, p0}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewDev;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewDev;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewPrp;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewPrp;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->d()Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "preview/"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->r()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/api/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "publication/"

    invoke-static {p0, v0, v1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->e:Z

    iget-object p0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->b:Lcom/vuitton/foundation/secrets/SecretsProvider;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/foundation/secrets/SecretKey;->GOOGLE_SIGN_IN_CLIENT_ID_PREPROD:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {p0, v0}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/vuitton/foundation/secrets/SecretKey;->GOOGLE_SIGN_IN_CLIENT_ID_PROD:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {p0, v0}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lcom/vuitton/foundation/model/domain/model/environment/Environment;
    .locals 5

    iget-boolean v0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->e:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->a:Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;->a:Ldagger/Lazy;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment;->b:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Companion;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    const-string v3, "environment"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Companion;->a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    move-result-object v1

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "nrt"

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Companion;->a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v4, :cond_1

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Preprod;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Preprod;

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    iput-object v1, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    if-nez p0, :cond_4

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Preprod;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Preprod;

    :cond_4
    return-object p0

    :cond_5
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Prod;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Prod;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->r()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/api/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "user/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->e:Z

    iget-object p0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->b:Lcom/vuitton/foundation/secrets/SecretsProvider;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/foundation/secrets/SecretKey;->BATCH_API_KEY_PREPROD:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {p0, v0}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/vuitton/foundation/secrets/SecretKey;->BATCH_API_KEY_PROD:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {p0, v0}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->a:Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;->a:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    const-string v0, "ephemeral_env_value"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->e:Z

    iget-object p0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->b:Lcom/vuitton/foundation/secrets/SecretsProvider;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/foundation/secrets/SecretKey;->LINE_CHANNEL_ID_PREPROD:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {p0, v0}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/vuitton/foundation/secrets/SecretKey;->LINE_CHANNEL_ID_PROD:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {p0, v0}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProd;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProd;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Prod;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Prod;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->d()Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "https://pass.louisvuitton.com"

    return-object p0

    :cond_0
    const-string p0, "https://pass-prp.louisvuitton.com"

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProd;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProd;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Prod;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Prod;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->d()Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "lvpass://"

    return-object p0

    :cond_0
    const-string p0, "lvpassprp://"

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->e:Z

    iget-object p0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->b:Lcom/vuitton/foundation/secrets/SecretsProvider;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/foundation/secrets/SecretKey;->KAKAO_NATIVE_APP_KEY_PREPROD:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {p0, v0}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/vuitton/foundation/secrets/SecretKey;->KAKAO_NATIVE_APP_KEY_PROD:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {p0, v0}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lcom/vuitton/foundation/model/domain/model/config/Region;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->b:Lcom/vuitton/foundation/secrets/SecretsProvider;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl$WhenMappings;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_1

    if-ne p1, v2, :cond_0

    sget-object p1, Lcom/vuitton/foundation/secrets/SecretKey;->DY_API_KEY_EU_PREPROD:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {p0, p1}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_1
    sget-object p1, Lcom/vuitton/foundation/secrets/SecretKey;->DY_API_KEY_US_PREPROD:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {p0, p1}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl$WhenMappings;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_3

    sget-object p1, Lcom/vuitton/foundation/secrets/SecretKey;->DY_API_KEY_EU_PROD:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {p0, p1}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_4
    sget-object p1, Lcom/vuitton/foundation/secrets/SecretKey;->DY_API_KEY_US_PROD:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {p0, p1}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final m()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->d()Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    move-result-object p0

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Preprod;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Preprod;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "-prp"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$I1;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$I1;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "-i1"

    return-object p0

    :cond_1
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging1;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging1;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "-stg-1"

    return-object p0

    :cond_2
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging2;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging2;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "-stg-2"

    return-object p0

    :cond_3
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging3;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging3;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "-stg-3"

    return-object p0

    :cond_4
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Dev;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Dev;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "-dev"

    if-nez v0, :cond_d

    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$DevEphemeral;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewDev;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewDev;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v2

    :cond_6
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewPrp;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewPrp;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v1

    :cond_7
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Nrt;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Nrt;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "-nrt"

    return-object p0

    :cond_8
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Prod;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Prod;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProd;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProd;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "-hprod"

    if-eqz v0, :cond_b

    return-object v1

    :cond_b
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v1

    :cond_c
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_d
    :goto_0
    return-object v2
.end method

.method public final n()Z
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Preprod;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Preprod;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewPrp;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewPrp;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Nrt;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Nrt;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging1;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging1;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging2;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging2;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging3;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Staging3;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->d()Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final o()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewDev;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewDev;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewPrp;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewPrp;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewProd;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$HiddenProdPreview;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->d()Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "preview/"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->r()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/api/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "catalog/"

    invoke-static {p0, v0, v1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->n()Z

    move-result p1

    iget-object v0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->b:Lcom/vuitton/foundation/secrets/SecretsProvider;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->s()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/vuitton/foundation/secrets/SecretKey;->MULESOFT_CARESERVICES_AUTH_CLIENT_ID:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {v0, p0}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/vuitton/foundation/secrets/SecretKey;->MULESOFT_CARESERVICES_CLIENT_ID_PREPROD:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {v0, p0}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->e:Z

    if-eqz p0, :cond_0

    const-string p0, "https://clienteling-data-prp.lvcampaign.com/sa?project=AppWeb"

    return-object p0

    :cond_0
    const-string p0, "https://clienteling-data.lvcampaign.com/sa?project=AppWeb"

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->m()Ljava/lang/String;

    move-result-object p0

    const-string v0, "https://pass-api"

    const-string v1, ".louisvuitton.com"

    invoke-static {v0, p0, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final s()Z
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$I1;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$I1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$Dev;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$Dev;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewDev;->d:Lcom/vuitton/foundation/model/domain/model/environment/Environment$PreviewDev;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->d()Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/data/environment/EnvironmentProviderImpl;->d()Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    move-result-object p0

    instance-of p0, p0, Lcom/vuitton/foundation/model/domain/model/environment/Environment$DevEphemeral;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v3
.end method
