.class public final synthetic Lgs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgs0;->b:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

    iput-object p2, p0, Lgs0;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    iput-object p3, p0, Lgs0;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    iput-object p4, p0, Lgs0;->e:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    iput-object p5, p0, Lgs0;->f:Ljava/lang/String;

    iput-object p6, p0, Lgs0;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lgs0;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lgs0;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lgs0;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lgs0;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lgs0;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lgs0;->m:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Lgs0;->n:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v14

    iget-object v1, v0, Lgs0;->b:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

    move-object v2, v1

    iget-object v1, v0, Lgs0;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-object v3, v2

    iget-object v2, v0, Lgs0;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;

    move-object v4, v3

    iget-object v3, v0, Lgs0;->e:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    move-object v5, v4

    iget-object v4, v0, Lgs0;->f:Ljava/lang/String;

    move-object v6, v5

    iget-object v5, v0, Lgs0;->g:Lkotlin/jvm/functions/Function0;

    move-object v7, v6

    iget-object v6, v0, Lgs0;->h:Lkotlin/jvm/functions/Function0;

    move-object v8, v7

    iget-object v7, v0, Lgs0;->i:Lkotlin/jvm/functions/Function1;

    move-object v9, v8

    iget-object v8, v0, Lgs0;->j:Lkotlin/jvm/functions/Function1;

    move-object v10, v9

    iget-object v9, v0, Lgs0;->k:Lkotlin/jvm/functions/Function1;

    move-object v11, v10

    iget-object v10, v0, Lgs0;->l:Lkotlin/jvm/functions/Function0;

    move-object v12, v11

    iget-object v11, v0, Lgs0;->m:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lgs0;->n:Lkotlin/jvm/functions/Function1;

    move-object v15, v12

    move-object v12, v0

    move-object v0, v15

    invoke-static/range {v0 .. v14}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt;->a(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
