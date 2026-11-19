.class public final synthetic Lcom/vuitton/android/presentation/screen/personalselections/list/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic d:Lkotlin/jvm/functions/Function3;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(IILcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/a;->b:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/a;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/a;->d:Lkotlin/jvm/functions/Function3;

    iput p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/a;->e:I

    iput p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/a;->f:I

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/a;->g:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v1

    invoke-interface {v5, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const p1, 0x7f1411bf

    invoke-static {v5, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/a;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p1, :cond_1

    if-ne p2, v1, :cond_2

    :cond_1
    new-instance v6, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListComposableKt$PersonalSelectionsListComposable$2$1$1;

    const-string v11, "show()V"

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-class v9, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    const-string v10, "show"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p2, v6

    :cond_2
    check-cast p2, Lkotlin/reflect/KFunction;

    move-object v2, p2

    check-cast v2, Lkotlin/jvm/functions/Function0;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/a;->d:Lkotlin/jvm/functions/Function3;

    invoke-interface {v5, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p2

    iget v3, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/a;->e:I

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v4

    or-int/2addr p2, v4

    iget v4, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/a;->f:I

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v6

    or-int/2addr p2, v6

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez p2, :cond_3

    if-ne v6, v1, :cond_4

    :cond_3
    new-instance v6, Ltj;

    const/16 p2, 0xc

    invoke-direct {v6, p1, v3, v4, p2}, Ltj;-><init>(Lkotlin/jvm/functions/Function3;III)V

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v3, v6

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/a;->b:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/a;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListComposableKt;->b(Ljava/lang/String;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_5
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
