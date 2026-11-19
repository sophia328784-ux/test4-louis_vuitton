.class final Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lkotlin/ranges/ClosedFloatingPointRange;

.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:F

.field public final synthetic h:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(ZLkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;IZFLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;->b:Z

    iput-object p2, p0, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;->d:Lkotlin/ranges/ClosedFloatingPointRange;

    iput p4, p0, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;->e:I

    iput-boolean p5, p0, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;->f:Z

    iput p6, p0, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;->g:F

    iput-object p7, p0, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;->h:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    iget-object p1, p1, Landroidx/compose/ui/input/key/KeyEvent;->a:Landroid/view/KeyEvent;

    iget-boolean v0, p0, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;->b:Z

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;->c:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->b(Landroid/view/KeyEvent;)I

    move-result v1

    sget-object v2, Landroidx/compose/ui/input/key/KeyEventType;->a:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/input/key/KeyEventType;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;->d:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->f()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->i()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;->e:I

    if-lez v5, :cond_2

    add-int/2addr v5, v4

    goto :goto_0

    :cond_2
    const/16 v5, 0x64

    :goto_0
    int-to-float v6, v5

    div-float/2addr v2, v6

    iget-boolean v6, p0, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;->f:Z

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    move-result-wide v7

    sget-object p1, Landroidx/compose/ui/input/key/Key;->a:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v9, Landroidx/compose/ui/input/key/Key;->e:J

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    iget p0, p0, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;->g:F

    if-eqz p1, :cond_5

    int-to-float p1, v6

    mul-float/2addr p1, v2

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/ranges/RangesKt;->f(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    move v3, v4

    goto/16 :goto_3

    :cond_5
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->f:J

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_6

    int-to-float p1, v6

    mul-float/2addr p1, v2

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/ranges/RangesKt;->f(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->h:J

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_7

    int-to-float p1, v6

    mul-float/2addr p1, v2

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/ranges/RangesKt;->f(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->g:J

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_8

    int-to-float p1, v6

    mul-float/2addr p1, v2

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/ranges/RangesKt;->f(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->w:J

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->i()Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->x:J

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->f()Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->D:J

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    const/16 v6, 0xa

    if-eqz p1, :cond_b

    div-int/2addr v5, v6

    invoke-static {v5, v4, v6}, Lkotlin/ranges/RangesKt;->d(III)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/ranges/RangesKt;->f(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_b
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->E:J

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_e

    div-int/2addr v5, v6

    invoke-static {v5, v4, v6}, Lkotlin/ranges/RangesKt;->d(III)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/ranges/RangesKt;->f(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_c
    sget v0, Landroidx/compose/ui/input/key/KeyEventType;->b:I

    if-ne v1, v0, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    move-result-wide v0

    sget-object p1, Landroidx/compose/ui/input/key/Key;->a:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v5, Landroidx/compose/ui/input/key/Key;->e:J

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_d

    sget-wide v5, Landroidx/compose/ui/input/key/Key;->f:J

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_d

    sget-wide v5, Landroidx/compose/ui/input/key/Key;->h:J

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_d

    sget-wide v5, Landroidx/compose/ui/input/key/Key;->g:J

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_d

    sget-wide v5, Landroidx/compose/ui/input/key/Key;->w:J

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_d

    sget-wide v5, Landroidx/compose/ui/input/key/Key;->x:J

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_d

    sget-wide v5, Landroidx/compose/ui/input/key/Key;->D:J

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_d

    sget-wide v5, Landroidx/compose/ui/input/key/Key;->E:J

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    iget-object p0, p0, Landroidx/compose/material3/SliderKt$slideOnKeyEvents$2;->h:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto/16 :goto_2

    :cond_e
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
