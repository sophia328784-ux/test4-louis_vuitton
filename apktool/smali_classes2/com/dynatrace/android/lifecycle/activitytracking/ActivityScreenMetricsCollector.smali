.class public Lcom/dynatrace/android/lifecycle/activitytracking/ActivityScreenMetricsCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/lifecycle/activitytracking/ActivityScreenMetricsCollector$DisplayAccessor;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/view/Display;I)Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;
    .locals 5

    new-instance v0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;

    invoke-direct {v0}, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;-><init>()V

    sget v1, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsUtility;->a:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->d:F

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->c:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    if-eqz p0, :cond_0

    if-ne p0, v4, :cond_2

    :cond_0
    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    if-ne p1, v3, :cond_2

    if-eq p0, v3, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget p0, v1, Landroid/graphics/Point;->x:I

    iget p1, v1, Landroid/graphics/Point;->y:I

    if-eqz v2, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->a:I

    iget p0, v1, Landroid/graphics/Point;->x:I

    iget p1, v1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, v0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->b:I

    goto :goto_2

    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, v0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->a:I

    iget p0, v1, Landroid/graphics/Point;->x:I

    iget p1, v1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->b:I

    :goto_2
    new-instance p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;

    invoke-direct {p0, v0}, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;-><init>(Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;)V

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;
    .locals 5

    const-string p0, "window"

    invoke-virtual {p1, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/dynatrace/android/lifecycle/activitytracking/ActivityScreenMetricsCollector;->b(Landroid/view/Display;I)Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v3, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;

    invoke-direct {v3}, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;-><init>()V

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    if-eqz p1, :cond_4

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    if-eq p1, v2, :cond_4

    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v3, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->a:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, v3, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->b:I

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v3, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->a:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v3, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->b:I

    :goto_3
    iget p0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    iput p1, v3, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->d:F

    iput p0, v3, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;->c:I

    new-instance p0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;

    invoke-direct {p0, v3}, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;-><init>(Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics$Builder;)V

    return-object p0
.end method
