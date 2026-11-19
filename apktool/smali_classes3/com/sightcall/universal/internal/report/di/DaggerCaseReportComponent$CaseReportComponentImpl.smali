.class final Lcom/sightcall/universal/internal/report/di/DaggerCaseReportComponent$CaseReportComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/internal/report/di/CaseReportComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/report/di/DaggerCaseReportComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaseReportComponentImpl"
.end annotation


# instance fields
.field private final caseReportComponentImpl:Lcom/sightcall/universal/internal/report/di/DaggerCaseReportComponent$CaseReportComponentImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/core/di/SightCallComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/sightcall/universal/internal/report/di/DaggerCaseReportComponent$CaseReportComponentImpl;->caseReportComponentImpl:Lcom/sightcall/universal/internal/report/di/DaggerCaseReportComponent$CaseReportComponentImpl;

    return-void
.end method


# virtual methods
.method public caseReportRepositoryImpl()Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;
    .locals 1

    new-instance p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;

    new-instance v0, Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;-><init>()V

    invoke-direct {p0, v0}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;-><init>(Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;)V

    return-object p0
.end method

.method public getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/report/di/DaggerCaseReportComponent$CaseReportComponentImpl;->caseReportRepositoryImpl()Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;

    move-result-object p0

    return-object p0
.end method
