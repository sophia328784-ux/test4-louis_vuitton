.class public interface abstract Lcom/sightcall/universal/internal/report/data/CaseReportApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008`\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\'\u00a8\u0006\t\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/report/data/CaseReportApi;",
        "",
        "updateCaseReport",
        "Lretrofit2/Call;",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Response;",
        "authorization",
        "",
        "caseReportRecordingRequestEntity",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;",
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


# virtual methods
.method public abstract updateCaseReport(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json",
            "Content-Type: application/vnd.api+json; charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v3/caseReportEventsArrays"
    .end annotation
.end method
