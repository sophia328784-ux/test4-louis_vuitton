.class public LZjTIAZ/DbkYmF;
.super Ljava/util/Observable;

# interfaces
.implements Landroid/view/Window$Callback;


# static fields
.field public static c:I = 0x1f55

.field public static final d:Landroid/os/HandlerThread;

.field public static e:Z


# instance fields
.field public final b:Landroid/view/Window$Callback;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "M|Sg\\GLH\\P[]RSE"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, LZjTIAZ/DbkYmF;->d:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    sput-boolean v0, LZjTIAZ/DbkYmF;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/Window$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    iput-object p1, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    sget-boolean p0, LZjTIAZ/DbkYmF;->e:Z

    if-eqz p0, :cond_0

    sget-object p0, LZjTIAZ/DbkYmF;->d:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;I)V
    .locals 4

    const/4 v0, 0x1

    sput v0, LZjTIAZ/ZxDSl;->c:I

    sput v0, LZjTIAZ/ZxDSl;->d:I

    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    new-instance v1, LZjTIAZ/GLipSu;

    if-ne p2, v0, :cond_2

    sget v2, LZjTIAZ/DbkYmF;->c:I

    const/16 v3, 0x1f54

    if-gt v2, v3, :cond_3

    :goto_0
    sget p0, LZjTIAZ/DbkYmF;->c:I

    add-int/lit8 p1, p0, 0x1a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc4

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit16 p1, p0, 0x13b4

    add-int/2addr p1, p0

    shr-int/lit8 p0, p1, 0x2e

    sput p0, LZjTIAZ/DbkYmF;->c:I

    goto :goto_0

    :cond_1
    :goto_1
    sget p0, LZjTIAZ/DbkYmF;->c:I

    xor-int/lit16 p0, p0, 0xe6f

    rem-int/lit8 p0, p0, 0x22

    sput p0, LZjTIAZ/DbkYmF;->c:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    invoke-direct {v1, p1, v0, p2}, LZjTIAZ/GLipSu;-><init>(Landroid/view/MotionEvent;II)V

    invoke-virtual {p0, v1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Landroid/view/MotionEvent;I)V
    .locals 2

    :try_start_0
    sget-boolean v0, LZjTIAZ/DbkYmF;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, LZjTIAZ/DbkYmF;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, LZjTIAZ/DbkYmF$DbkYmF;

    invoke-direct {v0, p0, p1, p2}, LZjTIAZ/DbkYmF$DbkYmF;-><init>(LZjTIAZ/DbkYmF;Landroid/view/MotionEvent;I)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, LZjTIAZ/DbkYmF;->a(Landroid/view/MotionEvent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    if-eqz v0, :cond_1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v0, v5, :cond_0

    if-eq v0, v2, :cond_2

    const/4 v5, 0x5

    if-eq v0, v5, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    invoke-interface {v3, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, v1, v4}, LZjTIAZ/DbkYmF;->b(Landroid/view/MotionEvent;I)V

    :goto_0
    invoke-interface {v3, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, v1, v2}, LZjTIAZ/DbkYmF;->b(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, v5}, LZjTIAZ/DbkYmF;->b(Landroid/view/MotionEvent;I)V

    goto :goto_0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    return-void
.end method

.method public final onContentChanged()V
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final onSearchRequested()Z
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result p0

    return p0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 0

    .line 7
    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p0

    return p0
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 7
    iget-object p0, p0, LZjTIAZ/DbkYmF;->b:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method
