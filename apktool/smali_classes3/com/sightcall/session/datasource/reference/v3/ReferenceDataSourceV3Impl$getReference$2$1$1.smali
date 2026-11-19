.class public final Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl$getReference$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;->getReference(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J\u001e\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl$getReference$2$1$1",
        "Lretrofit2/Callback;",
        "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;",
        "onResponse",
        "",
        "call",
        "Lretrofit2/Call;",
        "response",
        "Lretrofit2/Response;",
        "onFailure",
        "t",
        "",
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


# instance fields
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/session/Reference;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/session/Reference;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl$getReference$2$1$1;->$continuation:Lkotlin/coroutines/Continuation;

    iput-object p2, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl$getReference$2$1$1;->this$0:Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p1}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    iget-object p0, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl$getReference$2$1$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lcom/sightcall/pratik/Result$Error;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {p1, p2}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl$getReference$2$1$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl$getReference$2$1$1;->this$0:Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;

    invoke-static {p0, p2}, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;->access$onGetReferenceResponse(Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;Lretrofit2/Response;)Lcom/sightcall/pratik/Result;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
