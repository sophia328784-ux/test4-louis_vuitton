.class public final Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/PerfectCorpRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000cB+\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/PerfectCorpRepository;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
        "buildConfigProvider",
        "Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;",
        "featureCheckerProvider",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;)V",
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
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

.field public final d:Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;->c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;->d:Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iget-object v1, p0, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;->b:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "http"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 v3, 0x3200000

    invoke-static {v2, v3, v4}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "PerfectCorpRepositoryImpl"

    const-string v4, "[installHttpCache] failed"

    invoke-interface {v0, v3, v4, v2}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/Configuration;->builder()Lcom/perfectcorp/perfectlib/Configuration$Builder;

    move-result-object v0

    const-string v2, "model"

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->assets(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/perfectcorp/perfectlib/Configuration$Builder;->setModelPath(Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;)Lcom/perfectcorp/perfectlib/Configuration$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/perfectcorp/perfectlib/Configuration$Builder;->setPreviewMode(Z)Lcom/perfectcorp/perfectlib/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/perfectcorp/perfectlib/Configuration$Builder;->setMappingMode(Z)Lcom/perfectcorp/perfectlib/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/Configuration$Builder;->build()Lcom/perfectcorp/perfectlib/Configuration;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl$init$1;

    invoke-direct {v2, p0, p1}, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl$init$1;-><init>(Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/perfectlib/PerfectLib;->init(Landroid/content/Context;Lcom/perfectcorp/perfectlib/Configuration;Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallback;)V

    iget-object p0, p0, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;->c:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
