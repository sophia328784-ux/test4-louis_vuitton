.class public final Landroidx/compose/ui/node/DpTouchBoundsExpansion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/DpTouchBoundsExpansion$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u000bB/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/ui/node/DpTouchBoundsExpansion;",
        "",
        "Landroidx/compose/ui/unit/Dp;",
        "start",
        "top",
        "end",
        "bottom",
        "",
        "isLayoutDirectionAware",
        "<init>",
        "(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
        "ui"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/DpTouchBoundsExpansion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/DpTouchBoundsExpansion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->a:F

    iput p2, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->b:F

    iput p3, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->c:F

    iput p4, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->d:F

    iput-boolean p5, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->e:Z

    const/4 p0, 0x0

    cmpl-float p1, p1, p0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Left must be non-negative"

    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_0
    cmpl-float p1, p2, p0

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "Top must be non-negative"

    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_1
    cmpl-float p1, p3, p0

    if-ltz p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "Right must be non-negative"

    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_2
    cmpl-float p0, p4, p0

    if-ltz p0, :cond_3

    return-void

    :cond_3
    const-string p0, "Bottom must be non-negative"

    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/node/DpTouchBoundsExpansion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/node/DpTouchBoundsExpansion;

    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->a:F

    iget v3, p1, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->a:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->b:F

    iget v3, p1, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->b:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->c:F

    iget v3, p1, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->c:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->d:F

    iget v3, p1, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->d:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->e:Z

    iget-boolean p1, p1, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->e:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    iget v0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->b:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->c:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->d:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget-boolean p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DpTouchBoundsExpansion(start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->a:F

    const-string v2, ", top="

    invoke-static {v1, v2, v0}, Lfc;->w(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->b:F

    const-string v2, ", end="

    invoke-static {v1, v2, v0}, Lfc;->w(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->c:F

    const-string v2, ", bottom="

    invoke-static {v1, v2, v0}, Lfc;->w(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->d:F

    const-string v2, ", isLayoutDirectionAware="

    invoke-static {v1, v2, v0}, Lfc;->w(FLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean p0, p0, Landroidx/compose/ui/node/DpTouchBoundsExpansion;->e:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ld21;->q(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
