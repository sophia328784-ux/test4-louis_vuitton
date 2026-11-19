.class public final Lcom/appsflyer/internal/AFg1ySDK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final AFKeystoreWrapper:Ljava/lang/String;

.field final AFLogger:I

.field final d:I

.field final registerClient:I

.field final unregisterClient:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/appsflyer/internal/AFg1ySDK;->unregisterClient:I

    iput p2, p0, Lcom/appsflyer/internal/AFg1ySDK;->d:I

    iput p3, p0, Lcom/appsflyer/internal/AFg1ySDK;->registerClient:I

    iput p4, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFLogger:I

    iput-object p5, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFKeystoreWrapper:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/appsflyer/internal/AFg1ySDK;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/appsflyer/internal/AFg1ySDK;

    iget v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->unregisterClient:I

    iget v3, p1, Lcom/appsflyer/internal/AFg1ySDK;->unregisterClient:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->d:I

    iget v3, p1, Lcom/appsflyer/internal/AFg1ySDK;->d:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->registerClient:I

    iget v3, p1, Lcom/appsflyer/internal/AFg1ySDK;->registerClient:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFLogger:I

    iget v3, p1, Lcom/appsflyer/internal/AFg1ySDK;->AFLogger:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFKeystoreWrapper:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsflyer/internal/AFg1ySDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/appsflyer/internal/AFg1ySDK;->unregisterClient:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/appsflyer/internal/AFg1ySDK;->d:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/appsflyer/internal/AFg1ySDK;->registerClient:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFLogger:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/appsflyer/internal/AFg1ySDK;->unregisterClient:I

    iget v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->d:I

    iget v2, p0, Lcom/appsflyer/internal/AFg1ySDK;->registerClient:I

    iget v3, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFLogger:I

    iget-object p0, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFKeystoreWrapper:Ljava/lang/String;

    const-string v4, ", gdprApplies="

    const-string v5, ", cmpSdkId="

    const-string v6, "CmpTcfData(policyVersion="

    invoke-static {v0, v1, v6, v4, v5}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cmpSdkVersion="

    const-string v4, ", tcString="

    invoke-static {v2, v3, v1, v4, v0}, Lfc;->x(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
