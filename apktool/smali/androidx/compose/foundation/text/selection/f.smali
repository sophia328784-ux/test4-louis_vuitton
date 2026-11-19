.class public final synthetic Landroidx/compose/foundation/text/selection/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/f;->b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-object p2, p0, Landroidx/compose/foundation/text/selection/f;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Landroidx/compose/foundation/text/selection/f;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    check-cast p1, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    iget-object v0, p1, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->a:Landroidx/collection/MutableObjectList;

    iget-object p1, p1, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->a:Landroidx/collection/MutableObjectList;

    sget-object v1, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;->b:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    invoke-virtual {v0, v1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    sget-object v0, Landroidx/compose/foundation/text/TextContextMenuItems;->Cut:Landroidx/compose/foundation/text/TextContextMenuItems;

    iget-object v2, p0, Landroidx/compose/foundation/text/selection/f;->b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v3

    iget-wide v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->f:Landroidx/compose/ui/text/input/VisualTransformation;

    instance-of v3, v3, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    if-nez v3, :cond_0

    iget-object v3, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h:Landroidx/compose/ui/platform/Clipboard;

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    new-instance v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$1;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;)V

    new-instance v8, Landroidx/compose/foundation/text/selection/d;

    iget-object v9, p0, Landroidx/compose/foundation/text/selection/f;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v8, v9, v6}, Landroidx/compose/foundation/text/selection/d;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/f;->d:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v10, Leg;

    const/4 v11, 0x3

    invoke-direct {v10, v8, v7, v11}, Leg;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextContextMenuItems;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextContextMenuItems;->c()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextContextMenuItems;->a()I

    move-result v0

    new-instance v8, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    invoke-direct {v8, v3, v6, v0, v10}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v8}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Landroidx/compose/foundation/text/TextContextMenuItems;->Copy:Landroidx/compose/foundation/text/TextContextMenuItems;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v3

    iget-wide v12, v3, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->f:Landroidx/compose/ui/text/input/VisualTransformation;

    instance-of v3, v3, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    if-nez v3, :cond_2

    iget-object v3, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h:Landroidx/compose/ui/platform/Clipboard;

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    new-instance v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$2;

    invoke-direct {v6, v2, v7}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$2;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;)V

    new-instance v8, Landroidx/compose/foundation/text/selection/d;

    invoke-direct {v8, v9, v6}, Landroidx/compose/foundation/text/selection/d;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v10, Leg;

    invoke-direct {v10, v8, v7, v11}, Leg;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextContextMenuItems;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextContextMenuItems;->c()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextContextMenuItems;->a()I

    move-result v0

    new-instance v8, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    invoke-direct {v8, v3, v6, v0, v10}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v8}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Landroidx/compose/foundation/text/TextContextMenuItems;->Paste:Landroidx/compose/foundation/text/TextContextMenuItems;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->k()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->y:Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h:Landroidx/compose/ui/platform/Clipboard;

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    new-instance v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$3;

    invoke-direct {v6, v2, v7}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;)V

    new-instance v8, Landroidx/compose/foundation/text/selection/d;

    invoke-direct {v8, v9, v6}, Landroidx/compose/foundation/text/selection/d;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v9, Leg;

    invoke-direct {v9, v8, v7, v11}, Leg;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextContextMenuItems;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextContextMenuItems;->c()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextContextMenuItems;->a()I

    move-result v0

    new-instance v8, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    invoke-direct {v8, v3, v6, v0, v9}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v8}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    :cond_5
    sget-object v0, Landroidx/compose/foundation/text/TextContextMenuItems;->SelectAll:Landroidx/compose/foundation/text/TextContextMenuItems;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v3

    iget-wide v8, v3, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->d(J)I

    move-result v3

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v6

    iget-object v6, v6, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v6, v6, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v3, v6, :cond_6

    move v3, v5

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    new-instance v6, Ld31;

    invoke-direct {v6, v2, v4}, Ld31;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    new-instance v8, Ld31;

    invoke-direct {v8, v2, v5}, Ld31;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Leg;

    invoke-direct {v10, v8, v6, v11}, Leg;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextContextMenuItems;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextContextMenuItems;->c()I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextContextMenuItems;->a()I

    move-result v0

    new-instance v8, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    invoke-direct {v8, v3, v6, v0, v10}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v8}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    :cond_7
    sget-object v0, Landroidx/compose/foundation/text/TextContextMenuItems;->Autofill:Landroidx/compose/foundation/text/TextContextMenuItems;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->k()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v3

    iget-wide v8, v3, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v3

    if-eqz v3, :cond_8

    move v4, v5

    :cond_8
    new-instance v3, Ld31;

    const/4 v5, 0x2

    invoke-direct {v3, v2, v5}, Ld31;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v2, Leg;

    invoke-direct {v2, v3, v7, v11}, Leg;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextContextMenuItems;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextContextMenuItems;->c()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextContextMenuItems;->a()I

    move-result v0

    new-instance v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    invoke-direct {v4, v3, p0, v0, v2}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v4}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {p1, v1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
