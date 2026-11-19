.class public final synthetic Landroidx/compose/foundation/text/selection/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/e;->b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-object p2, p0, Landroidx/compose/foundation/text/selection/e;->c:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    move-object v1, p2

    check-cast v1, Landroid/content/Context;

    iget-object p1, p0, Landroidx/compose/foundation/text/selection/e;->b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->k()Z

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->n()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p2

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, v3

    :goto_0
    iget-object v4, p1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->x:Landroidx/compose/ui/text/TextRange;

    if-eqz v4, :cond_1

    iget-wide v4, v4, Landroidx/compose/ui/text/TextRange;->a:J

    iget-object v6, p1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    const/16 v7, 0x20

    shr-long v7, v4, v7

    long-to-int v7, v7

    invoke-interface {v6, v7}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    move-result v7

    const-wide v8, 0xffffffffL

    and-long/2addr v4, v8

    long-to-int v4, v4

    invoke-interface {v6, v4}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    move-result v4

    invoke-static {v7, v4}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    move-result-wide v4

    new-instance v6, Landroidx/compose/ui/text/TextRange;

    invoke-direct {v6, v4, v5}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    iget-object v4, p1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    new-instance v5, Landroidx/compose/foundation/text/selection/f;

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/e;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v5, p1, p0, v1}, Landroidx/compose/foundation/text/selection/f;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;)V

    sget-object p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    if-eqz p2, :cond_2

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    instance-of p0, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    if-nez p0, :cond_3

    :cond_2
    move-object v3, p2

    goto/16 :goto_7

    :cond_3
    check-cast v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    iget-wide p0, v6, Landroidx/compose/ui/text/TextRange;->a:J

    iget-object v7, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->h:Ljava/lang/Object;

    iget-object v8, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->e:Lkotlinx/coroutines/sync/MutexImpl;

    invoke-virtual {v8}, Lkotlinx/coroutines/sync/MutexImpl;->g()Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    iget-object v4, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->g:Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/text/selection/TextClassificationResult;

    if-eqz v4, :cond_5

    iget-wide v9, v4, Landroidx/compose/foundation/text/selection/TextClassificationResult;->b:J

    invoke-static {p0, p1, v9, v10}, Landroidx/compose/ui/text/TextRange;->b(JJ)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v4, Landroidx/compose/foundation/text/selection/TextClassificationResult;->a:Ljava/lang/CharSequence;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v4, Landroidx/compose/foundation/text/selection/TextClassificationResult;->c:Landroid/view/textclassifier/TextClassification;

    goto :goto_2

    :cond_5
    move-object p0, v3

    :goto_2
    invoke-virtual {v8, v3}, Lkotlinx/coroutines/sync/MutexImpl;->d(Ljava/lang/Object;)V

    move-object v3, p0

    :goto_3
    if-nez v3, :cond_6

    invoke-virtual {v5, v0}, Landroidx/compose/foundation/text/selection/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_7

    new-instance p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    invoke-direct {p0, v7, v3, p1}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassification;I)V

    iget-object v4, v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->a:Landroidx/collection/MutableObjectList;

    invoke-virtual {v4, p0}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_8

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_a

    :cond_8
    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_9

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    if-eqz p0, :cond_a

    :cond_9
    new-instance p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    const/4 v4, -0x1

    invoke-direct {p0, v7, v3, v4}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassification;I)V

    iget-object v4, v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->a:Landroidx/collection/MutableObjectList;

    invoke-virtual {v4, p0}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    :cond_a
    :goto_4
    invoke-virtual {v5, v0}, Landroidx/compose/foundation/text/selection/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_5
    if-ge p1, v4, :cond_c

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/RemoteAction;

    if-lez p1, :cond_b

    new-instance v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    invoke-direct {v5, v7, v3, p1}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassification;I)V

    iget-object v8, v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->a:Landroidx/collection/MutableObjectList;

    invoke-virtual {v8, v5}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    iget-wide v4, v6, Landroidx/compose/ui/text/TextRange;->a:J

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/contextmenu/ProcessText_androidKt;->a(Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;Landroid/content/Context;ZLjava/lang/String;J)V

    goto :goto_8

    :goto_7
    invoke-virtual {v5, v0}, Landroidx/compose/foundation/text/selection/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_d

    if-eqz v6, :cond_d

    iget-wide v4, v6, Landroidx/compose/ui/text/TextRange;->a:J

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/contextmenu/ProcessText_androidKt;->a(Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;Landroid/content/Context;ZLjava/lang/String;J)V

    :cond_d
    :goto_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
