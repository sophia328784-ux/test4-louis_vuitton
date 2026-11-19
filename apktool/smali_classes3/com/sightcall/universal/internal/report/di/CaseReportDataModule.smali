.class public abstract Lcom/sightcall/universal/internal/report/di/CaseReportDataModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H!\u00a2\u0006\u0002\u0008\u0008J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH!\u00a2\u0006\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/report/di/CaseReportDataModule;",
        "",
        "<init>",
        "()V",
        "provideCaseReportDataSource",
        "Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;",
        "caseReportDataSourceImpl",
        "Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;",
        "provideCaseReportDataSource$sdk_installedRelease",
        "provideCaseReportRepository",
        "Lcom/sightcall/universal/internal/report/CaseReportRepository;",
        "caseReportRepositoryImpl",
        "Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;",
        "provideCaseReportRepository$sdk_installedRelease",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract provideCaseReportDataSource$sdk_installedRelease(Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;)Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideCaseReportRepository$sdk_installedRelease(Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;)Lcom/sightcall/universal/internal/report/CaseReportRepository;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
