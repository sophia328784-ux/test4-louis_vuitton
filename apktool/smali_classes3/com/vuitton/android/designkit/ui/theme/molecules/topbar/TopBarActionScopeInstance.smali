.class public final Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScopeInstance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScopeInstance$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScopeInstance;",
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
.field public static final a:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScopeInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScopeInstance;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScopeInstance;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScopeInstance;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)V
    .locals 9

    move-object/from16 p0, p7

    move-object/from16 v6, p9

    move/from16 v0, p10

    if-eqz p1, :cond_0

    const-string v1, "TopBarAction"

    invoke-static {p1, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, -0x12f3f431

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit16 v1, v0, 0x380

    xor-int/lit16 v1, v1, 0x180

    const/16 v2, 0x100

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_1

    invoke-interface {v6, p3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    and-int/lit16 v1, v0, 0x180

    if-ne v1, v2, :cond_3

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    const/high16 v2, 0x380000

    and-int/2addr v2, v0

    const/high16 v5, 0x180000

    xor-int/2addr v2, v5

    const/high16 v7, 0x100000

    if-le v2, v7, :cond_4

    invoke-interface {v6, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    and-int v2, v0, v5

    if-ne v2, v7, :cond_5

    goto :goto_1

    :cond_5
    move v4, v3

    :cond_6
    :goto_1
    or-int/2addr v1, v4

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_7

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_8

    :cond_7
    new-instance v2, Lu3;

    const/4 v1, 0x4

    invoke-direct {v2, p3, p0, v1}, Lu3;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v3, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance p0, Lom;

    invoke-direct {p0, p2, p5}, Lom;-><init>(ILcom/vuitton/android/designkit/ui/theme/LVColorScheme;)V

    const p1, -0x15c1b493

    invoke-static {p1, p0, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    shr-int/lit8 p1, v0, 0x9

    and-int/lit8 p1, p1, 0xe

    or-int/2addr p1, v5

    shr-int/lit8 p2, v0, 0xf

    and-int/lit16 p2, p2, 0x380

    or-int v7, p1, p2

    const/16 v8, 0x38

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    move-object v0, p4

    move/from16 v2, p8

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {p9 .. p9}, Landroidx/compose/runtime/Composer;->F()V

    return-void
.end method
