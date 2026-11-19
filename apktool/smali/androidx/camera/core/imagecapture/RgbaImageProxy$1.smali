.class Landroidx/camera/core/imagecapture/RgbaImageProxy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageProxy$PlaneProxy;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(IILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$1;->a:I

    iput p2, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$1;->b:I

    iput-object p3, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$1;->c:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final L()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$1;->c:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final M()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$1;->a:I

    return p0
.end method

.method public final N()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$1;->b:I

    return p0
.end method
