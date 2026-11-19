.class public final Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddToCartError"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;",
        "Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error;",
        "",
        "isPartialError",
        "",
        "error",
        "<init>",
        "(ZLjava/lang/Throwable;)V",
        "domain"
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
.field public final a:Z

.field public final b:Ljava/lang/Throwable;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;->a:Z

    iput-object p2, p0, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;->b:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    const-string p1, "multiple_atc_partial_error"

    goto :goto_0

    :cond_0
    const-string p1, "multiple_atc_error"

    :goto_0
    iput-object p1, p0, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;->b:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;

    iget-boolean v1, p0, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;->b:Ljava/lang/Throwable;

    iget-object p1, p1, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;->b:Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;->b:Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AddToCartError(isPartialError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;->b:Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
