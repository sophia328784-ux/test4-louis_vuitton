.class public final synthetic Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;

    iput-object p4, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->f:Ljava/lang/Object;

    iput-object p4, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;

    iget-object v6, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->f:Ljava/lang/Object;

    iget-object v7, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->e:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v8, v7

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v7, v1, 0x3

    if-eq v7, v2, :cond_0

    move v4, v3

    :cond_0
    and-int/2addr v1, v3

    invoke-interface {v14, v1, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v8, :cond_3

    const v1, -0x2201f31a

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->c:Ljava/lang/String;

    const-string v1, "LVStandardTopBar$lambda$0$1"

    if-eqz v0, :cond_2

    invoke-static {v1, v0}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v9, v0

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/g;

    invoke-direct {v0, v6, v5}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/g;-><init>(Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;)V

    const v1, -0x465e6e52

    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    const/high16 v15, 0x180000

    const/16 v16, 0x3c

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v16}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_3
    const v0, -0x21f3c513

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_4
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v7, Ljava/lang/String;

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v6, v1, 0x3

    if-eq v6, v2, :cond_5

    move v4, v3

    :cond_5
    and-int/2addr v1, v3

    invoke-interface {v9, v1, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-wide v3, v5, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;->b:J

    iget-wide v5, v5, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/StandardTopBarConfig;->c:J

    const/4 v10, 0x0

    const/16 v11, 0x10

    iget-object v1, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/f;->c:Ljava/lang/String;

    move-object v2, v7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVTopBarCommonKt;->a(Ljava/lang/String;Ljava/lang/String;JJFLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    goto :goto_4

    :cond_6
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
