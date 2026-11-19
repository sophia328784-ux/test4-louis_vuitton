.class public final Lcom/sightcall/universal/util/SystemUiHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/util/SystemUiHelper$OnVisibilityChangeListener;,
        Lcom/sightcall/universal/util/SystemUiHelper$HideRunnable;,
        Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;
    }
.end annotation


# static fields
.field public static final FLAG_IMMERSIVE_STICKY:I = 0x2

.field public static final FLAG_LAYOUT_IN_SCREEN_OLDER_DEVICES:I = 0x1

.field public static final LEVEL_HIDE_STATUS_BAR:I = 0x1

.field public static final LEVEL_IMMERSIVE:I = 0x3

.field public static final LEVEL_LEAN_BACK:I = 0x2

.field public static final LEVEL_LOW_PROFILE:I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private final mImpl:Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sightcall/universal/util/SystemUiHelper;-><init>(Landroid/app/Activity;IILcom/sightcall/universal/util/SystemUiHelper$OnVisibilityChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IILcom/sightcall/universal/util/SystemUiHelper$OnVisibilityChangeListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sightcall/universal/util/SystemUiHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sightcall/universal/util/SystemUiHelper$HideRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sightcall/universal/util/SystemUiHelper$HideRunnable;-><init>(Lcom/sightcall/universal/util/SystemUiHelper;I)V

    iput-object v0, p0, Lcom/sightcall/universal/util/SystemUiHelper;->mHideRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;-><init>(Landroid/app/Activity;IILcom/sightcall/universal/util/SystemUiHelper$OnVisibilityChangeListener;)V

    iput-object v0, p0, Lcom/sightcall/universal/util/SystemUiHelper;->mImpl:Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;

    return-void
.end method


# virtual methods
.method public delayHide(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/universal/util/SystemUiHelper;->removeQueuedRunnables()V

    iget-object v0, p0, Lcom/sightcall/universal/util/SystemUiHelper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sightcall/universal/util/SystemUiHelper;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public hide()V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/util/SystemUiHelper;->removeQueuedRunnables()V

    iget-object p0, p0, Lcom/sightcall/universal/util/SystemUiHelper;->mImpl:Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->hide()V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/util/SystemUiHelper;->mImpl:Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->isShowing()Z

    move-result p0

    return p0
.end method

.method public removeQueuedRunnables()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/util/SystemUiHelper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sightcall/universal/util/SystemUiHelper;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/util/SystemUiHelper;->removeQueuedRunnables()V

    iget-object p0, p0, Lcom/sightcall/universal/util/SystemUiHelper;->mImpl:Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->show()V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/util/SystemUiHelper;->mImpl:Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;

    invoke-virtual {v0}, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->isShowing()Z

    move-result v0

    iget-object p0, p0, Lcom/sightcall/universal/util/SystemUiHelper;->mImpl:Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->hide()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->show()V

    return-void
.end method
