.class public interface abstract Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008`\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00032\u0008\u0008\u0001\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u000bH\'\u00a8\u0006\u000c\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;",
        "",
        "getReference",
        "Lretrofit2/Call;",
        "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;",
        "body",
        "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity;",
        "switchRole",
        "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity;",
        "authorization",
        "Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;",
        "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;",
        "session_release"
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
.method public abstract getReference(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v3/references"
    .end annotation
.end method

.method public abstract switchRole(Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;",
            "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v3/references"
    .end annotation
.end method
