.class public final Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt;->ConsentDeclineView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\t\u001a\u00020\u0006*\u00020\u00002\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Landroidx/compose/ui/layout/MeasureScope;",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "measurables",
        "Landroidx/compose/ui/unit/Constraints;",
        "constraints",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $constraintSet:Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;

.field final synthetic $contentTracker:Landroidx/compose/runtime/MutableState;

.field final synthetic $measurer:Landroidx/constraintlayout/compose/Measurer2;

.field final synthetic $optimizationLevel:I

.field final synthetic $remeasureRequesterState:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/constraintlayout/compose/Measurer2;Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;ILandroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2;->$contentTracker:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2;->$measurer:Landroidx/constraintlayout/compose/Measurer2;

    iput-object p3, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2;->$constraintSet:Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;

    iput p4, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2;->$optimizationLevel:I

    iput-object p5, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2;->$remeasureRequesterState:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/compose/ui/layout/MeasurePolicy;->maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/compose/ui/layout/MeasurePolicy;->maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2;->$contentTracker:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    iget-object v0, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2;->$measurer:Landroidx/constraintlayout/compose/Measurer2;

    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    iget-object v4, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2;->$constraintSet:Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;

    iget v7, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2;->$optimizationLevel:I

    move-object v5, p2

    move-wide v1, p3

    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/compose/Measurer2;->f(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/constraintlayout/compose/ConstraintSet;Ljava/util/List;Ljava/util/LinkedHashMap;I)J

    move-result-wide p2

    iget-object p4, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2;->$remeasureRequesterState:Landroidx/compose/runtime/MutableState;

    invoke-interface {p4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    sget-object p4, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    const/16 p4, 0x20

    shr-long v0, p2, p4

    long-to-int p4, v0

    const-wide v0, 0xffffffffL

    and-long/2addr p2, v0

    long-to-int p2, p2

    new-instance p3, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2$1;

    iget-object p0, p0, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2;->$measurer:Landroidx/constraintlayout/compose/Measurer2;

    invoke-direct {p3, p0, v5, v6}, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt$ConsentDeclineView$lambda$0$$inlined$ConstraintLayout$2$1;-><init>(Landroidx/constraintlayout/compose/Measurer2;Ljava/util/List;Ljava/util/Map;)V

    invoke-static {p1, p4, p2, p3}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/compose/ui/layout/MeasurePolicy;->minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/compose/ui/layout/MeasurePolicy;->minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p0

    return p0
.end method
