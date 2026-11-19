.class public abstract Landroidx/compose/foundation/BasicMarqueeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Landroidx/compose/ui/Modifier;Lsc;I)Landroidx/compose/ui/Modifier;
    .locals 9

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/MarqueeDefaults;->a:Lv40;

    const/4 v0, 0x3

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    :goto_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/compose/foundation/MarqueeAnimationMode;->b:Landroidx/compose/foundation/MarqueeAnimationMode$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    sget-object v0, Landroidx/compose/foundation/MarqueeDefaults;->a:Lv40;

    sget-object v0, Landroidx/compose/foundation/MarqueeAnimationMode;->b:Landroidx/compose/foundation/MarqueeAnimationMode$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_2

    sget-object p1, Landroidx/compose/foundation/MarqueeDefaults;->a:Lv40;

    :cond_2
    move-object v6, p1

    and-int/lit8 p1, p2, 0x20

    if-eqz p1, :cond_3

    sget p1, Landroidx/compose/foundation/MarqueeDefaults;->b:F

    :goto_2
    move v7, p1

    goto :goto_3

    :cond_3
    const/high16 p1, 0x42700000    # 60.0f

    goto :goto_2

    :goto_3
    new-instance v1, Landroidx/compose/foundation/MarqueeModifierElement;

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x4b0

    const/16 v5, 0x4b0

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/MarqueeModifierElement;-><init>(IIIILandroidx/compose/foundation/MarqueeSpacing;FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
