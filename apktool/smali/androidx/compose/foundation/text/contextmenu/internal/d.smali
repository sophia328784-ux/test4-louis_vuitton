.class public final synthetic Landroidx/compose/foundation/text/contextmenu/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroid/content/Context;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->b:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    iput-object p2, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->c:Landroid/content/Context;

    iput-object p3, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->d:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    sget-object v0, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    iget-object v0, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->b:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;->a:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_a

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;

    instance-of v5, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_1

    new-instance v5, Lc;

    check-cast v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    const/16 v9, 0x14

    invoke-direct {v5, v4, v9}, Lc;-><init>(Ljava/lang/Object;I)V

    iget v9, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->c:I

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    new-instance v7, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1$1$1$2;

    invoke-direct {v7, v4}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1$1$1$2;-><init>(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;)V

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v10, -0x731428a5

    invoke-direct {v9, v10, v8, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    move-object v7, v9

    :goto_1
    new-instance v8, Ldt;

    iget-object v9, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->d:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    invoke-direct {v8, v4, v9, v2}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p1, v5, v7, v8, v6}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->b(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;I)V

    goto/16 :goto_3

    :cond_1
    instance-of v5, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    if-eqz v5, :cond_8

    check-cast v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    iget-object v5, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->c:Landroid/content/Context;

    if-nez v5, :cond_2

    goto/16 :goto_3

    :cond_2
    iget v9, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;->c:I

    iget-object v4, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;->b:Landroid/view/textclassifier/TextClassification;

    if-gez v9, :cond_4

    new-instance v9, Lll0;

    const/16 v10, 0x18

    invoke-direct {v9, v4, v10}, Lll0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_3

    new-instance v7, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28$textClassificationItem$2$1;

    invoke-direct {v7, v10}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28$textClassificationItem$2$1;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v11, -0x42f30a7b

    invoke-direct {v10, v11, v8, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    move-object v7, v10

    :cond_3
    new-instance v8, Landroidx/compose/foundation/text/contextmenu/internal/e;

    invoke-direct {v8, v5, v4}, Landroidx/compose/foundation/text/contextmenu/internal/e;-><init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassification;)V

    invoke-static {p1, v9, v7, v8, v6}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->b(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/RemoteAction;

    if-nez v9, :cond_5

    move v5, v8

    goto :goto_2

    :cond_5
    move v5, v2

    :goto_2
    new-instance v9, Lll0;

    const/16 v10, 0x19

    invoke-direct {v9, v4, v10}, Lll0;-><init>(Ljava/lang/Object;I)V

    if-nez v5, :cond_6

    invoke-virtual {v4}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    new-instance v5, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28$textClassificationItem$5;

    invoke-direct {v5, v4}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28$textClassificationItem$5;-><init>(Landroid/app/RemoteAction;)V

    new-instance v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v10, -0x4b2bf918

    invoke-direct {v7, v10, v8, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    :cond_7
    new-instance v5, Landroidx/compose/foundation/text/contextmenu/internal/f;

    invoke-direct {v5, v4}, Landroidx/compose/foundation/text/contextmenu/internal/f;-><init>(Landroid/app/RemoteAction;)V

    invoke-static {p1, v9, v7, v5, v6}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->b(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;I)V

    goto :goto_3

    :cond_8
    instance-of v4, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    if-eqz v4, :cond_9

    iget-object v4, p1, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->b:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    sget-object v5, Landroidx/compose/foundation/contextmenu/ComposableSingletons$ContextMenuUiKt;->a:Landroidx/compose/foundation/contextmenu/ComposableSingletons$ContextMenuUiKt;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/foundation/contextmenu/ComposableSingletons$ContextMenuUiKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
