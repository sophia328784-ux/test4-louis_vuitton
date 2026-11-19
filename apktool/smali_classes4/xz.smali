.class public final synthetic Lxz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ZZLjava/util/Set;Lkotlin/jvm/functions/Function3;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lxz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxz;->e:Ljava/lang/Object;

    iput-boolean p2, p0, Lxz;->c:Z

    iput-boolean p3, p0, Lxz;->d:Z

    iput-object p4, p0, Lxz;->f:Ljava/lang/Object;

    iput-object p5, p0, Lxz;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)V
    .locals 1

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lxz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lxz;->c:Z

    iput-object p2, p0, Lxz;->e:Ljava/lang/Object;

    iput-object p3, p0, Lxz;->f:Ljava/lang/Object;

    iput-object p4, p0, Lxz;->g:Ljava/lang/Object;

    iput-boolean p5, p0, Lxz;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZLandroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/AnnotatedString;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;)V
    .locals 1

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lxz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lxz;->c:Z

    iput-boolean p2, p0, Lxz;->d:Z

    iput-object p3, p0, Lxz;->e:Ljava/lang/Object;

    iput-object p4, p0, Lxz;->f:Ljava/lang/Object;

    iput-object p5, p0, Lxz;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lxz;->b:I

    const/16 v1, 0xf

    iget-boolean v2, p0, Lxz;->d:Z

    iget-boolean v3, p0, Lxz;->c:Z

    iget-object v4, p0, Lxz;->g:Ljava/lang/Object;

    iget-object v5, p0, Lxz;->f:Ljava/lang/Object;

    iget-object v6, p0, Lxz;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v9, v6

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object v10, v5

    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object v12, v4

    check-cast v12, Lkotlin/jvm/functions/Function1;

    move-object v11, p1

    check-cast v11, Landroidx/compose/material3/SheetValue;

    new-instance v7, Landroidx/compose/material3/SheetState;

    iget-boolean v8, p0, Lxz;->c:Z

    iget-boolean v13, p0, Lxz;->d:Z

    invoke-direct/range {v7 .. v13}, Landroidx/compose/material3/SheetState;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;Z)V

    return-object v7

    :pswitch_0
    check-cast v6, Ljava/util/List;

    check-cast v5, Ljava/util/Set;

    check-cast v4, Lkotlin/jvm/functions/Function3;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/orders/components/list/ComposableSingletons$OrderListScreenKt;->a:Lcom/vuitton/android/presentation/screen/orders/components/list/ComposableSingletons$OrderListScreenKt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/orders/components/list/ComposableSingletons$OrderListScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v0, 0x0

    const/4 v7, 0x3

    invoke-static {p1, v0, p0, v7}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    new-instance p0, Lch0;

    invoke-direct {p0, v1}, Lch0;-><init>(I)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$1;->b:Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$1;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$2;

    invoke-direct {v9, p0, v6}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$3;

    invoke-direct {p0, v1, v6}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$4;

    invoke-direct {v1, v6, v2, v5, v4}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$4;-><init>(Ljava/util/List;ZLjava/util/Set;Lkotlin/jvm/functions/Function3;)V

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, 0x2fd4df92

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {p1, v8, v9, p0, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    if-eqz v3, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/orders/components/list/ComposableSingletons$OrderListScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {p1, v0, p0, v7}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :cond_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/orders/components/list/ComposableSingletons$OrderListScreenKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {p1, v0, p0, v7}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString;

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString;

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/semantics/Role;->c:I

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    if-nez v3, :cond_1

    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    :cond_1
    if-eqz v2, :cond_4

    iget-object p0, v6, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v6, p0}, Landroidx/compose/ui/text/AnnotatedString;->b(I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    if-eqz p0, :cond_2

    iget v0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    iget p0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    invoke-virtual {v6, v0, p0}, Landroidx/compose/ui/text/AnnotatedString;->f(II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    if-nez p0, :cond_3

    :cond_2
    iget-object p0, v5, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    :cond_3
    new-instance v0, Lss;

    invoke-direct {v0, v4, v1}, Lss;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Landroidx/compose/ui/semantics/CustomAccessibilityAction;

    invoke-direct {v1, p0, v0}, Landroidx/compose/ui/semantics/CustomAccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_4
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->x:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v0, p0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->a(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
