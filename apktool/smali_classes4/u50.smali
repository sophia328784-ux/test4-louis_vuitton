.class public final synthetic Lu50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZZLjava/lang/String;Lkotlin/jvm/functions/Function1;ZII)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lu50;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu50;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lu50;->j:Ljava/lang/Object;

    iput-object p3, p0, Lu50;->k:Ljava/lang/Object;

    iput-object p4, p0, Lu50;->m:Ljava/lang/Object;

    iput-object p5, p0, Lu50;->n:Ljava/lang/Object;

    iput-boolean p6, p0, Lu50;->d:Z

    iput-boolean p7, p0, Lu50;->e:Z

    iput-object p8, p0, Lu50;->l:Ljava/lang/Object;

    iput-object p9, p0, Lu50;->g:Lkotlin/jvm/functions/Function1;

    iput-boolean p10, p0, Lu50;->f:Z

    iput p11, p0, Lu50;->h:I

    iput p12, p0, Lu50;->i:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;ZZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V
    .locals 1

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lu50;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu50;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lu50;->j:Ljava/lang/Object;

    iput-object p3, p0, Lu50;->k:Ljava/lang/Object;

    iput-boolean p4, p0, Lu50;->d:Z

    iput-boolean p5, p0, Lu50;->e:Z

    iput-boolean p6, p0, Lu50;->f:Z

    iput-object p7, p0, Lu50;->l:Ljava/lang/Object;

    iput-object p8, p0, Lu50;->m:Ljava/lang/Object;

    iput-object p9, p0, Lu50;->g:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lu50;->n:Ljava/lang/Object;

    iput p11, p0, Lu50;->h:I

    iput p12, p0, Lu50;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lu50;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lu50;->j:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v0, p0, Lu50;->k:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    iget-object v0, p0, Lu50;->l:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Lu50;->m:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iget-object v0, p0, Lu50;->n:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lu50;->h:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-object v1, p0, Lu50;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v4, p0, Lu50;->d:Z

    iget-boolean v5, p0, Lu50;->e:Z

    iget-boolean v6, p0, Lu50;->f:Z

    iget-object v9, p0, Lu50;->g:Lkotlin/jvm/functions/Function1;

    iget v13, p0, Lu50;->i:I

    invoke-static/range {v1 .. v13}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;ZZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lu50;->j:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v0, p0, Lu50;->k:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lu50;->m:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    iget-object v0, p0, Lu50;->n:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    iget-object v0, p0, Lu50;->l:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lu50;->h:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-object v1, p0, Lu50;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v6, p0, Lu50;->d:Z

    iget-boolean v7, p0, Lu50;->e:Z

    iget-object v9, p0, Lu50;->g:Lkotlin/jvm/functions/Function1;

    iget-boolean v10, p0, Lu50;->f:Z

    iget v13, p0, Lu50;->i:I

    invoke-static/range {v1 .. v13}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDropdownKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZZLjava/lang/String;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
