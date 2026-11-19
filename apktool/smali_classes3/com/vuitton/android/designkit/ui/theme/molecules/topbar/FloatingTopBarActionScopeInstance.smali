.class final Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarActionScopeInstance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarActionScopeInstance;",
        "Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;",
        "system"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarActionScopeInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarActionScopeInstance;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarActionScopeInstance;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarActionScopeInstance;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)V
    .locals 14

    move-object/from16 v10, p9

    const-string p0, "TopBarAction"

    if-eqz p1, :cond_0

    invoke-static {p1, p0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x48bd98a5

    invoke-interface {v10, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, p0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/high16 v1, 0x41000000    # 8.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 p0, p5

    move-object/from16 p1, p6

    invoke-static {p0, p1, v10}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVFloatingTopBarKt;->b(Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    move-result-object v1

    if-nez p3, :cond_1

    const-string p0, ""

    move-object v4, p0

    goto :goto_0

    :cond_1
    move-object/from16 v4, p3

    :goto_0
    shl-int/lit8 p0, p10, 0x3

    and-int/lit16 p1, p0, 0x380

    or-int/lit8 p1, p1, 0x6

    const/high16 v2, 0xe000000

    and-int/2addr p0, v2

    or-int v11, p1, p0

    shr-int/lit8 p0, p10, 0x9

    and-int/lit8 v12, p0, 0xe

    const/16 v13, 0x2e8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v2, p2

    move-object/from16 v9, p4

    move/from16 v7, p8

    invoke-static/range {v0 .. v13}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;ZIZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {p9 .. p9}, Landroidx/compose/runtime/Composer;->F()V

    return-void
.end method
