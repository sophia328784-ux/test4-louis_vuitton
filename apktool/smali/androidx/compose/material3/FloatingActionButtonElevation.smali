.class public Landroidx/compose/material3/FloatingActionButtonElevation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0017\u0018\u00002\u00020\u0001B)\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/material3/FloatingActionButtonElevation;",
        "",
        "Landroidx/compose/ui/unit/Dp;",
        "defaultElevation",
        "pressedElevation",
        "focusedElevation",
        "hoveredElevation",
        "<init>",
        "(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "material3"
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
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F


# direct methods
.method public constructor <init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/FloatingActionButtonElevation;->a:F

    iput p2, p0, Landroidx/compose/material3/FloatingActionButtonElevation;->b:F

    iput p3, p0, Landroidx/compose/material3/FloatingActionButtonElevation;->c:F

    iput p4, p0, Landroidx/compose/material3/FloatingActionButtonElevation;->d:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    instance-of v1, p1, Landroidx/compose/material3/FloatingActionButtonElevation;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/material3/FloatingActionButtonElevation;

    iget v1, p1, Landroidx/compose/material3/FloatingActionButtonElevation;->a:F

    iget v2, p0, Landroidx/compose/material3/FloatingActionButtonElevation;->a:F

    invoke-static {v2, v1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget v1, p0, Landroidx/compose/material3/FloatingActionButtonElevation;->b:F

    iget v2, p1, Landroidx/compose/material3/FloatingActionButtonElevation;->b:F

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget v1, p0, Landroidx/compose/material3/FloatingActionButtonElevation;->c:F

    iget v2, p1, Landroidx/compose/material3/FloatingActionButtonElevation;->c:F

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    iget p0, p0, Landroidx/compose/material3/FloatingActionButtonElevation;->d:F

    iget p1, p1, Landroidx/compose/material3/FloatingActionButtonElevation;->d:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    iget v0, p0, Landroidx/compose/material3/FloatingActionButtonElevation;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/material3/FloatingActionButtonElevation;->b:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/material3/FloatingActionButtonElevation;->c:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget p0, p0, Landroidx/compose/material3/FloatingActionButtonElevation;->d:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
