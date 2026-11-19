.class public Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundData"
.end annotation


# instance fields
.field public m_is_enabled:Z

.field public m_is_flip:Z

.field public m_rotation:I

.field public m_segment_map_data:[B

.field m_segment_map_height:I

.field m_segment_map_width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_is_enabled:Z

    const/16 v1, 0x5a

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_rotation:I

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_is_flip:Z

    return-void
.end method


# virtual methods
.method public AllocByteArray(II)V
    .locals 1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_segment_map_width:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_segment_map_height:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_segment_map_width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_segment_map_height:I

    mul-int/2addr p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_segment_map_data:[B

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;)V
    .locals 3

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_is_enabled:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_is_enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->AllocByteArray(II)V

    return-void

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_is_flip:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_segment_map_width:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_segment_map_height:I

    invoke-virtual {p0, v0, v2}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->AllocByteArray(II)V

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_segment_map_data:[B

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_segment_map_data:[B

    array-length v0, p1

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method
