.class Lcom/otaliastudios/cameraview/internal/CamcorderProfiles$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/otaliastudios/cameraview/size/Size;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles$1;->b:J

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/otaliastudios/cameraview/size/Size;

    check-cast p2, Lcom/otaliastudios/cameraview/size/Size;

    iget v0, p1, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget p1, p1, Lcom/otaliastudios/cameraview/size/Size;->c:I

    mul-int/2addr v0, p1

    int-to-long v0, v0

    iget-wide p0, p0, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles$1;->b:J

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget v2, p2, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget p2, p2, Lcom/otaliastudios/cameraview/size/Size;->c:I

    mul-int/2addr v2, p2

    int-to-long v2, v2

    sub-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
