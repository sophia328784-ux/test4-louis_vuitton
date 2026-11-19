.class public final Lcom/sightcall/analytics/AnalyticsRepositoryImpl_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/analytics/AnalyticsRepositoryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsUploadDatasourceProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/analytics/AnalyticsRepositoryImpl_Factory;->analyticsUploadDatasourceProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/sightcall/analytics/AnalyticsRepositoryImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;",
            ">;)",
            "Lcom/sightcall/analytics/AnalyticsRepositoryImpl_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/analytics/AnalyticsRepositoryImpl_Factory;

    invoke-direct {v0, p0}, Lcom/sightcall/analytics/AnalyticsRepositoryImpl_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;)Lcom/sightcall/analytics/AnalyticsRepositoryImpl;
    .locals 1

    new-instance v0, Lcom/sightcall/analytics/AnalyticsRepositoryImpl;

    invoke-direct {v0, p0}, Lcom/sightcall/analytics/AnalyticsRepositoryImpl;-><init>(Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/sightcall/analytics/AnalyticsRepositoryImpl;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/analytics/AnalyticsRepositoryImpl_Factory;->analyticsUploadDatasourceProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;

    invoke-static {p0}, Lcom/sightcall/analytics/AnalyticsRepositoryImpl_Factory;->newInstance(Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;)Lcom/sightcall/analytics/AnalyticsRepositoryImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/sightcall/analytics/AnalyticsRepositoryImpl_Factory;->get()Lcom/sightcall/analytics/AnalyticsRepositoryImpl;

    move-result-object p0

    return-object p0
.end method
