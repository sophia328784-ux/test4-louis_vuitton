.class public final Lcom/sightcall/analytics/AnalyticsRepositoryImplKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "generateFileName",
        "",
        "param",
        "Lcom/sightcall/analytics/AnalyticsChunk$Param;",
        "uuid",
        "analytics_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$generateFileName(Lcom/sightcall/analytics/AnalyticsChunk$Param;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/analytics/AnalyticsRepositoryImplKt;->generateFileName(Lcom/sightcall/analytics/AnalyticsChunk$Param;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final generateFileName(Lcom/sightcall/analytics/AnalyticsChunk$Param;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sightcall/analytics/AnalyticsChunk$Param$Startup;->INSTANCE:Lcom/sightcall/analytics/AnalyticsChunk$Param$Startup;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "startup"

    return-object p0

    :cond_0
    sget-object v0, Lcom/sightcall/analytics/AnalyticsChunk$Param$Call;->INSTANCE:Lcom/sightcall/analytics/AnalyticsChunk$Param$Call;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "mediastats-"

    invoke-static {p0, p1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
