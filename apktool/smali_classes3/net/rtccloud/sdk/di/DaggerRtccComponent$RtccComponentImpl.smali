.class final Lnet/rtccloud/sdk/di/DaggerRtccComponent$RtccComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/di/RtccComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/di/DaggerRtccComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RtccComponentImpl"
.end annotation


# instance fields
.field private final rtccComponentImpl:Lnet/rtccloud/sdk/di/DaggerRtccComponent$RtccComponentImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/core/di/SightCallComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lnet/rtccloud/sdk/di/DaggerRtccComponent$RtccComponentImpl;->rtccComponentImpl:Lnet/rtccloud/sdk/di/DaggerRtccComponent$RtccComponentImpl;

    return-void
.end method

.method private injectRtcc(Lnet/rtccloud/sdk/Rtcc;)Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/di/DaggerRtccComponent$RtccComponentImpl;->analyticsRepositoryImpl()Lcom/sightcall/analytics/AnalyticsRepositoryImpl;

    move-result-object p0

    invoke-static {p1, p0}, Lnet/rtccloud/sdk/Rtcc_MembersInjector;->injectAnalyticsRepository(Lnet/rtccloud/sdk/Rtcc;Lcom/sightcall/analytics/AnalyticsRepository;)V

    return-object p1
.end method


# virtual methods
.method public analyticsRepositoryImpl()Lcom/sightcall/analytics/AnalyticsRepositoryImpl;
    .locals 1

    new-instance v0, Lcom/sightcall/analytics/AnalyticsRepositoryImpl;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/di/DaggerRtccComponent$RtccComponentImpl;->analyticsUploadDatasourceImpl()Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadDatasourceImpl;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sightcall/analytics/AnalyticsRepositoryImpl;-><init>(Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;)V

    return-object v0
.end method

.method public analyticsUploadDatasourceImpl()Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadDatasourceImpl;
    .locals 1

    new-instance p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadDatasourceImpl;

    invoke-static {}, Lcom/sightcall/analytics/di/AnalyticsModule_Companion_ProvideAnalyticsUploadApi$analytics_releaseFactory;->provideAnalyticsUploadApi$analytics_release()Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadDatasourceImpl;-><init>(Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;)V

    return-object p0
.end method

.method public inject(Lnet/rtccloud/sdk/Rtcc;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/di/DaggerRtccComponent$RtccComponentImpl;->injectRtcc(Lnet/rtccloud/sdk/Rtcc;)Lnet/rtccloud/sdk/Rtcc;

    return-void
.end method
