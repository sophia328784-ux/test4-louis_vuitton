.class public final Lcom/sightcall/analytics/di/AnalyticsModule_Companion_ProvideAnalyticsUploadApi$analytics_releaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/analytics/di/AnalyticsModule_Companion_ProvideAnalyticsUploadApi$analytics_releaseFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/sightcall/analytics/di/AnalyticsModule_Companion_ProvideAnalyticsUploadApi$analytics_releaseFactory;
    .locals 1

    sget-object v0, Lcom/sightcall/analytics/di/AnalyticsModule_Companion_ProvideAnalyticsUploadApi$analytics_releaseFactory$InstanceHolder;->INSTANCE:Lcom/sightcall/analytics/di/AnalyticsModule_Companion_ProvideAnalyticsUploadApi$analytics_releaseFactory;

    return-object v0
.end method

.method public static provideAnalyticsUploadApi$analytics_release()Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;
    .locals 1

    sget-object v0, Lcom/sightcall/analytics/di/AnalyticsModule;->Companion:Lcom/sightcall/analytics/di/AnalyticsModule$Companion;

    invoke-virtual {v0}, Lcom/sightcall/analytics/di/AnalyticsModule$Companion;->provideAnalyticsUploadApi$analytics_release()Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;
    .locals 0

    .line 5
    invoke-static {}, Lcom/sightcall/analytics/di/AnalyticsModule_Companion_ProvideAnalyticsUploadApi$analytics_releaseFactory;->provideAnalyticsUploadApi$analytics_release()Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/analytics/di/AnalyticsModule_Companion_ProvideAnalyticsUploadApi$analytics_releaseFactory;->get()Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;

    move-result-object p0

    return-object p0
.end method
