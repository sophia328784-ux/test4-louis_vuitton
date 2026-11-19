.class public final synthetic Lcom/vuitton/android/presentation/screen/video/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/video/VideoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/video/VideoActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/video/a;->b:Lcom/vuitton/android/presentation/screen/video/VideoActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/video/a;->b:Lcom/vuitton/android/presentation/screen/video/VideoActivity;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/video/VideoActivity;->l:Landroidx/lifecycle/ViewModelLazy;

    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/video/VideoActivity;->m:Lcom/vuitton/android/presentation/screen/video/VideoActivity$Companion;

    and-int/lit8 v1, v0, 0x3

    const/4 v3, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    and-int/2addr v0, v4

    invoke-interface {v8, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v7}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/presentation/screen/video/VideoViewModel;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_1

    if-ne v1, v11, :cond_2

    :cond_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/video/VideoActivity$onCreate$1$1$1$1;

    const-string v5, "finish()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/video/VideoActivity;

    const-string v4, "finish"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_2
    check-cast v1, Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/vuitton/android/presentation/screen/video/VideoViewModel;

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_3

    if-ne v2, v11, :cond_4

    :cond_3
    new-instance v12, Lcom/vuitton/android/presentation/screen/video/VideoActivity$onCreate$1$1$2$1;

    const-string v17, "trackVideoMilestones(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V"

    const/16 v18, 0x0

    const/4 v13, 0x2

    const-class v15, Lcom/vuitton/android/presentation/screen/video/VideoViewModel;

    const-string v16, "trackVideoMilestones"

    invoke-direct/range {v12 .. v18}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v12

    :cond_4
    check-cast v2, Lkotlin/reflect/KFunction;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v1, v2, v8, v9}, Lcom/vuitton/android/presentation/screen/video/components/VideoComposableKt;->a(Lcom/vuitton/android/presentation/screen/video/VideoViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_5
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
