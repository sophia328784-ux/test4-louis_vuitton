.class public final Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final caseReportDataSourceProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;",
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
            "Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl_Factory;->caseReportDataSourceProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;",
            ">;)",
            "Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl_Factory;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;)Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;-><init>(Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl_Factory;->caseReportDataSourceProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl_Factory;->newInstance(Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;)Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl_Factory;->get()Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;

    move-result-object p0

    return-object p0
.end method
