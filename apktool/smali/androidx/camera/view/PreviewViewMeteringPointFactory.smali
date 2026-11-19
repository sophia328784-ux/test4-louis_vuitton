.class Landroidx/camera/view/PreviewViewMeteringPointFactory;
.super Landroidx/camera/core/MeteringPointFactory;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/camera/view/PreviewTransformation;

.field public b:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/view/PreviewTransformation;)V
    .locals 1

    invoke-direct {p0}, Landroidx/camera/core/MeteringPointFactory;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/view/PreviewViewMeteringPointFactory;->b:Landroid/graphics/Rect;

    iput-object p1, p0, Landroidx/camera/view/PreviewViewMeteringPointFactory;->a:Landroidx/camera/view/PreviewTransformation;

    return-void
.end method
