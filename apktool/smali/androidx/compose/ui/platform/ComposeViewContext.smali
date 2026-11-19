.class public final Landroidx/compose/ui/platform/ComposeViewContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B;\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/ui/platform/ComposeViewContext;",
        "",
        "Landroid/view/View;",
        "view",
        "Landroidx/compose/runtime/CompositionContext;",
        "compositionContext",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lifecycleOwner",
        "Landroidx/savedstate/SavedStateRegistryOwner;",
        "savedStateRegistryOwner",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "viewModelStoreOwner",
        "<init>",
        "(Landroid/view/View;Landroidx/compose/runtime/CompositionContext;Landroidx/lifecycle/LifecycleOwner;Landroidx/savedstate/SavedStateRegistryOwner;Landroidx/lifecycle/ViewModelStoreOwner;)V",
        "ui"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroidx/compose/runtime/CompositionContext;

.field public final c:Landroidx/lifecycle/LifecycleOwner;

.field public final d:Landroidx/savedstate/SavedStateRegistryOwner;

.field public final e:Landroidx/lifecycle/ViewModelStoreOwner;

.field public final f:Landroidx/compose/ui/res/ImageVectorCache;

.field public final g:Landroidx/compose/ui/res/ResourceIdCache;

.field public final h:Landroid/content/res/Configuration;

.field public final i:Landroidx/compose/runtime/MutableState;

.field public final j:Landroidx/compose/ui/platform/AndroidAccessibilityManager;

.field public final k:Landroidx/compose/ui/platform/AndroidUriHandler;

.field public final l:Landroidx/compose/ui/platform/AndroidClipboardManager;

.field public final m:Landroidx/compose/ui/platform/AndroidClipboard;

.field public final n:Landroidx/compose/ui/text/font/Font$ResourceLoader;

.field public final o:Landroidx/compose/runtime/MutableState;

.field public final p:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final q:Landroidx/compose/ui/platform/AndroidViewConfiguration;

.field public final r:Landroidx/compose/ui/node/LayoutNodeDrawScope;

.field public final s:Landroidx/compose/ui/platform/LazyWindowInfo;

.field public final t:Landroidx/compose/ui/graphics/CanvasHolder;

.field public u:I

.field public final v:Lkotlin/jvm/functions/Function0;

