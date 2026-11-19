.class public final synthetic Lcom/vuitton/android/presentation/screen/certificates/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

.field public final synthetic c:Landroidx/navigation/NavHostController;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function3;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/d;->b:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/d;->c:Landroidx/navigation/NavHostController;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/d;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/certificates/d;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/certificates/d;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/certificates/d;->g:Lkotlin/jvm/functions/Function3;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/certificates/d;->h:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    and-int/2addr v1, v4

    invoke-interface {v14, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/certificates/d;->b:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_1

    if-ne v2, v13, :cond_2

    :cond_1
    new-instance v6, Lcom/vuitton/android/presentation/screen/certificates/CertificateNavHostKt$CertificateNavHost$6$1$1$1$1$1;

    const-string v11, "getCertificatesList()V"

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-class v9, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    const-string v10, "getCertificatesList"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v6

    :cond_2
    check-cast v2, Lkotlin/reflect/KFunction;

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_3

    if-ne v6, v13, :cond_4

    :cond_3
    new-instance v6, Lcom/vuitton/android/presentation/screen/certificates/CertificateNavHostKt$CertificateNavHost$6$1$1$1$2$1;

    const-string v11, "onViewStoneClicked(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;)V"

    const/4 v12, 0x0

    const/4 v7, 0x2

    const-class v9, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    const-string v10, "onViewStoneClicked"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v6, Lkotlin/reflect/KFunction;

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/certificates/d;->c:Landroidx/navigation/NavHostController;

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v1, :cond_5

    if-ne v9, v13, :cond_6

    :cond_5
    new-instance v9, Lul;

    invoke-direct {v9, v8, v7, v5}, Lul;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/certificates/d;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v1, v10

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v1, :cond_7

    if-ne v10, v13, :cond_8

    :cond_7
    new-instance v10, Ln0;

    const/16 v1, 0x10

    invoke-direct {v10, v8, v7, v5, v1}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_9

    if-ne v5, v13, :cond_a

    :cond_9
    new-instance v5, Lwl;

    invoke-direct {v5, v8, v3}, Lwl;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;I)V

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v1, v11

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v1, :cond_b

    if-ne v11, v13, :cond_c

    :cond_b
    new-instance v11, Lxl;

    invoke-direct {v11, v8, v7, v3}, Lxl;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_d

    if-ne v3, v13, :cond_e

    :cond_d
    new-instance v3, Lwl;

    invoke-direct {v3, v8, v4}, Lwl;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;I)V

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v1, v12

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v1, :cond_f

    if-ne v12, v13, :cond_10

    :cond_f
    new-instance v12, Lxl;

    invoke-direct {v12, v8, v7, v4}, Lxl;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v12, Lkotlin/jvm/functions/Function1;

    move-object v13, v6

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x0

    const/4 v1, 0x0

    move-object v7, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/certificates/d;->d:Lkotlin/jvm/functions/Function1;

    move-object v4, v1

    move-object v1, v8

    move-object v8, v2

    move-object v2, v9

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/certificates/d;->f:Lkotlin/jvm/functions/Function0;

    move-object v6, v11

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/certificates/d;->g:Lkotlin/jvm/functions/Function3;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/certificates/d;->h:Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v12

    move-object v12, v0

    move-object v0, v4

    move-object v4, v10

    move-object/from16 v10, v16

    invoke-static/range {v0 .. v15}, Lcom/vuitton/android/presentation/screen/certificates/components/list/CertificateComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_11
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
