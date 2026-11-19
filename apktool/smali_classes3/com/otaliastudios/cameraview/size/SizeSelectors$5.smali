.class Lcom/otaliastudios/cameraview/size/SizeSelectors$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;


# instance fields
.field public final synthetic a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/otaliastudios/cameraview/size/SizeSelectors$5;->a:F

    return-void
.end method


# virtual methods
.method public final a(Lcom/otaliastudios/cameraview/size/Size;)Z
    .locals 2

    iget v0, p1, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget p1, p1, Lcom/otaliastudios/cameraview/size/Size;->c:I

    invoke-static {v0, p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->a(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object p1

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->c()F

    move-result p1

    iget p0, p0, Lcom/otaliastudios/cameraview/size/SizeSelectors$5;->a:F

    const/4 v0, 0x0

    sub-float v1, p0, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    add-float/2addr p0, v0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
