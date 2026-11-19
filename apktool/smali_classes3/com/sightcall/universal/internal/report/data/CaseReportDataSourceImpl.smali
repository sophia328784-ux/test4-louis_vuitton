.class public final Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\rH\u0016J \u0010\u000e\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;",
        "Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;",
        "<init>",
        "()V",
        "get",
        "Lcom/sightcall/universal/internal/report/data/CaseReportApi;",
        "env",
        "Lcom/sightcall/universal/api/Environment;",
        "sendCaseReportAsHost",
        "",
        "agent",
        "Lcom/sightcall/universal/agent/Agent;",
        "caseReportV3Request",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;",
        "sendCaseReportAsGuest",
        "session",
        "Lcom/sightcall/universal/model/Session;",
        "token",
        "",
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
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final get(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/internal/report/data/CaseReportApi;
    .locals 0

    const-class p0, Lcom/sightcall/universal/internal/report/data/CaseReportApi;

    invoke-static {p0, p1}, Lcom/sightcall/universal/api/Apis;->get(Ljava/lang/Class;Lcom/sightcall/universal/api/Environment;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/sightcall/universal/internal/report/data/CaseReportApi;

    return-object p0
.end method


# virtual methods
.method public sendCaseReportAsGuest(Lcom/sightcall/universal/api/Environment;Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;->get(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/internal/report/data/CaseReportApi;

    move-result-object p0

    sget-object p1, Lcom/sightcall/universal/api/Headers$Authorization$External;->Companion:Lcom/sightcall/universal/api/Headers$Authorization$External$Companion;

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/api/Headers$Authorization$External$Companion;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$External;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/api/Headers$Authorization$External;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lcom/sightcall/universal/internal/report/data/CaseReportApi;->updateCaseReport(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)Lretrofit2/Call;

    move-result-object p0

    new-instance p1, Lcom/sightcall/universal/api/EmptyCallback;

    invoke-direct {p1}, Lcom/sightcall/universal/api/EmptyCallback;-><init>()V

    invoke-interface {p0, p1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    iget-object p1, p1, Lcom/sightcall/universal/model/Config;->authorizationToken:Lcom/sightcall/httpclient/AuthorizationToken;

    invoke-virtual {p1}, Lcom/sightcall/httpclient/AuthorizationToken;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;->sendCaseReportAsGuest(Lcom/sightcall/universal/api/Environment;Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Agent;->token()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Agent;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;->get(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/internal/report/data/CaseReportApi;

    move-result-object p0

    sget-object p1, Lcom/sightcall/universal/api/Headers$Authorization$PlaneTokenV3;->Companion:Lcom/sightcall/universal/api/Headers$Authorization$PlaneTokenV3$Companion;

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/api/Headers$Authorization$PlaneTokenV3$Companion;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$PlaneTokenV3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/api/Headers$Authorization$PlaneTokenV3;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/sightcall/universal/internal/report/data/CaseReportApi;->updateCaseReport(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)Lretrofit2/Call;

    move-result-object p0

    new-instance p1, Lcom/sightcall/universal/api/EmptyCallback;

    invoke-direct {p1}, Lcom/sightcall/universal/api/EmptyCallback;-><init>()V

    invoke-interface {p0, p1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void

    :cond_0
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    return-void
.end method
