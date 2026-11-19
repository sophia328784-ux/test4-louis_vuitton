.class public final Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0014\u0010\u000f\u001a\u00020\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012H\u00d6\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0005H\u00d6\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;",
        "",
        "success",
        "",
        "message",
        "",
        "<init>",
        "(ZLjava/lang/String;)V",
        "getSuccess",
        "()Z",
        "getMessage",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "analytics_release"
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
.field private final message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private final success:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->success:Z

    iput-object p2, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->message:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;ZLjava/lang/String;ILjava/lang/Object;)Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->success:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->message:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->copy(ZLjava/lang/String;)Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->success:Z

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ZLjava/lang/String;)Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;-><init>(ZLjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;

    iget-boolean v1, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->success:Z

    iget-boolean v3, p1, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->success:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->message:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->success:Z

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->success:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->message:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->success:Z

    iget-object p0, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadResponseEntity;->message:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AnalyticsUploadResponseEntity(success="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", message="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
