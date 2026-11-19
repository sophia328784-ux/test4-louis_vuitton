.class public final synthetic Lor0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;Ljava/lang/Object;FFI)V
    .locals 0

    iput p5, p0, Lor0;->b:I

    iput-object p1, p0, Lor0;->c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    iput-object p2, p0, Lor0;->f:Ljava/lang/Object;

    iput p3, p0, Lor0;->d:F

    iput p4, p0, Lor0;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lor0;->b:I

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lor0;->f:Ljava/lang/Object;

    iget-object v5, p0, Lor0;->c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    packed-switch v0, :pswitch_data_0

    check-cast v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

    move-object/from16 v12, p2

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v0, v6, 0x11

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    and-int/lit8 v1, v6, 0x1

    invoke-interface {v12, v1, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    if-eqz v4, :cond_2

    iget-object v0, v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    const-string v0, ""

    :cond_3
    invoke-static {v0, v12}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/helper/ColorHelperKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;)J

    move-result-wide v8

    const/4 v13, 0x0

    const/4 v6, 0x0

    iget v10, p0, Lor0;->d:F

    iget v11, p0, Lor0;->e:F

    invoke-static/range {v6 .. v13}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/BottomScrollIndicationKt;->a(Landroidx/compose/ui/Modifier;ZJFFLandroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_4
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v4, Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

    move-object/from16 v12, p2

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v0, v6, 0x11

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v3

    :goto_3
    and-int/lit8 v1, v6, 0x1

    invoke-interface {v12, v1, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    move v7, v2

    goto :goto_4

    :cond_6
    move v7, v3

    :goto_4
    invoke-static {v4, v12}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/helper/ColorHelperKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;)J

    move-result-wide v8

    const/4 v13, 0x0

    const/4 v6, 0x0

    iget v10, p0, Lor0;->d:F

    iget v11, p0, Lor0;->e:F

    invoke-static/range {v6 .. v13}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/BottomScrollIndicationKt;->a(Landroidx/compose/ui/Modifier;ZJFFLandroidx/compose/runtime/Composer;I)V

    goto :goto_5

    :cond_7
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
