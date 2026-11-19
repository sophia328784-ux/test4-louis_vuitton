.class public final synthetic Lbw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(FI)V
    .locals 0

    iput p2, p0, Lbw;->b:I

    iput p1, p0, Lbw;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lbw;->b:I

    const/4 v1, 0x0

    iget p0, p0, Lbw;->c:F

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const p2, 0x4100e707

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v0, "ThematicPlpThemeSelectionContent_ioSWKzA$lambda$5"

    invoke-direct {p2, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p2, v0}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p2

    invoke-static {p2, p0}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0

    :pswitch_0
    const p2, 0x4c4f1aac    # 5.429112E7f

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v0, "TopAssetWithGradients$lambda$0$4$0"

    invoke-direct {p2, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0, v1}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0

    :pswitch_1
    const p2, 0x1a68d767

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v0, "TopAssetWithGradients$lambda$0$0"

    invoke-direct {p2, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0, v1}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0

    :pswitch_2
    sget p2, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt;->a:F

    const p2, 0x26f882a0

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string p2, "ImmersiveArticleContent_01WpQAk$lambda$3$11$1"

    invoke-direct {v0, p2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    add-float v2, p0, p2

    sget-object p0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0

    :pswitch_3
    const p2, -0x47cab7f6

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v0, "EditorialCardBackground$lambda$0$4$0"

    invoke-direct {p2, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0, v1}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0

    :pswitch_4
    const p2, 0x64e1426f

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v0, "EditorialCardBackground$lambda$0$0"

    invoke-direct {p2, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0, v1}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
