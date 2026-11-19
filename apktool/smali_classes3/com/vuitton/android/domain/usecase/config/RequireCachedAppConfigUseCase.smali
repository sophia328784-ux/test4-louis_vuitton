.class public final Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/AppConfigRepository;",
        "appConfigRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/AppConfigRepository;)V",
        "domain"
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
.field public final a:Lcom/vuitton/android/domain/repository/AppConfigRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/AppConfigRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    return-void
.end method


# virtual methods
.method public final a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/AppConfigRepository;->c()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Error: No cached for app config... Please review your development work! Ensure that the app configuration is properly loaded before use. Consider moving your logic after obtaining the configuration."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
