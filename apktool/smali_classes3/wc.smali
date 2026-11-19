.class public final synthetic Lwc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lwc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lwc;->i:Ljava/lang/Object;

    iput-boolean p3, p0, Lwc;->d:Z

    iput-object p4, p0, Lwc;->e:Ljava/lang/String;

    iput-object p5, p0, Lwc;->j:Ljava/lang/Object;

    iput-object p6, p0, Lwc;->k:Ljava/lang/Object;

    iput-object p7, p0, Lwc;->l:Ljava/lang/Object;

    iput-object p8, p0, Lwc;->m:Ljava/lang/Object;

    iput-object p9, p0, Lwc;->n:Ljava/lang/Object;

    iput-object p10, p0, Lwc;->o:Ljava/lang/Object;

    iput-object p11, p0, Lwc;->p:Ljava/lang/Object;

    iput p12, p0, Lwc;->f:I

    iput p13, p0, Lwc;->g:I

    iput p14, p0, Lwc;->h:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;IILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;I)V
    .locals 1

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lwc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc;->e:Ljava/lang/String;

    iput-object p2, p0, Lwc;->i:Ljava/lang/Object;

    iput-object p3, p0, Lwc;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lwc;->d:Z

    iput-object p5, p0, Lwc;->k:Ljava/lang/Object;

    iput-object p6, p0, Lwc;->l:Ljava/lang/Object;

    iput-object p7, p0, Lwc;->m:Ljava/lang/Object;

    iput p8, p0, Lwc;->f:I

    iput p9, p0, Lwc;->g:I

    iput-object p10, p0, Lwc;->n:Ljava/lang/Object;

    iput-object p11, p0, Lwc;->j:Ljava/lang/Object;

    iput-object p12, p0, Lwc;->o:Ljava/lang/Object;

    iput-object p13, p0, Lwc;->p:Ljava/lang/Object;

    iput p14, p0, Lwc;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lwc;->b:I

    iget-object v2, v0, Lwc;->p:Ljava/lang/Object;

    iget-object v3, v0, Lwc;->o:Ljava/lang/Object;

    iget-object v4, v0, Lwc;->n:Ljava/lang/Object;

    iget-object v5, v0, Lwc;->m:Ljava/lang/Object;

    iget-object v6, v0, Lwc;->l:Ljava/lang/Object;

    iget-object v7, v0, Lwc;->k:Ljava/lang/Object;

    iget-object v8, v0, Lwc;->j:Ljava/lang/Object;

    iget-object v9, v0, Lwc;->i:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v11, v9

    check-cast v11, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v14, v8

    check-cast v14, Ljava/lang/String;

    move-object v15, v7

    check-cast v15, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;

    move-object/from16 v16, v6

    check-cast v16, Lkotlin/jvm/functions/Function0;

    move-object/from16 v17, v5

    check-cast v17, Lkotlin/jvm/functions/Function4;

    move-object/from16 v18, v4

    check-cast v18, Landroidx/compose/foundation/layout/WindowInsets;

    move-object/from16 v19, v3

    check-cast v19, Ljava/lang/String;

    move-object/from16 v20, v2

    check-cast v20, Ljava/lang/String;

    move-object/from16 v21, p1

    check-cast v21, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lwc;->f:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v22

    iget v1, v0, Lwc;->g:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v23

    iget-object v10, v0, Lwc;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v12, v0, Lwc;->d:Z

    iget-object v13, v0, Lwc;->e:Ljava/lang/String;

    iget v0, v0, Lwc;->h:I

    move/from16 v24, v0

    invoke-static/range {v10 .. v24}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v9, Lkotlin/jvm/functions/Function1;

    check-cast v7, Landroidx/compose/ui/text/TextStyle;

    check-cast v6, Landroidx/compose/foundation/text/KeyboardOptions;

    check-cast v5, Landroidx/compose/foundation/text/KeyboardActions;

    move-object v10, v4

    check-cast v10, Landroidx/compose/ui/text/input/VisualTransformation;

    move-object v11, v8

    check-cast v11, Lkotlin/jvm/functions/Function1;

    move-object v12, v3

    check-cast v12, Landroidx/compose/ui/graphics/Brush;

    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function3;

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lwc;->h:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v15

    iget-object v1, v0, Lwc;->e:Ljava/lang/String;

    iget-object v3, v0, Lwc;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v4, v0, Lwc;->d:Z

    iget v8, v0, Lwc;->f:I

    iget v0, v0, Lwc;->g:I

    move-object v2, v7

    move-object v7, v5

    move-object v5, v2

    move-object v2, v9

    move v9, v0

    invoke-static/range {v1 .. v15}, Landroidx/compose/foundation/text/BasicTextFieldKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;IILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
