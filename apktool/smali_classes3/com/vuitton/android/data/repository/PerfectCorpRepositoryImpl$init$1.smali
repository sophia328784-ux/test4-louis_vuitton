.class public final Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl$init$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/data/repository/PerfectCorpRepositoryImpl$init$1",
        "Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallback;",
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
.field public final synthetic a:Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;

.field public final synthetic b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl$init$1;->a:Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl$init$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl$init$1;->a:Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string p2, "PerfectCorpRepositoryImpl"

    const-string v0, "[PerfectLib] initialization failed"

    invoke-interface {p0, p2, v0, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onInitialized(Ljava/util/Set;Ljava/util/Map;)V
    .locals 2

    iget-object p1, p0, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl$init$1;->a:Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;

    iget-object p1, p1, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/PerfectCorpRepositoryImpl$init$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

    iget-object p2, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->c:Ljava/lang/String;

    const-string v1, "-"

    invoke-static {v1, p2, v0, p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocalePartsKt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47$Companion;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore$Companion;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/PerfectLib;->setLocaleCode(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->setCountryCode(Ljava/lang/String;)Z

    return-void
.end method
