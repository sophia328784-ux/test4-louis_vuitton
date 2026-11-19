.class public final synthetic Lt60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function1;II)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lt60;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt60;->i:Ljava/lang/Object;

    iput-object p2, p0, Lt60;->j:Ljava/lang/Object;

    iput-object p3, p0, Lt60;->k:Ljava/lang/Object;

    iput-boolean p4, p0, Lt60;->c:Z

    iput-boolean p5, p0, Lt60;->d:Z

    iput-boolean p6, p0, Lt60;->e:Z

    iput-object p7, p0, Lt60;->l:Ljava/lang/Object;

    iput-object p8, p0, Lt60;->f:Lkotlin/jvm/functions/Function1;

    iput p9, p0, Lt60;->g:I

    iput p10, p0, Lt60;->h:I

    return-void
.end method

.method public synthetic constructor <init>(ZZZLandroidx/compose/animation/core/Easing;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 1

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lt60;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lt60;->c:Z

    iput-boolean p2, p0, Lt60;->d:Z

    iput-boolean p3, p0, Lt60;->e:Z

    iput-object p4, p0, Lt60;->i:Ljava/lang/Object;

    iput-object p5, p0, Lt60;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lt60;->j:Ljava/lang/Object;

    iput-object p7, p0, Lt60;->k:Ljava/lang/Object;

    iput-object p8, p0, Lt60;->l:Ljava/lang/Object;

    iput p9, p0, Lt60;->g:I

    iput p10, p0, Lt60;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lt60;->b:I

    iget v2, v0, Lt60;->g:I

    iget-object v3, v0, Lt60;->l:Ljava/lang/Object;

    iget-object v4, v0, Lt60;->k:Ljava/lang/Object;

    iget-object v5, v0, Lt60;->j:Ljava/lang/Object;

    iget-object v6, v0, Lt60;->i:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/Modifier;

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v16

    iget-boolean v10, v0, Lt60;->c:Z

    iget-boolean v11, v0, Lt60;->d:Z

    iget-boolean v12, v0, Lt60;->e:Z

    iget-object v14, v0, Lt60;->f:Lkotlin/jvm/functions/Function1;

    iget v0, v0, Lt60;->h:I

    move/from16 v17, v0

    invoke-static/range {v7 .. v17}, Lcom/vuitton/android/presentation/compose/components/PreferenceSwitchKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v6, Landroidx/compose/animation/core/Easing;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v7, v4

    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v8, v3

    check-cast v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-boolean v1, v0, Lt60;->c:Z

    iget-boolean v2, v0, Lt60;->d:Z

    iget-boolean v3, v0, Lt60;->e:Z

    move-object v4, v6

    move-object v6, v5

    iget-object v5, v0, Lt60;->f:Lkotlin/jvm/functions/Function1;

    iget v11, v0, Lt60;->h:I

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/compose/components/LVNotificationKt;->a(ZZZLandroidx/compose/animation/core/Easing;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
