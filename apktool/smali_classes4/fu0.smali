.class public final synthetic Lfu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Activity$ScreenCaptureCallback;


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfu0;->a:Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;

    return-void
.end method


# virtual methods
.method public final onScreenCaptured()V
    .locals 0

    iget-object p0, p0, Lfu0;->a:Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