.field public final w:Landroidx/compose/ui/platform/ComposeViewContext$callback$1;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/compose/runtime/CompositionContext;Landroidx/lifecycle/LifecycleOwner;Landroidx/savedstate/SavedStateRegistryOwner;Landroidx/lifecycle/ViewModelStoreOwner;)V
    .locals 8

    .line 336
    invoke-static {p1}, Landroidx/compose/ui/platform/ComposeView_androidKt;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/platform/ComposeView_androidKt;->c(Landroid/view/View;)Landroidx/compose/ui/platform/ComposeViewContext;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 337
    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/platform/ComposeViewContext;-><init>(Landroidx/compose/ui/platform/ComposeViewContext;Landroid/view/View;Landroidx/compose/runtime/CompositionContext;Landroidx/lifecycle/LifecycleOwner;Landroidx/savedstate/SavedStateRegistryOwner;Landroidx/lifecycle/ViewModelStoreOwner;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroidx/compose/runtime/CompositionContext;Landroidx/lifecycle/LifecycleOwner;Landroidx/savedstate/SavedStateRegistryOwner;Landroidx/lifecycle/ViewModelStoreOwner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_2

    .line 322
    invoke-static {p1}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->a(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 323
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p7

    :goto_0
    if-nez p2, :cond_1

    .line 324
    instance-of v0, p7, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 325
    check-cast p7, Landroid/view/View;

    invoke-static {p7}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->a(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p2

    .line 326
    invoke-static {p7}, Landroidx/core/viewtree/ViewTree;->a(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p7

    goto :goto_0

    :cond_1
    :goto_1
    if-nez p2, :cond_2

    .line 327
    invoke-static {p1}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->b(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;

    move-result-object p2

    :cond_2
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    const/4 p7, 0x0

    if-eqz p2, :cond_3

    .line 328
    invoke-static {p1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p3

    if-eqz p3, :cond_4

    :cond_3
    move-object v3, p3

    goto :goto_2

    .line 329
    :cond_4
    const-string p0, "Composed into a View which doesn\'t propagate ViewTreeLifecycleOwner!"

    .line 330
    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    throw p7

    :goto_2
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_5

    .line 331
    invoke-static {p1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->a(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object p4

    if-eqz p4, :cond_6

    :cond_5
    move-object v4, p4

    goto :goto_3

    .line 332
    :cond_6
    const-string p0, "Composed into a View which doesn\'t propagate ViewTreeSavedStateRegistryOwner!"

    .line 333
    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    throw p7

    :goto_3
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_7

    .line 334
    invoke-static {p1}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->a(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p5

    :cond_7
    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    .line 335
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/ComposeViewContext;-><init>(Landroid/view/View;Landroidx/compose/runtime/CompositionContext;Landroidx/lifecycle/LifecycleOwner;Landroidx/savedstate/SavedStateRegistryOwner;Landroidx/lifecycle/ViewModelStoreOwner;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/ComposeViewContext;Landroid/view/View;Landroidx/compose/runtime/CompositionContext;Landroidx/lifecycle/LifecycleOwner;Landroidx/savedstate/SavedStateRegistryOwner;Landroidx/lifecycle/ViewModelStoreOwner;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->b:Landroidx/compose/runtime/CompositionContext;

    iput-object p4, p0, Landroidx/compose/ui/platform/ComposeViewContext;->c:Landroidx/lifecycle/LifecycleOwner;

    iput-object p5, p0, Landroidx/compose/ui/platform/ComposeViewContext;->d:Landroidx/savedstate/SavedStateRegistryOwner;

    iput-object p6, p0, Landroidx/compose/ui/platform/ComposeViewContext;->e:Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->f:Landroidx/compose/ui/res/ImageVectorCache;

    goto :goto_1

    :cond_1
    new-instance p3, Landroidx/compose/ui/res/ImageVectorCache;

    invoke-direct {p3}, Landroidx/compose/ui/res/ImageVectorCache;-><init>()V

    :goto_1
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->f:Landroidx/compose/ui/res/ImageVectorCache;

    if-eqz p1, :cond_2

    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->g:Landroidx/compose/ui/res/ResourceIdCache;

    if-nez p3, :cond_3

    :cond_2
    new-instance p3, Landroidx/compose/ui/res/ResourceIdCache;

    invoke-direct {p3}, Landroidx/compose/ui/res/ResourceIdCache;-><init>()V

    :cond_3
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->g:Landroidx/compose/ui/res/ResourceIdCache;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->h:Landroid/content/res/Configuration;

    goto :goto_2

    :cond_4
    new-instance p3, Landroid/content/res/Configuration;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    :goto_2
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->h:Landroid/content/res/Configuration;

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->i:Landroidx/compose/runtime/MutableState;

    goto :goto_3

    :cond_5
    new-instance p4, Landroid/content/res/Configuration;

    invoke-direct {p4, p3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-static {p4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p3

    :goto_3
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->i:Landroidx/compose/runtime/MutableState;

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->j:Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    goto :goto_4

    :cond_6
    new-instance p3, Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/compose/ui/platform/AndroidAccessibilityManager;-><init>(Landroid/content/Context;)V

    :goto_4
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->j:Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->k:Landroidx/compose/ui/platform/AndroidUriHandler;

    goto :goto_5

    :cond_7
    new-instance p3, Landroidx/compose/ui/platform/AndroidUriHandler;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/compose/ui/platform/AndroidUriHandler;-><init>(Landroid/content/Context;)V

    :goto_5
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->k:Landroidx/compose/ui/platform/AndroidUriHandler;

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->l:Landroidx/compose/ui/platform/AndroidClipboardManager;

    goto :goto_6

    :cond_8
    new-instance p3, Landroidx/compose/ui/platform/AndroidClipboardManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/compose/ui/platform/AndroidClipboardManager;-><init>(Landroid/content/Context;)V

    :goto_6
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->l:Landroidx/compose/ui/platform/AndroidClipboardManager;

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->m:Landroidx/compose/ui/platform/AndroidClipboard;

    goto :goto_7

    :cond_9
    new-instance p4, Landroidx/compose/ui/platform/AndroidClipboard;

    invoke-direct {p4, p3}, Landroidx/compose/ui/platform/AndroidClipboard;-><init>(Landroidx/compose/ui/platform/AndroidClipboardManager;)V

    move-object p3, p4

    :goto_7
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->m:Landroidx/compose/ui/platform/AndroidClipboard;

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->n:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    goto :goto_8

    :cond_a
    new-instance p3, Landroidx/compose/ui/platform/AndroidFontResourceLoader;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/compose/ui/platform/AndroidFontResourceLoader;-><init>(Landroid/content/Context;)V

    :goto_8
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->n:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->o:Landroidx/compose/runtime/MutableState;

    goto :goto_9

    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroidx/compose/ui/text/font/FontFamilyResolver_androidKt;->a(Landroid/content/Context;)Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    move-result-object p3

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->k()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p4

    invoke-static {p3, p4}, Landroidx/compose/runtime/SnapshotStateKt;->f(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object p3

    :goto_9
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->o:Landroidx/compose/runtime/MutableState;

    if-eqz p1, :cond_c

    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    goto :goto_a

    :cond_c
    move-object p3, v0

    :goto_a
    if-ne p2, p3, :cond_d

    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->p:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    goto :goto_b

    :cond_d
    new-instance p3, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    invoke-direct {p3, p2}, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;-><init>(Landroid/view/View;)V

    :goto_b
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->p:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p1, Landroidx/compose/ui/platform/ComposeViewContext;->q:Landroidx/compose/ui/platform/AndroidViewConfiguration;

    goto :goto_c

    :cond_e
    new-instance p3, Landroidx/compose/ui/platform/AndroidViewConfiguration;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-direct {p3, p2}, Landroidx/compose/ui/platform/AndroidViewConfiguration;-><init>(Landroid/view/ViewConfiguration;)V

    move-object p2, p3

    :goto_c
    iput-object p2, p0, Landroidx/compose/ui/platform/ComposeViewContext;->q:Landroidx/compose/ui/platform/AndroidViewConfiguration;

    if-eqz p1, :cond_f

    iget-object p2, p1, Landroidx/compose/ui/platform/ComposeViewContext;->r:Landroidx/compose/ui/node/LayoutNodeDrawScope;

    if-nez p2, :cond_10

    :cond_f
    new-instance p2, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    const/4 p3, 0x1

    invoke-direct {p2, v0, p3, v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;-><init>(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_10
    iput-object p2, p0, Landroidx/compose/ui/platform/ComposeViewContext;->r:Landroidx/compose/ui/node/LayoutNodeDrawScope;

    new-instance p2, Landroidx/compose/ui/platform/LazyWindowInfo;

    invoke-direct {p2}, Landroidx/compose/ui/platform/LazyWindowInfo;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/ComposeViewContext;->s:Landroidx/compose/ui/platform/LazyWindowInfo;

    if-eqz p1, :cond_11

    iget-object p1, p1, Landroidx/compose/ui/platform/ComposeViewContext;->t:Landroidx/compose/ui/graphics/CanvasHolder;

    if-nez p1, :cond_12

    :cond_11
    new-instance p1, Landroidx/compose/ui/graphics/CanvasHolder;

    invoke-direct {p1}, Landroidx/compose/ui/graphics/CanvasHolder;-><init>()V

    :cond_12
    iput-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->t:Landroidx/compose/ui/graphics/CanvasHolder;

    sget-object p1, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/compose/ui/platform/ComposeViewContext$calculateWindowSizeLambda$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/ComposeViewContext$calculateWindowSizeLambda$1;-><init>(Landroidx/compose/ui/platform/ComposeViewContext;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->v:Lkotlin/jvm/functions/Function0;

    new-instance p1, Landroidx/compose/ui/platform/ComposeViewContext$callback$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/ComposeViewContext$callback$1;-><init>(Landroidx/compose/ui/platform/ComposeViewContext;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->w:Landroidx/compose/ui/platform/ComposeViewContext$callback$1;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const v4, 0x761ec9f

    move-object/from16 v5, p3

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v3

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v5, v6

    and-int/lit16 v6, v5, 0x93

    const/16 v7, 0x92

    const/4 v9, 0x1

    if-eq v6, v7, :cond_3

    move v6, v9

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    and-int/2addr v5, v9

    invoke-virtual {v4, v5, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_15

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v5, 0x7f0a0275

    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/util/Set;

    const/4 v10, 0x0

    if-eqz v7, :cond_5

    instance-of v7, v6, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v7, :cond_4

    instance-of v7, v6, Lkotlin/jvm/internal/markers/KMutableSet;

    if-eqz v7, :cond_5

    :cond_4
    check-cast v6, Ljava/util/Set;

    goto :goto_4

    :cond_5
    move-object v6, v10

    :goto_4
    if-nez v6, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_6

    check-cast v6, Landroid/view/View;

    goto :goto_5

    :cond_6
    move-object v6, v10

    :goto_5
    if-eqz v6, :cond_7

    invoke-virtual {v6, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_6

    :cond_7
    move-object v5, v10

    :goto_6
    instance-of v6, v5, Ljava/util/Set;

    if-eqz v6, :cond_9

    instance-of v6, v5, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v6, :cond_8

    instance-of v6, v5, Lkotlin/jvm/internal/markers/KMutableSet;

    if-eqz v6, :cond_9

    :cond_8
    move-object v6, v5

    check-cast v6, Ljava/util/Set;

    goto :goto_7

    :cond_9
    move-object v6, v10

    :cond_a
    :goto_7
    if-eqz v6, :cond_b

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->f0()Landroidx/compose/runtime/tooling/CompositionData;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-boolean v9, v4, Landroidx/compose/runtime/GapComposer;->q:Z

    iput-boolean v9, v4, Landroidx/compose/runtime/GapComposer;->C:Z

    iget-object v5, v4, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->i()V

    iget-object v5, v4, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->i()V

    iget-object v5, v4, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget-object v7, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->a:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    iget-object v11, v7, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->k:Ljava/util/HashMap;

    iput-object v11, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e:Ljava/util/HashMap;

    iget-object v7, v7, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->l:Landroidx/collection/MutableIntObjectMap;

    iput-object v7, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->f:Landroidx/collection/MutableIntObjectMap;

    :cond_b
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    iget-object v7, v0, Landroidx/compose/ui/platform/ComposeViewContext;->d:Landroidx/savedstate/SavedStateRegistryOwner;

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v11, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroid/view/View;

    const v12, 0x7f0a0127

    invoke-virtual {v5, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_c

    check-cast v12, Ljava/lang/String;

    goto :goto_8

    :cond_c
    move-object v12, v10

    :goto_8
    if-nez v12, :cond_d

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    :cond_d
    const-string v5, "SaveableStateRegistry:"

    invoke-static {v5, v12}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroidx/savedstate/SavedStateRegistry;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    if-eqz v13, :cond_e

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v13}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v10, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_e
    sget-object v8, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$saveableStateRegistry$1;->c:Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$saveableStateRegistry$1;

    invoke-static {v10, v8}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->a(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    move-result-object v8

    invoke-virtual {v12, v5}, Landroidx/savedstate/SavedStateRegistry;->b(Ljava/lang/String;)Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    move-result-object v10

    if-eqz v10, :cond_f

    :catch_0
    const/4 v9, 0x0

    goto :goto_a

    :cond_f
    :try_start_0
    new-instance v10, Ldn;

    invoke-direct {v10, v8, v9}, Ldn;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v5, v10}, Landroidx/savedstate/SavedStateRegistry;->c(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_a
    new-instance v10, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    new-instance v13, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1;

    invoke-direct {v13, v9, v12, v5}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1;-><init>(ZLandroidx/savedstate/SavedStateRegistry;Ljava/lang/String;)V

    invoke-direct {v10, v8, v13}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v10

    :cond_10
    check-cast v5, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_11

    if-ne v10, v11, :cond_12

    :cond_11
    new-instance v10, Landroidx/compose/ui/platform/ComposeViewContext$ProvideCompositionLocals$1$1;

    invoke-direct {v10, v5}, Landroidx/compose/ui/platform/ComposeViewContext$ProvideCompositionLocals$1$1;-><init>(Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;)V

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v10, v4}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->x:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getScrollCaptureInProgress$ui()Z

    move-result v10

    or-int/2addr v9, v10

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v10, :cond_13

    if-ne v12, v11, :cond_14

    :cond_13
    new-instance v12, Landroidx/compose/ui/platform/ViewTreeHostDefaultProvider;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    move-result-object v10

    invoke-direct {v12, v10}, Landroidx/compose/ui/platform/ViewTreeHostDefaultProvider;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v12, Landroidx/compose/ui/platform/ViewTreeHostDefaultProvider;

    sget-object v10, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object v11, v0, Landroidx/compose/ui/platform/ComposeViewContext;->c:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v13

    sget-object v10, Landroidx/savedstate/compose/LocalSavedStateRegistryOwnerKt;->a:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v14

    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->d:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object v10, v0, Landroidx/compose/ui/platform/ComposeViewContext;->f:Landroidx/compose/ui/res/ImageVectorCache;

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v15

    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->e:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object v10, v0, Landroidx/compose/ui/platform/ComposeViewContext;->g:Landroidx/compose/ui/res/ResourceIdCache;

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v16

    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v17

    sget-object v7, Landroidx/compose/runtime/tooling/InspectionTablesKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v18

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v19

    sget-object v6, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v20

    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v21

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v22

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->u:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v23

    sget-object v5, Landroidx/compose/runtime/HostDefaultProviderKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v24

    filled-new-array/range {v13 .. v24}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v5

    new-instance v6, Landroidx/compose/ui/platform/ComposeViewContext$ProvideCompositionLocals$2;

    invoke-direct {v6, v1, v0, v2}, Landroidx/compose/ui/platform/ComposeViewContext$ProvideCompositionLocals$2;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/ComposeViewContext;Lkotlin/jvm/functions/Function2;)V

    const v7, 0x4e86c15f

    invoke-static {v7, v6, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/16 v7, 0x38

    invoke-static {v5, v6, v4, v7}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_b

    :cond_15
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_b
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v4

    if-eqz v4, :cond_16

    new-instance v5, Landroidx/compose/ui/platform/ComposeViewContext$ProvideCompositionLocals$3;

    invoke-direct {v5, v0, v1, v2, v3}, Landroidx/compose/ui/platform/ComposeViewContext$ProvideCompositionLocals$3;-><init>(Landroidx/compose/ui/platform/ComposeViewContext;Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;I)V

    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public final b()V
    .locals 3

    iget v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->u:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->u:I

    :cond_0
    iget v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->u:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/platform/ComposeViewContext;->w:Landroidx/compose/ui/platform/ComposeViewContext$callback$1;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->s:Landroidx/compose/ui/platform/LazyWindowInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/compose/ui/platform/LazyWindowInfo;->a:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 5

    iget v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->u:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->u:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/platform/ComposeViewContext;->w:Landroidx/compose/ui/platform/ComposeViewContext$callback$1;

    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/ComposeViewContext;->d(Landroid/content/res/Configuration;)V

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    iget-object v3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->s:Landroidx/compose/ui/platform/LazyWindowInfo;

    iget-object v4, v3, Landroidx/compose/ui/platform/LazyWindowInfo;->b:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->v:Lkotlin/jvm/functions/Function0;

    iput-object p0, v3, Landroidx/compose/ui/platform/LazyWindowInfo;->a:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method public final d(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->h:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->f:Landroidx/compose/ui/res/ImageVectorCache;

    iget-object v1, v1, Landroidx/compose/ui/res/ImageVectorCache;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    if-eqz v2, :cond_1

    iget v2, v2, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;->b:I

    invoke-static {v0, v2}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->i:Landroidx/compose/runtime/MutableState;

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->g:Landroidx/compose/ui/res/ResourceIdCache;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Landroidx/compose/ui/res/ResourceIdCache;->a:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1}, Landroidx/collection/MutableIntObjectMap;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    const/high16 p1, 0x10000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->o:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/text/font/FontFamilyResolver_androidKt;->a(Landroid/content/Context;)Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_3
    const p1, -0x5000e280

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->s:Landroidx/compose/ui/platform/LazyWindowInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_4
    :goto_1
    return-void
.end method
