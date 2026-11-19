.class public final Lcom/appsflyer/internal/AFh1fSDK;
.super Lcom/appsflyer/internal/AFh1pSDK;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFh1pSDK;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFKeystoreWrapper()Lcom/appsflyer/internal/AFe1zSDK;
    .locals 1

    iget p0, p0, Lcom/appsflyer/internal/AFh1pSDK;->afWarnLog:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/appsflyer/internal/AFd1bSDK;->registerClient:Lcom/appsflyer/internal/AFd1bSDK;

    return-object p0

    :cond_0
    sget-object p0, Lcom/appsflyer/internal/AFd1bSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1bSDK;

    return-object p0
.end method

.method public final AFLogger()Z
    .locals 0

    iget-boolean p0, p0, Lcom/appsflyer/internal/AFh1pSDK;->afErrorLog:Z

    return p0
.end method

.method public final registerClient()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
