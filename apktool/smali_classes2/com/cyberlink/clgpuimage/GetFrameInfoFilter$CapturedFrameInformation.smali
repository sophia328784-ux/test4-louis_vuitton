.class public final Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CapturedFrameInformation;
.super Ljava/lang/Object;


# instance fields
.field public final height:I

.field public final pixels:[I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CapturedFrameInformation;->width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CapturedFrameInformation;->height:I

    mul-int/2addr p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GetFrameInfoFilter$CapturedFrameInformation;->pixels:[I

    return-void
.end method
