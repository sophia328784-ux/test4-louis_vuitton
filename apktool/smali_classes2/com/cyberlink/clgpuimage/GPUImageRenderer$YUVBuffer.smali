.class public final Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyberlink/clgpuimage/GPUImageRenderer$Buffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/GPUImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "YUVBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:I

.field public final d:J


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->a:[B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->a:[B

    iget v0, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->b:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->b:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->c:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->c:I

    iget-wide v0, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->d:J

    iput-wide v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->d:J

    return-void
.end method
