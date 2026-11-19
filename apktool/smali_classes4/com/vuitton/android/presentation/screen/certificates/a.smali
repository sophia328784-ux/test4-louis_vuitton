.class public final synthetic Lcom/vuitton/android/presentation/screen/certificates/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/navigation/NavHostController;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/a;->b:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/a;->c:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->x:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/2addr v1, v5

    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/certificates/a;->c:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;

    iget-object v1, v14, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    invoke-virtual {v14}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "IS_DEEPLINK_TO_ADD"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_1

    if-ne v5, v6, :cond_2

    :cond_1
    new-instance v12, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$onCreate$1$1$1$1$1;

    const-string v17, "finish()V"

    const/16 v18, 0x0

    const/4 v13, 0x0

    const-class v15, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;

    const-string v16, "finish"

    invoke-direct/range {v12 .. v18}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v12

    :cond_2
    check-cast v5, Lkotlin/reflect/KFunction;

    move-object v3, v5

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_3

    if-ne v7, v6, :cond_4

    :cond_3
    new-instance v12, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$onCreate$1$1$1$2$1;

    const-string v17, "setSystemBarsIcons--UQiWvU(Landroid/app/Activity;ZZ)V"

    const/16 v18, 0x1

    const/4 v13, 0x2

    const-class v15, Lcom/vuitton/android/presentation/compose/components/EdgeToEdgeKt;

    const-string v16, "setSystemBarsIcons"

    invoke-direct/range {v12 .. v18}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v12

    :cond_4
    check-cast v7, Lkotlin/reflect/KFunction;

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_5

    if-ne v8, v6, :cond_6

    :cond_5
    new-instance v12, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$onCreate$1$1$1$3$1;

    const-string v17, "routeToCertificateDiamondDetails(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;)V"

    const/16 v18, 0x0

    const/4 v13, 0x1

    const-class v15, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;

    const-string v16, "routeToCertificateDiamondDetails"

    invoke-direct/range {v12 .. v18}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v12

    :cond_6
    check-cast v8, Lkotlin/reflect/KFunction;

    move-object v5, v8

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_7

    if-ne v9, v6, :cond_8

    :cond_7
    new-instance v12, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$onCreate$1$1$1$4$1;

    const-string v17, "openPDF(Ljava/lang/String;)V"

    const/16 v18, 0x0

    const/4 v13, 0x1

    const-class v15, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;

    const-string v16, "openPDF"

    invoke-direct/range {v12 .. v18}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v9, v12

    :cond_8
    check-cast v9, Lkotlin/reflect/KFunction;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_9

    if-ne v10, v6, :cond_a

    :cond_9
    new-instance v12, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$onCreate$1$1$1$5$1;

    const-string v17, "quitCertificates()V"

    const/16 v18, 0x0

    const/4 v13, 0x0

    const-class v15, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;

    const-string v16, "quitCertificates"

    invoke-direct/range {v12 .. v18}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v12

    :cond_a
    check-cast v10, Lkotlin/reflect/KFunction;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v8, :cond_b

    if-ne v12, v6, :cond_c

    :cond_b
    new-instance v12, Ld3;

    const/16 v8, 0xc

    invoke-direct {v12, v14, v8}, Ld3;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v8, v12

    check-cast v8, Lkotlin/jvm/functions/Function3;

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_d

    if-ne v13, v6, :cond_e

    :cond_d
    new-instance v13, Lw1;

    const/16 v12, 0x12

    invoke-direct {v13, v14, v12}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v12, :cond_f

    if-ne v15, v6, :cond_10

    :cond_f
    new-instance v15, Lwk;

    invoke-direct {v15, v14, v4}, Lwk;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;I)V

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/certificates/a;->b:Landroidx/navigation/NavHostController;

    move-object v4, v7

    move-object v6, v9

    move-object v7, v10

    move-object v9, v13

    move-object v10, v15

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/certificates/CertificateNavHostKt;->a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_11
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
