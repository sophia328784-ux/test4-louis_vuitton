.class final Lcom/google/android/filament/utils/GestureDetector$TouchPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TouchPair"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\tB\u0019\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/google/android/filament/utils/GestureDetector$TouchPair;",
        "",
        "Lcom/google/android/filament/utils/Float2;",
        "pt0",
        "pt1",
        "",
        "count",
        "<init>",
        "(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;I)V",
        "()V",
        "Landroid/view/MotionEvent;",
        "me",
        "height",
        "(Landroid/view/MotionEvent;I)V",
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
.field public final a:Lcom/google/android/filament/utils/Float2;

.field public final b:Lcom/google/android/filament/utils/Float2;

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 68
    new-instance v0, Lcom/google/android/filament/utils/Float2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/filament/utils/Float2;-><init>(F)V

    new-instance v2, Lcom/google/android/filament/utils/Float2;

    invoke-direct {v2, v1}, Lcom/google/android/filament/utils/Float2;-><init>(F)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;-><init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent;I)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/filament/utils/GestureDetector$TouchPair;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    int-to-float v4, p2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v4, v2

    invoke-direct {v0, v3, v4}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a:Lcom/google/android/filament/utils/Float2;

    iput-object v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->b:Lcom/google/android/filament/utils/Float2;

    iget v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->c:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    int-to-float p2, p2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr p2, p1

    invoke-direct {v0, v2, p2}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->b:Lcom/google/android/filament/utils/Float2;

    iget p1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->c:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Float2;Lcom/google/android/filament/utils/Float2;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a:Lcom/google/android/filament/utils/Float2;

    iput-object p2, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->b:Lcom/google/android/filament/utils/Float2;

    iput p3, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/filament/utils/Float2;
    .locals 5

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a:Lcom/google/android/filament/utils/Float2;

    iget v2, v1, Lcom/google/android/filament/utils/Float2;->a:F

    iget-object p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->b:Lcom/google/android/filament/utils/Float2;

    iget v3, p0, Lcom/google/android/filament/utils/Float2;->a:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    iget v1, v1, Lcom/google/android/filament/utils/Float2;->b:F

    iget p0, p0, Lcom/google/android/filament/utils/Float2;->b:F

    mul-float/2addr v1, v4

    mul-float/2addr p0, v4

    add-float/2addr p0, v1

    invoke-direct {v0, v3, p0}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    return-object v0
.end method

.method public final b()F
    .locals 4

    new-instance v0, Lcom/google/android/filament/utils/Float2;

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a:Lcom/google/android/filament/utils/Float2;

    iget v2, v1, Lcom/google/android/filament/utils/Float2;->a:F

    iget-object p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->b:Lcom/google/android/filament/utils/Float2;

    iget v3, p0, Lcom/google/android/filament/utils/Float2;->a:F

    sub-float/2addr v2, v3

    iget v1, v1, Lcom/google/android/filament/utils/Float2;->b:F

    iget p0, p0, Lcom/google/android/filament/utils/Float2;->b:F

    sub-float/2addr v1, p0

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/utils/Float2;-><init>(FF)V

    iget p0, v0, Lcom/google/android/filament/utils/Float2;->a:F

    mul-float/2addr p0, p0

    iget v0, v0, Lcom/google/android/filament/utils/Float2;->b:F

    mul-float/2addr v0, v0

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a:Lcom/google/android/filament/utils/Float2;

    iget-object v3, p1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a:Lcom/google/android/filament/utils/Float2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->b:Lcom/google/android/filament/utils/Float2;

    iget-object v3, p1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->b:Lcom/google/android/filament/utils/Float2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->c:I

    iget p1, p1, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->c:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float2;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->b:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float2;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TouchPair(pt0="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->a:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pt1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->b:Lcom/google/android/filament/utils/Float2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget p0, p0, Lcom/google/android/filament/utils/GestureDetector$TouchPair;->c:I

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
