.class public final Lcom/google/android/filament/utils/GestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/GestureDetector$Gesture;,
        Lcom/google/android/filament/utils/GestureDetector$TouchPair;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0002\u0008\tB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/google/android/filament/utils/GestureDetector;",
        "",
        "Landroid/view/View;",
        "view",
        "Lcom/google/android/filament/utils/Manipulator;",
        "manipulator",
        "<init>",
        "(Landroid/view/View;Lcom/google/android/filament/utils/Manipulator;)V",
        "Gesture",
        "TouchPair",
        "filament-utils-android_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lcom/google/android/filament/utils/Manipulator;

.field public c:Lcom/google/android/filament/utils/GestureDetector$Gesture;

.field public d:Lcom/google/android/filament/utils/GestureDetector$TouchPair;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:F


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/filament/utils/Manipulator;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/filament/utils/GestureDetector;->b:Lcom/google/android/filament/utils/Manipulator;

    sget-object p1, Lcom/google/android/filament/utils/GestureDetector$Gesture;->NONE:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->c:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    new-instance p1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    invoke-direct {p1}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->d:Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->e:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->g:Ljava/util/ArrayList;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/filament/utils/GestureDetector;->h:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/filament/utils/GestureDetector;->i:I

    const/16 p1, 0xa

    iput p1, p0, Lcom/google/android/filament/utils/GestureDetector;->j:I

    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/google/android/filament/utils/GestureDetector;->k:F

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;-><init>(Landroid/view/MotionEvent;I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/filament/utils/GestureDetector;->g:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/filament/utils/GestureDetector;->e:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/filament/utils/GestureDetector;->f:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/filament/utils/GestureDetector;->b:Lcom/google/android/filament/utils/Manipulator;

    const/4 v6, 0x1

    if-eq v1, v6, :cond_e

    const/4 v7, 0x2

    if-eq v1, v7, :cond_0

    const/4 p1, 0x3

    if-eq v1, p1, :cond_e

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-eq v1, v6, :cond_1

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector;->c:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    sget-object v8, Lcom/google/android/filament/utils/GestureDetector$Gesture;->ORBIT:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    if-eq v1, v8, :cond_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-eq v1, v7, :cond_2

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector;->c:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    sget-object v8, Lcom/google/android/filament/utils/GestureDetector$Gesture;->PAN:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    if-eq v1, v8, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-eq v1, v7, :cond_4

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector;->c:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    sget-object v8, Lcom/google/android/filament/utils/GestureDetector$Gesture;->ZOOM:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    if-ne v1, v8, :cond_4

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    sget-object p1, Lcom/google/android/filament/utils/GestureDetector$Gesture;->NONE:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->c:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Manipulator;->i()V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector;->c:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    sget-object v8, Lcom/google/android/filament/utils/GestureDetector$Gesture;->ZOOM:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    if-ne v1, v8, :cond_5

    iget-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->d:Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->b()F

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->b()F

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a()Lcom/google/android/filament/utils/Float2;

    move-result-object v2

    iget v2, v2, Lcom/google/android/filament/utils/Float2;->a:F

    float-to-int v2, v2

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a()Lcom/google/android/filament/utils/Float2;

    move-result-object v3

    iget v3, v3, Lcom/google/android/filament/utils/Float2;->b:F

    float-to-int v3, v3

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/google/android/filament/utils/GestureDetector;->k:F

    mul-float/2addr p1, v1

    invoke-virtual {v5, v2, v3, p1}, Lcom/google/android/filament/utils/Manipulator;->k(IIF)V

    iput-object v0, p0, Lcom/google/android/filament/utils/GestureDetector;->d:Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    return-void

    :cond_5
    sget-object v9, Lcom/google/android/filament/utils/GestureDetector$Gesture;->NONE:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    if-eq v1, v9, :cond_6

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a()Lcom/google/android/filament/utils/Float2;

    move-result-object p0

    iget p0, p0, Lcom/google/android/filament/utils/Float2;->a:F

    float-to-int p0, p0

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a()Lcom/google/android/filament/utils/Float2;

    move-result-object p1

    iget p1, p1, Lcom/google/android/filament/utils/Float2;->b:F

    float-to-int p1, p1

    invoke-virtual {v5, p0, p1}, Lcom/google/android/filament/utils/Manipulator;->j(II)V

    return-void

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v6, :cond_7

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v7, :cond_8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/google/android/filament/utils/GestureDetector;->h:I

    if-le p1, v1, :cond_9

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a()Lcom/google/android/filament/utils/Float2;

    move-result-object p1

    iget p1, p1, Lcom/google/android/filament/utils/Float2;->a:F

    float-to-int p1, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a()Lcom/google/android/filament/utils/Float2;

    move-result-object v0

    iget v0, v0, Lcom/google/android/filament/utils/Float2;->b:F

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {v5, p1, v0, v1}, Lcom/google/android/filament/utils/Manipulator;->h(IIZ)V

    sget-object p1, Lcom/google/android/filament/utils/GestureDetector$Gesture;->ORBIT:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->c:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    return-void

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v1, :cond_a

    goto :goto_0

    :cond_a
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->b()F

    move-result p1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->b()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/google/android/filament/utils/GestureDetector;->j:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_b

    iput-object v8, p0, Lcom/google/android/filament/utils/GestureDetector;->c:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    iput-object v0, p0, Lcom/google/android/filament/utils/GestureDetector;->d:Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    return-void

    :cond_b
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v1, :cond_c

    goto :goto_1

    :cond_c
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a()Lcom/google/android/filament/utils/Float2;

    move-result-object p1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a()Lcom/google/android/filament/utils/Float2;

    move-result-object v1

    new-instance v2, Lcom/google/android/filament/utils/Float2;

    iget v3, p1, Lcom/google/android/filament/utils/Float2;->a:F

    iget v4, v1, Lcom/google/android/filament/utils/Float2;->a:F

    sub-float/2addr v3, v4

    iget p1, p1, Lcom/google/android/filament/utils/Float2;->b:F

    iget v1, v1, Lcom/google/android/filament/utils/Float2;->b:F

    sub-float/2addr p1, v1

    invoke-direct {v2, v3, p1}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    iget p1, v2, Lcom/google/android/filament/utils/Float2;->a:F

    mul-float/2addr p1, p1

    iget v1, v2, Lcom/google/android/filament/utils/Float2;->b:F

    mul-float/2addr v1, v1

    add-float/2addr v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    iget v1, p0, Lcom/google/android/filament/utils/GestureDetector;->i:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_d

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a()Lcom/google/android/filament/utils/Float2;

    move-result-object p1

    iget p1, p1, Lcom/google/android/filament/utils/Float2;->a:F

    float-to-int p1, p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a()Lcom/google/android/filament/utils/Float2;

    move-result-object v0

    iget v0, v0, Lcom/google/android/filament/utils/Float2;->b:F

    float-to-int v0, v0

    invoke-virtual {v5, p1, v0, v6}, Lcom/google/android/filament/utils/Manipulator;->h(IIZ)V

    sget-object p1, Lcom/google/android/filament/utils/GestureDetector$Gesture;->PAN:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->c:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    :cond_d
    :goto_1
    return-void

    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    sget-object p1, Lcom/google/android/filament/utils/GestureDetector$Gesture;->NONE:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector;->c:Lcom/google/android/filament/utils/GestureDetector$Gesture;

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Manipulator;->i()V

    return-void
.end method
