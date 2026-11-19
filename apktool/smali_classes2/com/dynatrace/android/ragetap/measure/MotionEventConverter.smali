.class public Lcom/dynatrace/android/ragetap/measure/MotionEventConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/dynatrace/android/ragetap/measure/MotionEventConverter;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "invalid value"

    invoke-static {p0}, Llc0;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
