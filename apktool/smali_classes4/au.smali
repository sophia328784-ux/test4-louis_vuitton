.class public final synthetic Lau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Z

.field public final synthetic j:Lkotlin/jvm/functions/Function3;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lau;->b:Z

    iput-object p2, p0, Lau;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iput-object p3, p0, Lau;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iput-object p4, p0, Lau;->e:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lau;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lau;->g:Ljava/lang/String;

    iput-object p7, p0, Lau;->h:Ljava/lang/String;

    iput-boolean p8, p0, Lau;->i:Z

    iput-object p9, p0, Lau;->j:Lkotlin/jvm/functions/Function3;

    iput-object p10, p0, Lau;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lau;->l:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v14, p2

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean v1, v0, Lau;->b:Z

    iget-object v2, v0, Lau;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v5, v0, Lau;->f:Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const v1, 0x44a7a973

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->g:Ljava/lang/String;

    :cond_0
    move-object v2, v3

    const/4 v7, 0x0

    iget-object v3, v0, Lau;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v4, v0, Lau;->e:Lkotlin/jvm/functions/Function2;

    move-object v6, v14

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/formsections/DistantRepairContactComponentKt;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_1
    const v1, 0x44aca3f6

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->g:Ljava/lang/String;

    :cond_2
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->e:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->c:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->d:Ljava/lang/String;

    const/4 v15, 0x0

    move-object v11, v5

    iget-object v5, v0, Lau;->g:Ljava/lang/String;

    iget-object v8, v0, Lau;->h:Ljava/lang/String;

    iget-boolean v9, v0, Lau;->i:Z

    iget-object v10, v0, Lau;->j:Lkotlin/jvm/functions/Function3;

    iget-object v12, v0, Lau;->k:Lkotlin/jvm/functions/Function0;

    iget-object v13, v0, Lau;->l:Lkotlin/jvm/functions/Function1;

    move-object v2, v3

    move-object v3, v1

    invoke-static/range {v2 .. v15}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/formsections/DistantRepairContactComponentKt;->b(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
