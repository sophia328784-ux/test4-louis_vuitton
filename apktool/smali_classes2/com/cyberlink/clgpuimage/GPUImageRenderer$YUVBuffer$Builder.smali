.class public final Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->d:J

    return-void
.end method

.method public constructor <init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->d:J

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->a:[B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->a:[B

    iget v0, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->b:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->b:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->c:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->c:I

    iget-wide v0, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->d:J

    iput-wide v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->d:J

    return-void
.end method
