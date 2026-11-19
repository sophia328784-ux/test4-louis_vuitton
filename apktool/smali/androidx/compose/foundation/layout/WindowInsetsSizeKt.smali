.class public abstract Landroidx/compose/foundation/layout/WindowInsetsSizeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "foundation-layout"
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
.field public static final a:La61;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La61;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, La61;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->a:La61;

    return-void
.end method

.method public static final a(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;Landroidx/compose/foundation/layout/AndroidWindowInsets;)Landroidx/compose/ui/Modifier;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;

    sget-object v1, Landroidx/compose/ui/platform/InspectableValueKt;->a:Lkotlin/jvm/functions/Function1;

    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->a:La61;

    invoke-direct {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
