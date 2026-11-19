.class public final synthetic Ljf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

.field public final synthetic g:Landroidx/navigation/NavHostController;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Landroidx/navigation/NavHostController;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ljf0;->b:Z

    iput-object p2, p0, Ljf0;->c:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Ljf0;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    iput-object p4, p0, Ljf0;->e:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;

    iput-object p5, p0, Ljf0;->f:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    iput-object p6, p0, Ljf0;->g:Landroidx/navigation/NavHostController;

    iput-object p7, p0, Ljf0;->h:Landroid/content/Context;

    iput-object p8, p0, Ljf0;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Ljf0;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Ljf0;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Ljf0;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Ljf0;->m:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/navigation/NavGraphBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/d;

    iget-boolean v3, v0, Ljf0;->b:Z

    iget-object v4, v0, Ljf0;->c:Lkotlin/jvm/functions/Function2;

    iget-object v5, v0, Ljf0;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    iget-object v6, v0, Ljf0;->e:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;

    iget-object v7, v0, Ljf0;->f:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    iget-object v8, v0, Ljf0;->g:Landroidx/navigation/NavHostController;

    iget-object v9, v0, Ljf0;->h:Landroid/content/Context;

    iget-object v10, v0, Ljf0;->i:Lkotlin/jvm/functions/Function0;

    iget-object v11, v0, Ljf0;->j:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Ljf0;->k:Lkotlin/jvm/functions/Function0;

    iget-object v13, v0, Ljf0;->l:Lkotlin/jvm/functions/Function1;

    invoke-direct/range {v2 .. v13}, Lcom/vuitton/android/presentation/screen/cart/d;-><init>(ZLkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Landroidx/navigation/NavHostController;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    move v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object v14, v8

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x217285fa

    const/4 v15, 0x1

    invoke-direct {v9, v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v5, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$Cart;

    invoke-virtual {v2, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    move-object v6, v2

    move-object v2, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    move-object v7, v5

    move-object/from16 v16, v8

    move-object v8, v6

    move-object/from16 v17, v16

    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v3, v4

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/c;

    invoke-direct {v2, v10, v11, v12, v14}, Lcom/vuitton/android/presentation/screen/cart/c;-><init>(ZLkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Landroidx/navigation/NavHostController;)V

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, 0x2a96a2bd

    invoke-direct {v9, v4, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    move-object v4, v3

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    const-class v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$PerfumeSamples;

    move-object/from16 v5, v17

    invoke-virtual {v5, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object/from16 v16, v5

    const/4 v5, 0x0

    move-object v7, v5

    move-object/from16 v18, v16

    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v2, v4

    new-instance v3, Lcom/vuitton/android/presentation/screen/cart/b;

    iget-object v8, v0, Ljf0;->m:Lkotlin/jvm/functions/Function1;

    move v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v14

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/cart/b;-><init>(ZLkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;)V

    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, 0x73a4cfbe

    invoke-direct {v8, v0, v15, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    move-object v3, v2

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    const-class v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;

    move-object/from16 v9, v18

    invoke-virtual {v9, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move-object v7, v5

    move-object/from16 v19, v1

    move-object v1, v0

    move-object/from16 v0, v19

    invoke-static/range {v0 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v1, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/c;

    invoke-direct {v0, v10, v11, v14, v13}, Lcom/vuitton/android/presentation/screen/cart/c;-><init>(ZLkotlin/jvm/functions/Function2;Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;)V

    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x434d0341

    invoke-direct {v8, v2, v15, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    const-class v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$Packaging;

    invoke-virtual {v9, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object/from16 v19, v1

    move-object v1, v0

    move-object/from16 v0, v19

    invoke-static/range {v0 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
