.class public final synthetic Lhh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SheetState;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SheetState;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhh;->b:Landroidx/compose/material3/SheetState;

    iput p2, p0, Lhh;->c:F

    iput p3, p0, Lhh;->d:F

    iput p4, p0, Lhh;->e:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/compose/material3/internal/DraggableAnchorsConfig;

    iget-object v0, p0, Lhh;->b:Landroidx/compose/material3/SheetState;

    iget-boolean v1, v0, Landroidx/compose/material3/SheetState;->a:Z

    iget v2, p0, Lhh;->c:F

    iget v3, p0, Lhh;->d:F

    if-nez v1, :cond_0

    sget-object v1, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    sub-float v4, v2, v3

    invoke-virtual {p1, v1, v4}, Landroidx/compose/material3/internal/DraggableAnchorsConfig;->a(Landroidx/compose/material3/SheetValue;F)V

    :cond_0
    iget p0, p0, Lhh;->e:F

    cmpg-float v1, p0, v3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    sub-float p0, v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroidx/compose/material3/internal/DraggableAnchorsConfig;->a(Landroidx/compose/material3/SheetValue;F)V

    :goto_0
    iget-boolean p0, v0, Landroidx/compose/material3/SheetState;->c:Z

    if-nez p0, :cond_2

    sget-object p0, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    invoke-virtual {p1, p0, v2}, Landroidx/compose/material3/internal/DraggableAnchorsConfig;->a(Landroidx/compose/material3/SheetValue;F)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
