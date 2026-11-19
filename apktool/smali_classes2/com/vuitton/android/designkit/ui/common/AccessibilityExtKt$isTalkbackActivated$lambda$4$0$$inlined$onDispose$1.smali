.class public final Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt$isTalkbackActivated$lambda$4$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/designkit/ui/common/AccessibilityExtKt$isTalkbackActivated$lambda$4$0$$inlined$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/accessibility/AccessibilityManager;

.field public final synthetic b:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field public final synthetic c:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt$isTalkbackActivated$lambda$4$0$$inlined$onDispose$1;->a:Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt$isTalkbackActivated$lambda$4$0$$inlined$onDispose$1;->b:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt$isTalkbackActivated$lambda$4$0$$inlined$onDispose$1;->c:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt$isTalkbackActivated$lambda$4$0$$inlined$onDispose$1;->b:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt$isTalkbackActivated$lambda$4$0$$inlined$onDispose$1;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt$isTalkbackActivated$lambda$4$0$$inlined$onDispose$1;->c:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method
