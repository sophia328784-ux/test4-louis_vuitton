.class public abstract Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;
    }
.end annotation


# direct methods
.method public static a(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)Lcom/linecorp/linesdk/api/LineApiClient;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/linecorp/linesdk/api/LineApiClient;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;

    invoke-direct {v2, p0}, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/api/LineApiClient;

    return-object p0
.end method
