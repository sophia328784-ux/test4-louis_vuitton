.class public final synthetic Lyl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

.field public final synthetic d:Landroidx/navigation/NavHostController;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function3;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Landroidx/compose/runtime/State;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyl;->b:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lyl;->c:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    iput-object p3, p0, Lyl;->d:Landroidx/navigation/NavHostController;

    iput-object p4, p0, Lyl;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lyl;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lyl;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lyl;->h:Lkotlin/jvm/functions/Function3;

    iput-object p8, p0, Lyl;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lyl;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lyl;->k:Landroidx/compose/runtime/State;

    iput-object p11, p0, Lyl;->l:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/navigation/NavGraphBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Le3;

    iget-object v4, v0, Lyl;->b:Lkotlin/jvm/functions/Function2;

    iget-object v7, v0, Lyl;->c:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    iget-object v5, v0, Lyl;->d:Landroidx/navigation/NavHostController;

    iget-object v6, v0, Lyl;->e:Lkotlin/jvm/functions/Function1;

    move-object v8, v7

    iget-object v7, v0, Lyl;->f:Lkotlin/jvm/functions/Function1;

    move-object v3, v4

    move-object v4, v8

    iget-object v8, v0, Lyl;->g:Lkotlin/jvm/functions/Function0;

    iget-object v9, v0, Lyl;->h:Lkotlin/jvm/functions/Function3;

    iget-object v10, v0, Lyl;->i:Lkotlin/jvm/functions/Function0;

    invoke-direct/range {v2 .. v10}, Le3;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V

    move-object v11, v4

    move-object v12, v5

    move-object v13, v9

    move-object v14, v10

    move-object v10, v3

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, 0x4981c006

    const/4 v15, 0x1

    invoke-direct {v9, v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v5, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$List;

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

    new-instance v2, Lcom/vuitton/android/presentation/screen/certificates/e;

    const/4 v3, 0x0

    invoke-direct {v2, v10, v12, v3}, Lcom/vuitton/android/presentation/screen/certificates/e;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/navigation/NavHostController;I)V

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x3fc9c3d1

    invoke-direct {v9, v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    const-class v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Add;

    move-object/from16 v5, v17

    invoke-virtual {v5, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object/from16 v16, v5

    const/4 v5, 0x0

    move-object v7, v5

    move-object/from16 v18, v16

    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v2, Ls8;

    const/4 v3, 0x5

    invoke-direct {v2, v10, v11, v12, v3}, Ls8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, 0x5e39914e

    invoke-direct {v9, v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    const-class v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$AddConfirmation;

    move-object/from16 v5, v18

    invoke-virtual {v5, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object/from16 v16, v5

    const/4 v5, 0x0

    move-object v7, v5

    move-object/from16 v19, v16

    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/certificates/e;

    invoke-direct {v2, v10, v12, v15}, Lcom/vuitton/android/presentation/screen/certificates/e;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/navigation/NavHostController;I)V

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x3c31993

    invoke-direct {v9, v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    const-class v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Transfer;

    move-object/from16 v5, v19

    invoke-virtual {v5, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object/from16 v16, v5

    const/4 v5, 0x0

    move-object v7, v5

    move-object/from16 v20, v16

    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v2, Ls8;

    const/4 v3, 0x4

    iget-object v5, v0, Lyl;->j:Lkotlin/jvm/functions/Function0;

    invoke-direct {v2, v3, v10, v12, v5}, Ls8;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x65bfc474

    invoke-direct {v9, v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    const-class v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$TransferConfirmation;

    move-object/from16 v5, v20

    invoke-virtual {v5, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object/from16 v16, v5

    const/4 v5, 0x0

    move-object v7, v5

    move-object/from16 v21, v16

    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/certificates/b;

    iget-object v3, v0, Lyl;->k:Landroidx/compose/runtime/State;

    invoke-direct {v2, v10, v12, v3}, Lcom/vuitton/android/presentation/screen/certificates/b;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;)V

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, 0x384390ab

    invoke-direct {v9, v5, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    move-object v8, v3

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    const-class v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Capucine;

    move-object/from16 v5, v21

    invoke-virtual {v5, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object/from16 v16, v5

    const/4 v5, 0x0

    move-object v7, v5

    move-object/from16 v17, v8

    move-object v8, v6

    move-object/from16 v22, v16

    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v2, v4

    new-instance v3, Lcom/vuitton/android/presentation/screen/certificates/c;

    move-object v4, v10

    move-object v8, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object/from16 v9, v17

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/certificates/c;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/compose/runtime/State;)V

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, -0x29b91a36

    invoke-direct {v9, v4, v15, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    const-class v4, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;

    move-object/from16 v13, v22

    invoke-virtual {v13, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v5

    move-object v8, v6

    move-object/from16 v23, v4

    move-object v4, v2

    move-object/from16 v2, v23

    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v2, v4

    new-instance v3, Lrl;

    const/4 v9, 0x0

    iget-object v5, v0, Lyl;->l:Lkotlin/jvm/functions/Function1;

    move-object v4, v10

    move-object v7, v11

    move-object v6, v12

    move-object/from16 v8, v17

    invoke-direct/range {v3 .. v9}, Lrl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, 0x744a3ae9

    invoke-direct {v8, v0, v15, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    move-object v4, v2

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    const-class v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Visionnaire;

    invoke-virtual {v13, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move-object v7, v5

    move-object/from16 v23, v1

    move-object v1, v0

    move-object/from16 v0, v23

    invoke-static/range {v0 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
