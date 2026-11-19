.class public final synthetic Landroidx/compose/material3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic e:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f:J

.field public final synthetic g:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic h:Landroidx/compose/material3/TopAppBarMeasurePolicy;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JLandroidx/compose/ui/layout/MeasureScope;Landroidx/compose/material3/TopAppBarMeasurePolicy;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/u;->b:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/material3/u;->c:I

    iput-object p3, p0, Landroidx/compose/material3/u;->d:Landroidx/compose/ui/layout/Placeable;

    iput-object p4, p0, Landroidx/compose/material3/u;->e:Landroidx/compose/ui/layout/Placeable;

    iput-wide p5, p0, Landroidx/compose/material3/u;->f:J

    iput-object p7, p0, Landroidx/compose/material3/u;->g:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p8, p0, Landroidx/compose/material3/u;->h:Landroidx/compose/material3/TopAppBarMeasurePolicy;

    iput p9, p0, Landroidx/compose/material3/u;->i:I

    iput p10, p0, Landroidx/compose/material3/u;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/material3/u;->b:Landroidx/compose/ui/layout/Placeable;

    iget v1, v0, Landroidx/compose/ui/layout/Placeable;->c:I

    iget v2, p0, Landroidx/compose/material3/u;->c:I

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget v1, Landroidx/compose/material3/AppBarKt;->c:F

    iget-object v4, p0, Landroidx/compose/material3/u;->g:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v4, v1}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v1

    iget v0, v0, Landroidx/compose/ui/layout/Placeable;->b:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/material3/u;->e:Landroidx/compose/ui/layout/Placeable;

    iget v4, v1, Landroidx/compose/ui/layout/Placeable;->b:I

    iget-object v5, p0, Landroidx/compose/material3/u;->h:Landroidx/compose/material3/TopAppBarMeasurePolicy;

    iget-object v6, v5, Landroidx/compose/material3/TopAppBarMeasurePolicy;->c:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v7, p0, Landroidx/compose/material3/u;->d:Landroidx/compose/ui/layout/Placeable;

    iget v8, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    iget-wide v9, p0, Landroidx/compose/material3/u;->f:J

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v11

    sget-object v12, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-interface {v6, v8, v11, v12}, Landroidx/compose/ui/Alignment$Horizontal;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v6

    if-ge v6, v0, :cond_0

    sub-int/2addr v0, v6

    :goto_0
    add-int/2addr v6, v0

    goto :goto_1

    :cond_0
    iget v0, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    add-int/2addr v0, v6

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v8

    sub-int/2addr v8, v4

    if-le v0, v8, :cond_1

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v0

    sub-int/2addr v0, v4

    iget v4, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    add-int/2addr v4, v6

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, v5, Landroidx/compose/material3/TopAppBarMeasurePolicy;->b:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->e:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget p0, v7, Landroidx/compose/ui/layout/Placeable;->c:I

    sub-int p0, v2, p0

    div-int/lit8 v3, p0, 0x2

    goto :goto_2

    :cond_2
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->d:Landroidx/compose/foundation/layout/Arrangement$Bottom$1;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v5, Landroidx/compose/material3/TopAppBarMeasurePolicy;->d:I

    iget v4, v7, Landroidx/compose/ui/layout/Placeable;->c:I

    if-nez v0, :cond_3

    sub-int v3, v2, v4

    goto :goto_2

    :cond_3
    iget v5, p0, Landroidx/compose/material3/u;->i:I

    sub-int v5, v4, v5

    sub-int/2addr v0, v5

    add-int v5, v0, v4

    iget p0, p0, Landroidx/compose/material3/u;->j:I

    if-le v5, p0, :cond_4

    sub-int/2addr v5, p0

    sub-int/2addr v0, v5

    :cond_4
    sub-int p0, v2, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v3, p0, v0

    :cond_5
    :goto_2
    invoke-static {p1, v7, v6, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result p0

    iget v0, v1, Landroidx/compose/ui/layout/Placeable;->b:I

    sub-int/2addr p0, v0

    iget v0, v1, Landroidx/compose/ui/layout/Placeable;->c:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-static {p1, v1, p0, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
