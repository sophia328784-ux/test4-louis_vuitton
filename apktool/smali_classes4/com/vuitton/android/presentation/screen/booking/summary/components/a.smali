.class public final synthetic Lcom/vuitton/android/presentation/screen/booking/summary/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/a;->b:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/a;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/a;->d:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p3, 0x11

    const/16 v0, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    and-int/2addr p3, v1

    invoke-interface {p2, p3, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/a;->d:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet;

    instance-of p3, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExitWarning;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/a;->b:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz p3, :cond_5

    const p1, 0x50feb716

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/a;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p1, p3

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p3

    if-nez p1, :cond_1

    if-ne p3, v0, :cond_2

    :cond_1
    new-instance p3, Lnf;

    invoke-direct {p3, v5, p0, v1}, Lnf;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_3

    if-ne p1, v0, :cond_4

    :cond_3
    new-instance p1, Lqg;

    invoke-direct {p1, v5, v1}, Lqg;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;I)V

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p3, p1, p2, v2}, Lcom/vuitton/android/presentation/screen/booking/summary/components/bottomsheets/ExitWarningBottomSheetContentKt;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_5
    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExpiredPrebook;

    if-eqz p0, :cond_8

    const p0, 0x51088e71

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_6

    if-ne p1, v0, :cond_7

    :cond_6
    new-instance v3, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryComposableKt$BookingSummaryComposable$10$3$1;

    const-string v8, "handlePrebookExpiration()V"

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-class v6, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    const-string v7, "handlePrebookExpiration"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p1, v3

    :cond_7
    check-cast p1, Lkotlin/reflect/KFunction;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2, v2}, Lcom/vuitton/android/presentation/screen/booking/summary/components/bottomsheets/ExpirationBottomSheetContentKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_8
    const p0, 0x510b5752

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
