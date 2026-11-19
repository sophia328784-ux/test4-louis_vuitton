.class public Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/metrics/OneAgentScreenMetrics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:F


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->a:I

    iput v0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->a:I

    iget v0, p1, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->b:I

    iput v0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->b:I

    iget v0, p1, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->d:F

    iput v0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->d:F

    iget p1, p1, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->c:I

    iput p1, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;

    iget v2, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->a:I

    iget v3, p1, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->a:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->b:I

    iget v3, p1, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->b:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->c:I

    iget v3, p1, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->c:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget p1, p1, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->d:F

    iget p0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->d:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget p0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->d:F

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivityMetrics{screenWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenDensityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenDensityFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->d:F

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, La;->m(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
