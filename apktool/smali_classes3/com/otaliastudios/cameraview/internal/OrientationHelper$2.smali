.class Lcom/otaliastudios/cameraview/internal/OrientationHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/internal/OrientationHelper;-><init>(Landroid/content/Context;Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/otaliastudios/cameraview/internal/OrientationHelper;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper$2;->b:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper$2;->b:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    iget p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->g:I

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->a()I

    move-result v0

    if-eq v0, p1, :cond_0

    iput v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->g:I

    iget-object p0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->c:Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;

    invoke-interface {p0}, Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;->l()V

    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
