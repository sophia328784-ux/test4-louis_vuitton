.class public abstract Landroidx/compose/material3/TooltipDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/TooltipDefaults;",
        "",
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


# static fields
.field public static final a:J

.field public static final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x41000000    # 8.0f

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1, v0}, Landroidx/compose/ui/unit/DpKt;->a(FF)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/TooltipDefaults;->a:J

    const/high16 v2, 0x43480000    # 200.0f

    sput v2, Landroidx/compose/material3/TooltipDefaults;->b:F

    new-instance v2, Landroidx/compose/material3/DefaultTooltipCaretShape;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroidx/compose/material3/DefaultTooltipCaretShape;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/window/PopupPositionProvider;
    .locals 3

    sget v0, Landroidx/compose/material3/TooltipKt;->a:F

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Density;

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v1

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_1

    :cond_0
    new-instance v2, Landroidx/compose/material3/TooltipPositionProviderImpl;

    const/4 v1, 0x0

    invoke-direct {v2, p1, v0, v1}, Landroidx/compose/material3/TooltipPositionProviderImpl;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v2, Landroidx/compose/material3/TooltipPositionProviderImpl;

    return-object v2
.end method
