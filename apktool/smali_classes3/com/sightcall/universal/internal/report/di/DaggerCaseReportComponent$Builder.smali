.class public final Lcom/sightcall/universal/internal/report/di/DaggerCaseReportComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/report/di/DaggerCaseReportComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/report/di/DaggerCaseReportComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/report/di/DaggerCaseReportComponent$Builder;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    const-class v1, Lcom/sightcall/core/di/SightCallComponent;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/sightcall/universal/internal/report/di/DaggerCaseReportComponent$CaseReportComponentImpl;

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/di/DaggerCaseReportComponent$Builder;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/report/di/DaggerCaseReportComponent$CaseReportComponentImpl;-><init>(Lcom/sightcall/core/di/SightCallComponent;)V

    return-object v0
.end method

.method public sightCallComponent(Lcom/sightcall/core/di/SightCallComponent;)Lcom/sightcall/universal/internal/report/di/DaggerCaseReportComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/internal/report/di/DaggerCaseReportComponent$Builder;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    return-object p0
.end method
