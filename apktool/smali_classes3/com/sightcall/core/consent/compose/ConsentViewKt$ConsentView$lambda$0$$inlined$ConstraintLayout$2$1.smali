.class public final Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$2;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "",
        "invoke",
        "(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V",
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
.field final synthetic $measurables:Ljava/util/List;

.field final synthetic $measurer:Landroidx/constraintlayout/compose/Measurer2;

.field final synthetic $placeableMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/compose/Measurer2;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$2$1;->$measurer:Landroidx/constraintlayout/compose/Measurer2;

    iput-object p2, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$2$1;->$measurables:Ljava/util/List;

    iput-object p3, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$2$1;->$placeableMap:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$2$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$2$1;->$measurer:Landroidx/constraintlayout/compose/Measurer2;

    iget-object v1, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$2$1;->$measurables:Ljava/util/List;

    iget-object p0, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$2$1;->$placeableMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, p0}, Landroidx/constraintlayout/compose/Measurer2;->e(Landroidx/compose/ui/layout/Placeable$PlacementScope;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
