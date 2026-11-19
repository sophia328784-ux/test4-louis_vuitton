.class final Landroidx/compose/ui/layout/SimplePlacementScope;
.super Landroidx/compose/ui/layout/Placeable$PlacementScope;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/ui/layout/SimplePlacementScope;",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "",
        "parentWidth",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "parentLayoutDirection",
        "",
        "density",
        "fontScale",
        "<init>",
        "(ILandroidx/compose/ui/unit/LayoutDirection;FF)V",
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
.field public final c:I

.field public final d:Landroidx/compose/ui/unit/LayoutDirection;

.field public final e:F

.field public final f:F


# direct methods
.method public constructor <init>(ILandroidx/compose/ui/unit/LayoutDirection;FF)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;-><init>()V

    iput p1, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->c:I

    iput-object p2, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->d:Landroidx/compose/ui/unit/LayoutDirection;

    iput p3, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->e:F

    iput p4, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->f:F

    return-void
.end method


# virtual methods
.method public final f()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->d:Landroidx/compose/ui/unit/LayoutDirection;

    return-object p0
.end method

.method public final getDensity()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->e:F

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->c:I

    return p0
.end method

.method public final s1()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/SimplePlacementScope;->f:F

    return p0
.end method
