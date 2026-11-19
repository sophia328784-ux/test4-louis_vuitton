.class public Lcom/linecorp/linesdk/LineApiResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lcom/linecorp/linesdk/LineApiResponse;


# instance fields
.field public final a:Lcom/linecorp/linesdk/LineApiResponseCode;

.field public final b:Ljava/lang/Object;

.field public final c:Lcom/linecorp/linesdk/LineApiError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/linecorp/linesdk/LineApiResponse;

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->SUCCESS:Lcom/linecorp/linesdk/LineApiResponseCode;

    const/4 v2, 0x0

    sget-object v3, Lcom/linecorp/linesdk/LineApiError;->e:Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {v0, v1, v2, v3}, Lcom/linecorp/linesdk/LineApiResponse;-><init>(Lcom/linecorp/linesdk/LineApiResponseCode;Ljava/lang/Object;Lcom/linecorp/linesdk/LineApiError;)V

    sput-object v0, Lcom/linecorp/linesdk/LineApiResponse;->d:Lcom/linecorp/linesdk/LineApiResponse;

    return-void
.end method

.method public constructor <init>(Lcom/linecorp/linesdk/LineApiResponseCode;Ljava/lang/Object;Lcom/linecorp/linesdk/LineApiError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/LineApiResponse;->a:Lcom/linecorp/linesdk/LineApiResponseCode;

    iput-object p2, p0, Lcom/linecorp/linesdk/LineApiResponse;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/linecorp/linesdk/LineApiResponse;->c:Lcom/linecorp/linesdk/LineApiError;

    return-void
.end method

.method public static a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/LineApiResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/linecorp/linesdk/LineApiResponse;-><init>(Lcom/linecorp/linesdk/LineApiResponseCode;Ljava/lang/Object;Lcom/linecorp/linesdk/LineApiError;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lcom/linecorp/linesdk/LineApiResponse;->d:Lcom/linecorp/linesdk/LineApiResponse;

    return-object p0

    :cond_0
    new-instance v0, Lcom/linecorp/linesdk/LineApiResponse;

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->SUCCESS:Lcom/linecorp/linesdk/LineApiResponseCode;

    sget-object v2, Lcom/linecorp/linesdk/LineApiError;->e:Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {v0, v1, p0, v2}, Lcom/linecorp/linesdk/LineApiResponse;-><init>(Lcom/linecorp/linesdk/LineApiResponseCode;Ljava/lang/Object;Lcom/linecorp/linesdk/LineApiError;)V

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineApiResponse;->b:Ljava/lang/Object;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "response data is null. Please check result by isSuccess before."

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Z
    .locals 1

    iget-object p0, p0, Lcom/linecorp/linesdk/LineApiResponse;->a:Lcom/linecorp/linesdk/LineApiResponseCode;

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->SUCCESS:Lcom/linecorp/linesdk/LineApiResponseCode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/LineApiResponse;

    iget-object v1, p0, Lcom/linecorp/linesdk/LineApiResponse;->a:Lcom/linecorp/linesdk/LineApiResponseCode;

    iget-object v2, p1, Lcom/linecorp/linesdk/LineApiResponse;->a:Lcom/linecorp/linesdk/LineApiResponseCode;

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v1, p1, Lcom/linecorp/linesdk/LineApiResponse;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineApiResponse;->b:Ljava/lang/Object;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    :goto_0
    return v0

    :cond_4
    iget-object p0, p0, Lcom/linecorp/linesdk/LineApiResponse;->c:Lcom/linecorp/linesdk/LineApiError;

    iget-object p1, p1, Lcom/linecorp/linesdk/LineApiResponse;->c:Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/LineApiError;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/LineApiResponse;->a:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/linecorp/linesdk/LineApiResponse;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/linecorp/linesdk/LineApiResponse;->c:Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiError;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LineApiResponse{errorData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/LineApiResponse;->c:Lcom/linecorp/linesdk/LineApiError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/LineApiResponse;->a:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responseData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/linecorp/linesdk/LineApiResponse;->b:Ljava/lang/Object;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lo60;->r(Ljava/lang/StringBuilder;Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
