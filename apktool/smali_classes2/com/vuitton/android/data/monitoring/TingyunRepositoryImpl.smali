.class public final Lcom/vuitton/android/data/monitoring/TingyunRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/monitoring/TingyunRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\nB#\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/data/monitoring/TingyunRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRepository;",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/foundation/secrets/SecretsProvider;",
        "secretsProvider",
        "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
        "buildConfigProvider",
        "<init>",
        "(Landroid/content/Context;Lcom/vuitton/foundation/secrets/SecretsProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V",
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
.field public final a:Landroid/content/Context;

.field public final b:Lcom/vuitton/foundation/secrets/SecretsProvider;

.field public final c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/monitoring/TingyunRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/monitoring/TingyunRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vuitton/foundation/secrets/SecretsProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/monitoring/TingyunRepositoryImpl;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vuitton/android/data/monitoring/TingyunRepositoryImpl;->b:Lcom/vuitton/foundation/secrets/SecretsProvider;

    iput-object p3, p0, Lcom/vuitton/android/data/monitoring/TingyunRepositoryImpl;->c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRequirements;)V
    .locals 2

    iget-object p1, p0, Lcom/vuitton/android/data/monitoring/TingyunRepositoryImpl;->a:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/data/monitoring/TingyunRepositoryImpl;->c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/foundation/secrets/SecretKey;->TINGYUN_PROD_APP_KEY:Lcom/vuitton/foundation/secrets/SecretKey;

    iget-object p0, p0, Lcom/vuitton/android/data/monitoring/TingyunRepositoryImpl;->b:Lcom/vuitton/foundation/secrets/SecretsProvider;

    invoke-interface {p0, v0}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/NBSAppAgent;->setLicenseKey(Ljava/lang/String;)Lcom/networkbench/agent/impl/NBSAppAgent;

    move-result-object v0

    sget-object v1, Lcom/vuitton/foundation/secrets/SecretKey;->TINGYUN_HOST:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {p0, v1}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/NBSAppAgent;->setRedirectHost(Ljava/lang/String;)Lcom/networkbench/agent/impl/NBSAppAgent;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/NBSAppAgent;->isHookWebChromeClient(Z)Lcom/networkbench/agent/impl/NBSAppAgent;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/NBSAppAgent;->setStartOption(I)Lcom/networkbench/agent/impl/NBSAppAgent;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/NBSAppAgent;->start(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string p0, "Failed requirement."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
