.class public final synthetic Lb40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb40;->b:Z

    iput-object p2, p0, Lb40;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v8, p1

    check-cast v8, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

    move-object v4, p2

    check-cast v4, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v9, p3

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 p1, p4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean p2, p0, Lb40;->b:Z

    if-eqz p2, :cond_0

    const p2, 0x58900d6

    invoke-interface {v9, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object p2

    iget v1, p2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->M0:I

    const p2, 0x7f14037f

    invoke-static {v9, p2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    shl-int/lit8 p2, p1, 0x9

    const v0, 0xe000

    and-int/2addr p2, v0

    shl-int/lit8 p1, p1, 0x18

    const/high16 v0, 0xe000000

    and-int/2addr p1, v0

    or-int v10, p2, p1

    const/16 v11, 0xe1

    const/4 v0, 0x0

    iget-object v3, p0, Lb40;->c:Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope$ComposeDefaultImpls;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_0
    const p0, 0x58d940e

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
