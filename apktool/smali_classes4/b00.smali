.class public final synthetic Lb00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Z

.field public final synthetic j:Z

.field public final synthetic k:Lkotlin/jvm/functions/Function2;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Z

.field public final synthetic n:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb00;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iput-object p2, p0, Lb00;->c:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iput-object p3, p0, Lb00;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iput-boolean p4, p0, Lb00;->e:Z

    iput-boolean p5, p0, Lb00;->f:Z

    iput-object p6, p0, Lb00;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lb00;->h:Lkotlin/jvm/functions/Function0;

    iput-boolean p8, p0, Lb00;->i:Z

    iput-boolean p9, p0, Lb00;->j:Z

    iput-object p10, p0, Lb00;->k:Lkotlin/jvm/functions/Function2;

    iput-object p11, p0, Lb00;->l:Lkotlin/jvm/functions/Function0;

    iput-boolean p12, p0, Lb00;->m:Z

    iput-object p13, p0, Lb00;->n:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-object p14, p0, Lb00;->o:Lkotlin/jvm/functions/Function1;

    iput p15, p0, Lb00;->p:I

    move/from16 p1, p16

    iput p1, p0, Lb00;->q:I

    move/from16 p1, p17

    iput p1, p0, Lb00;->r:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lb00;->p:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v15

    iget v1, v0, Lb00;->q:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v16

    iget-object v1, v0, Lb00;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-object v2, v1

    iget-object v1, v0, Lb00;->c:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-object v3, v2

    iget-object v2, v0, Lb00;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-object v4, v3

    iget-boolean v3, v0, Lb00;->e:Z

    move-object v5, v4

    iget-boolean v4, v0, Lb00;->f:Z

    move-object v6, v5

    iget-object v5, v0, Lb00;->g:Lkotlin/jvm/functions/Function0;

    move-object v7, v6

    iget-object v6, v0, Lb00;->h:Lkotlin/jvm/functions/Function0;

    move-object v8, v7

    iget-boolean v7, v0, Lb00;->i:Z

    move-object v9, v8

    iget-boolean v8, v0, Lb00;->j:Z

    move-object v10, v9

    iget-object v9, v0, Lb00;->k:Lkotlin/jvm/functions/Function2;

    move-object v11, v10

    iget-object v10, v0, Lb00;->l:Lkotlin/jvm/functions/Function0;

    move-object v12, v11

    iget-boolean v11, v0, Lb00;->m:Z

    move-object v13, v12

    iget-object v12, v0, Lb00;->n:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v17, v13

    iget-object v13, v0, Lb00;->o:Lkotlin/jvm/functions/Function1;

    iget v0, v0, Lb00;->r:I

    move-object/from16 v18, v17

    move/from16 v17, v0

    move-object/from16 v0, v18

    invoke-static/range {v0 .. v17}, Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldPhoneKt;->b(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
