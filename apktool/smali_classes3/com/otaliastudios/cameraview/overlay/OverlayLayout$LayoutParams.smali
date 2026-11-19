.class public Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/overlay/OverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;->a:Z

    .line 47
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;->b:Z

    .line 48
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;->a:Z

    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;->b:Z

    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;->c:Z

    sget-object v1, Lcom/otaliastudios/cameraview/R$styleable;->b:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;->a:Z

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;->b:Z

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/otaliastudios/cameraview/overlay/Overlay$Target;)Z
    .locals 1

    sget-object v0, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->PREVIEW:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;->a:Z

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->VIDEO_SNAPSHOT:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;->c:Z

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->PICTURE_SNAPSHOT:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    if-ne p1, v0, :cond_3

    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;->b:Z

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[drawOnPreview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",drawOnPictureSnapshot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",drawOnVideoSnapshot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;->c:Z

    const-string v1, "]"

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
