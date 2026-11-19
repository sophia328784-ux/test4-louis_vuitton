.class public final Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl_Factory;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl_Factory$InstanceHolder;->INSTANCE:Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl_Factory;

    return-object v0
.end method

.method public static newInstance()Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;
    .locals 0

    .line 5
    invoke-static {}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl_Factory;->newInstance()Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl_Factory;->get()Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;

    move-result-object p0

    return-object p0
.end method
