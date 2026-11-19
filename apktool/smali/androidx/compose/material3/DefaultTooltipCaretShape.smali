.class public final Landroidx/compose/material3/DefaultTooltipCaretShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/material3/DefaultTooltipCaretShape;",
        "Landroidx/compose/ui/graphics/Shape;",
        "Landroidx/compose/ui/unit/DpSize;",
        "caretSize",
        "<init>",
        "(JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:J


# direct methods
.method public constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget p1, Landroidx/compose/material3/TooltipDefaults;->b:F

    sget-wide p1, Landroidx/compose/material3/TooltipDefaults;->a:J

    :cond_0
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/DefaultTooltipCaretShape;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/DefaultTooltipCaretShape;->a:J

    return-void
.end method


# virtual methods
.method public final a(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;
    .locals 1

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object p1

    iget-wide p2, p0, Landroidx/compose/material3/DefaultTooltipCaretShape;->a:J

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/DpSize;->b(J)F

    move-result p0

    invoke-interface {p4, p0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/DpSize;->a(J)F

    move-result p2

    invoke-interface {p4, p2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3}, Landroidx/compose/ui/graphics/AndroidPath;->a(FF)V

    const/high16 p4, 0x40000000    # 2.0f

    div-float v0, p0, p4

    invoke-virtual {p1, v0, p3}, Landroidx/compose/ui/graphics/AndroidPath;->c(FF)V

    invoke-virtual {p1, p3, p2}, Landroidx/compose/ui/graphics/AndroidPath;->c(FF)V

    neg-float p0, p0

    div-float/2addr p0, p4

    invoke-virtual {p1, p0, p3}, Landroidx/compose/ui/graphics/AndroidPath;->c(FF)V

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/AndroidPath;->close()V

    new-instance p0, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/Outline$Generic;-><init>(Landroidx/compose/ui/graphics/Path;)V

    return-object p0
.end method
