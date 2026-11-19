.class public final synthetic La0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lkotlin/Function;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lkotlin/Function;

.field public final synthetic j:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;ZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, La0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0;->e:Ljava/lang/Object;

    iput-boolean p2, p0, La0;->c:Z

    iput-object p3, p0, La0;->f:Ljava/lang/Object;

    iput-object p4, p0, La0;->g:Lkotlin/Function;

    iput-object p5, p0, La0;->h:Ljava/lang/Object;

    iput-object p6, p0, La0;->i:Lkotlin/Function;

    iput-object p7, p0, La0;->j:Lkotlin/Function;

    iput-object p8, p0, La0;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 23
    const/4 v0, 0x0

    iput v0, p0, La0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0;->e:Ljava/lang/Object;

    iput-boolean p2, p0, La0;->c:Z

    iput-object p3, p0, La0;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, La0;->f:Ljava/lang/Object;

    iput-object p5, p0, La0;->g:Lkotlin/Function;

    iput-object p6, p0, La0;->j:Lkotlin/Function;

    iput-object p7, p0, La0;->h:Ljava/lang/Object;

    iput-object p8, p0, La0;->i:Lkotlin/Function;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, La0;->b:I

    const/4 v2, 0x1

    iget-object v3, v0, La0;->j:Lkotlin/Function;

    iget-object v4, v0, La0;->i:Lkotlin/Function;

    iget-object v5, v0, La0;->h:Ljava/lang/Object;

    iget-object v6, v0, La0;->g:Lkotlin/Function;

    iget-object v7, v0, La0;->f:Ljava/lang/Object;

    iget-object v8, v0, La0;->e:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v10, v8

    check-cast v10, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    move-object v12, v7

    check-cast v12, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-object v14, v6

    check-cast v14, Lkotlin/jvm/functions/Function0;

    check-cast v5, Landroidx/navigation/NavHostController;

    move-object v15, v4

    check-cast v15, Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v3

    check-cast v16, Lkotlin/jvm/functions/Function0;

    move-object/from16 v17, p1

    check-cast v17, Landroidx/navigation/NavGraphBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyn0;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Lyn0;-><init>(I)V

    new-instance v3, Lyn0;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lyn0;-><init>(I)V

    new-instance v4, Lyn0;

    const/16 v6, 0x8

    invoke-direct {v4, v6}, Lyn0;-><init>(I)V

    new-instance v6, Lyn0;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Lyn0;-><init>(I)V

    new-instance v9, Lop0;

    iget-boolean v11, v0, La0;->c:Z

    move-object v13, v14

    move-object v14, v5

    invoke-direct/range {v9 .. v16}, Lop0;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;ZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    move-object v12, v14

    move-object v14, v13

    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v7, 0x4bc61580    # 2.5963264E7f

    invoke-direct {v5, v7, v2, v9}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v19

    sget-object v20, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    sget-object v7, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v8, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Privacy;

    invoke-virtual {v7, v8}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v18

    move-object/from16 v21, v1

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    invoke-static/range {v17 .. v25}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v9, Lj50;

    move-object/from16 v3, v16

    const/16 v16, 0x1

    move-object v13, v15

    move-object v15, v3

    invoke-direct/range {v9 .. v16}, Lj50;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Lkotlin/Function;Ljava/lang/Object;I)V

    move-object v15, v13

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x4c96f1d7

    invoke-direct {v1, v3, v2, v9}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v19

    const-class v3, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPreCompliance;

    invoke-virtual {v7, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v18

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v21

    move-object/from16 v24, v22

    move-object/from16 v25, v1

    invoke-static/range {v17 .. v25}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v1, Lw4;

    iget-object v0, v0, La0;->d:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v10, v12, v15, v0}, Lw4;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x10963538

    invoke-direct {v0, v3, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v19

    const-class v1, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPiplCbdt;

    invoke-virtual {v7, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v18

    move-object/from16 v25, v0

    invoke-static/range {v17 .. v25}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v8, Ljava/util/List;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object v10, v4

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;->a:Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-static {v1, v11, v4, v12}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object v4, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v1, v11, v4, v12}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    new-instance v4, Lt;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lt;-><init>(I)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    new-instance v14, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$lambda$6$0$$inlined$itemsIndexed$default$1;

    invoke-direct {v14, v4, v8}, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$lambda$6$0$$inlined$itemsIndexed$default$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    new-instance v15, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$lambda$6$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v15, v8}, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$lambda$6$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    move-object v4, v8

    move-object v8, v3

    new-instance v3, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$lambda$6$0$$inlined$itemsIndexed$default$3;

    iget-object v5, v0, La0;->d:Lkotlin/jvm/functions/Function1;

    move-object/from16 v26, v7

    move-object v7, v6

    move-object/from16 v6, v26

    invoke-direct/range {v3 .. v10}, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$lambda$6$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, 0x799532c4

    invoke-direct {v4, v5, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v1, v13, v14, v15, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    iget-boolean v0, v0, La0;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v1, v11, v0, v12}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :cond_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
