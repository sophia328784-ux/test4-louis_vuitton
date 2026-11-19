.class public abstract Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;
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


# static fields
.field public static final a:Landroidx/compose/ui/node/DpTouchBoundsExpansion;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    new-instance v1, Landroidx/compose/ui/node/DpTouchBoundsExpansion;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x42200000    # 40.0f

    move v4, v2

    move v5, v3

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/node/DpTouchBoundsExpansion;-><init>(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->a:Landroidx/compose/ui/node/DpTouchBoundsExpansion;

    return-void
.end method

.method public static final a(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;ZZLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 2

    if-eqz p1, :cond_1

    sget-boolean p1, Landroidx/compose/foundation/text/handwriting/StylusHandwriting_androidKt;->a:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    sget-object p1, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->a:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    new-instance p2, Landroidx/compose/ui/input/pointer/StylusHoverIconModifierElement;

    const/4 v0, 0x0

    sget-object v1, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->a:Landroidx/compose/ui/node/DpTouchBoundsExpansion;

    invoke-direct {p2, p1, v0, v1}, Landroidx/compose/ui/input/pointer/StylusHoverIconModifierElement;-><init>(Landroidx/compose/ui/input/pointer/PointerIcon;ZLandroidx/compose/ui/node/DpTouchBoundsExpansion;)V

    invoke-interface {p0, p2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    new-instance p1, Landroidx/compose/foundation/text/handwriting/StylusHandwritingElement;

    invoke-direct {p1, p3}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingElement;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_1
    return-object p0
.end method
