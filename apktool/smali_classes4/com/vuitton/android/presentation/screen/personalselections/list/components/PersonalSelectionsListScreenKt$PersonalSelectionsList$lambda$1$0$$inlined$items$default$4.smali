.class public final Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$4;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$4;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$4;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$4;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$4;->f:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p4

    goto :goto_1

    :cond_1
    move p1, p4

    :goto_1
    and-int/lit8 p4, p4, 0x30

    if-nez p4, :cond_3

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p4

    if-eqz p4, :cond_2

    const/16 p4, 0x20

    goto :goto_2

    :cond_2
    const/16 p4, 0x10

    :goto_2
    or-int/2addr p1, p4

    :cond_3
    and-int/lit16 p4, p1, 0x93

    const/16 v0, 0x92

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p4, v0, :cond_4

    move p4, v2

    goto :goto_3

    :cond_4
    move p4, v1

    :goto_3
    and-int/2addr p1, v2

    invoke-interface {p3, p1, p4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$4;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;

    const p2, -0x389a7e5b

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$4;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iget-object p4, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$4;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$4;->e:Ljava/lang/String;

    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v3

    or-int/2addr v0, v3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$lambda$1$0$$inlined$items$default$4;->f:Lkotlin/jvm/functions/Function2;

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_5

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v0, :cond_6

    :cond_5
    new-instance v3, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$2$1$2$1$1;

    invoke-direct {v3, p4, v2, p2, p0}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$2$1$2$1$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;ILkotlin/jvm/functions/Function2;)V

    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v3, p3, v1}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt;->a(Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_7
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
