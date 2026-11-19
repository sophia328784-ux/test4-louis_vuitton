.class public abstract Landroidx/core/graphics/PaintCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/airbnb/lottie/animation/LPaint;Landroidx/core/graphics/BlendModeCompat;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/core/graphics/BlendModeUtils$Api29Impl;->a(Landroidx/core/graphics/BlendModeCompat;)Landroid/graphics/BlendMode;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method
