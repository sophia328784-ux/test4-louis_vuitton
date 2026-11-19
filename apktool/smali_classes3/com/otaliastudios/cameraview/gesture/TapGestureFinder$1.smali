.class Lcom/otaliastudios/cameraview/gesture/TapGestureFinder$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;-><init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder$1;->b:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder$1;->b:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->f:Z

    sget-object p1, Lcom/otaliastudios/cameraview/gesture/Gesture;->LONG_TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->b:Lcom/otaliastudios/cameraview/gesture/Gesture;

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder$1;->b:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->f:Z

    sget-object v0, Lcom/otaliastudios/cameraview/gesture/Gesture;->TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->b:Lcom/otaliastudios/cameraview/gesture/Gesture;

    return p1
.end method
