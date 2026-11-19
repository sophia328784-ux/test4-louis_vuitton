.class public final Lcom/perfectcorp/perfectlib/CameraFrame;
.super Ljava/lang/Object;


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:I

.field public final d:Z

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>([BIIZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-lez p2, :cond_2

    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_2

    if-lez p3, :cond_1

    rem-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_1

    mul-int v1, p2, p3

    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v2

    array-length v2, p1

    if-lt v2, v1, :cond_0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/CameraFrame;->a:[B

    iput p2, p0, Lcom/perfectcorp/perfectlib/CameraFrame;->b:I

    iput p3, p0, Lcom/perfectcorp/perfectlib/CameraFrame;->c:I

    iput-boolean p4, p0, Lcom/perfectcorp/perfectlib/CameraFrame;->d:Z

    return-void

    :cond_0
    const-string p0, "data has insufficient length"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "height must be positive even number"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "width must be positive even number"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final setFrameOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/CameraFrame;->e:Z

    iput p1, p0, Lcom/perfectcorp/perfectlib/CameraFrame;->f:I

    return-void
.end method
