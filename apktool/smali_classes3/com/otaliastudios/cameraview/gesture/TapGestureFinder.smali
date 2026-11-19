.class public Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;
.super Lcom/otaliastudios/cameraview/gesture/GestureFinder;
.source "SourceFile"


# instance fields
.field public final e:Landroid/view/GestureDetector;

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;-><init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;I)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-interface {p1}, Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder$1;

    invoke-direct {v2, p0}, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder$1;-><init>(Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->e:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final b(FFF)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
