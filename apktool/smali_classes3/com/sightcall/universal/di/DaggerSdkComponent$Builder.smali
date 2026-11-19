.class public final Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/di/DaggerSdkComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private capabilitiesComponent:Lcom/sightcall/capabilities/di/CapabilitiesComponent;

.field private caseReportComponent:Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

.field private httpClientModule:Lcom/sightcall/httpclient/di/HttpClientModule;

.field private sdkModule:Lcom/sightcall/universal/di/SdkModule;

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

    invoke-direct {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/universal/di/SdkComponent;
    .locals 8

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->sdkModule:Lcom/sightcall/universal/di/SdkModule;

    const-class v1, Lcom/sightcall/universal/di/SdkModule;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->httpClientModule:Lcom/sightcall/httpclient/di/HttpClientModule;

    const-class v1, Lcom/sightcall/httpclient/di/HttpClientModule;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    const-class v1, Lcom/sightcall/core/di/SightCallComponent;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->capabilitiesComponent:Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    const-class v1, Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->caseReportComponent:Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    const-class v1, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v2, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    iget-object v3, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->sdkModule:Lcom/sightcall/universal/di/SdkModule;

    iget-object v4, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->httpClientModule:Lcom/sightcall/httpclient/di/HttpClientModule;

    iget-object v5, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    iget-object v6, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->capabilitiesComponent:Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    iget-object v7, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->caseReportComponent:Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    invoke-direct/range {v2 .. v7}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;-><init>(Lcom/sightcall/universal/di/SdkModule;Lcom/sightcall/httpclient/di/HttpClientModule;Lcom/sightcall/core/di/SightCallComponent;Lcom/sightcall/capabilities/di/CapabilitiesComponent;Lcom/sightcall/universal/internal/report/di/CaseReportComponent;)V

    return-object v2
.end method

.method public capabilitiesComponent(Lcom/sightcall/capabilities/di/CapabilitiesComponent;)Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->capabilitiesComponent:Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    return-object p0
.end method

.method public caseReportComponent(Lcom/sightcall/universal/internal/report/di/CaseReportComponent;)Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->caseReportComponent:Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    return-object p0
.end method

.method public httpClientModule(Lcom/sightcall/httpclient/di/HttpClientModule;)Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->httpClientModule:Lcom/sightcall/httpclient/di/HttpClientModule;

    return-object p0
.end method

.method public sdkModule(Lcom/sightcall/universal/di/SdkModule;)Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->sdkModule:Lcom/sightcall/universal/di/SdkModule;

    return-object p0
.end method

.method public sightCallComponent(Lcom/sightcall/core/di/SightCallComponent;)Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$Builder;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    return-object p0
.end method
