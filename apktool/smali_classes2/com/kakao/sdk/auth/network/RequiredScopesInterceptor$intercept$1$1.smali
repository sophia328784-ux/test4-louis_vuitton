.class final Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "agt",
        "",
        "agtError",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic e:Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->d:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->e:Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;

    iput-object p4, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->f:Ljava/util/List;

    iput-object p5, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    check-cast p2, Ljava/lang/Throwable;

    iget-object p1, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->d:Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    if-eqz p2, :cond_0

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/kakao/sdk/auth/AuthCodeClient;->e:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;->a()Ljava/lang/String;

    move-result-object v5

    sget-object p2, Lcom/kakao/sdk/auth/AuthCodeClient;->f:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/auth/AuthCodeClient;

    iget-object v1, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->e:Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;

    iget-object v1, v1, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;->a:Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    invoke-virtual {v1}, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->e()Landroid/content/Context;

    move-result-object v1

    new-instance v6, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1$1;

    iget-object v2, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6, v0, p1, v5, v2}, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const/16 v7, 0xeea

    iget-object v2, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->f:Ljava/util/List;

    const/4 v3, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/kakao/sdk/auth/AuthCodeClient;->a(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
