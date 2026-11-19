.class public final Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt$SetLightNavigationBarsIfNeeded$lambda$0$0$0$$inlined$onDispose$1;
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
        "com/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt$SetLightNavigationBarsIfNeeded$lambda$0$0$0$$inlined$onDispose$1",
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
.field public final synthetic a:Landroidx/core/view/WindowInsetsControllerCompat;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Landroidx/core/view/WindowInsetsControllerCompat;Z)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt$SetLightNavigationBarsIfNeeded$lambda$0$0$0$$inlined$onDispose$1;->a:Landroidx/core/view/WindowInsetsControllerCompat;

    iput-boolean p2, p0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt$SetLightNavigationBarsIfNeeded$lambda$0$0$0$$inlined$onDispose$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt$SetLightNavigationBarsIfNeeded$lambda$0$0$0$$inlined$onDispose$1;->a:Landroidx/core/view/WindowInsetsControllerCompat;

    iget-boolean p0, p0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt$SetLightNavigationBarsIfNeeded$lambda$0$0$0$$inlined$onDispose$1;->b:Z

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat;->d(Z)V

    return-void
.end method
