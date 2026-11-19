.class public final synthetic Lcom/vuitton/android/presentation/screen/certificates/components/list/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic c:Lkotlin/jvm/functions/Function3;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroidx/compose/runtime/State;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function3;IILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/components/list/a;->b:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/components/list/a;->c:Lkotlin/jvm/functions/Function3;

    iput p3, p0, Lcom/vuitton/android/presentation/screen/certificates/components/list/a;->d:I

    iput p4, p0, Lcom/vuitton/android/presentation/screen/certificates/components/list/a;->e:I

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/certificates/components/list/a;->f:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/certificates/components/list/a;->g:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v0

    invoke-interface {v1, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/components/list/a;->f:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/certificates/components/list/a;->b:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p2, :cond_1

    if-ne v0, v10, :cond_2

    :cond_1
    new-instance v3, Lcom/vuitton/android/presentation/screen/certificates/components/list/CertificateComposableKt$CertificateComposable$topBar$1$1$1;

    const-string v8, "show()V"

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-class v6, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    const-string v7, "show"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v0, v3

    :cond_2
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/components/list/a;->c:Lkotlin/jvm/functions/Function3;

    invoke-interface {v1, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    iget v4, p0, Lcom/vuitton/android/presentation/screen/certificates/components/list/a;->d:I

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v5

    or-int/2addr v0, v5

    iget v5, p0, Lcom/vuitton/android/presentation/screen/certificates/components/list/a;->e:I

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v6

    or-int/2addr v0, v6

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v0, :cond_3

    if-ne v6, v10, :cond_4

    :cond_3
    new-instance v6, Ltj;

    invoke-direct {v6, p2, v4, v5, v2}, Ltj;-><init>(Lkotlin/jvm/functions/Function3;III)V

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v5, v6

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/components/list/a;->g:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/certificates/components/list/CertificateComposableKt;->c(ILandroidx/compose/runtime/Composer;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
