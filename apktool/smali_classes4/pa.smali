.class public final synthetic Lpa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;JZ)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lpa;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lpa;->e:Ljava/lang/Object;

    iput-wide p3, p0, Lpa;->c:J

    iput-boolean p5, p0, Lpa;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;J)V
    .locals 1

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lpa;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lpa;->d:Z

    iput-object p2, p0, Lpa;->e:Ljava/lang/Object;

    iput-wide p3, p0, Lpa;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lpa;->b:I

    iget-object v1, p0, Lpa;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0xc01

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-wide v3, p0, Lpa;->c:J

    iget-boolean v5, p0, Lpa;->d:Z

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailSubModeOverlayKt;->a(Ljava/lang/String;JZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    and-int/2addr p1, v2

    invoke-interface {v7, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string p2, "AudioGuideMiniPlayer_bogVsAg$lambda$0$1"

    invoke-direct {p1, p2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p1

    const-string p2, "audioGuide_miniPlayerPlayPause_button"

    invoke-static {p1, p2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-boolean p1, p0, Lpa;->d:Z

    if-eqz p1, :cond_1

    const p2, 0x41f8b424

    invoke-interface {v7, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->b0:I

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_1
    const p2, 0x41fa10e4

    invoke-interface {v7, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->Z:I

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1
    invoke-static {p2, v7, v3}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v2

    if-eqz p1, :cond_2

    const p1, 0x41fc708a

    const p2, 0x7f140351

    invoke-static {v7, p1, p2, v7}, Lo60;->k(Landroidx/compose/runtime/Composer;IILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v3, p1

    goto :goto_3

    :cond_2
    const p1, 0x41fdb911

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->b:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f140357

    invoke-static {p2, p1, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :goto_3
    const/16 v8, 0x8

    const/4 v9, 0x0

    iget-wide v5, p0, Lpa;->c:J

    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_4

    :cond_3
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
