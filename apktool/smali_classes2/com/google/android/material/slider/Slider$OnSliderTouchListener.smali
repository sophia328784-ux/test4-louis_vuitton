.class public interface abstract Lcom/google/android/material/slider/Slider$OnSliderTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/slider/BaseOnSliderTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/Slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSliderTouchListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/slider/BaseOnSliderTouchListener<",
        "Lcom/google/android/material/slider/Slider;",
        ">;"
    }
.end annotation


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/material/slider/Slider;

    invoke-interface {p0}, Lcom/google/android/material/slider/Slider$OnSliderTouchListener;->e()V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/material/slider/Slider;

    invoke-interface {p0}, Lcom/google/android/material/slider/Slider$OnSliderTouchListener;->d()V

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method
