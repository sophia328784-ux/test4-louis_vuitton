.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveDynamicRangeMetadata"
.end annotation


# instance fields
.field left_max_rgb:[F

.field left_min_rgb:[F

.field max_luma:F

.field max_luma_for_earring:F

.field max_rgb:[F

.field min_luma:F

.field min_luma_for_earring:F

.field min_rgb:[F

.field right_max_rgb:[F

.field right_min_rgb:[F


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_luma:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_luma:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_luma_for_earring:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_luma_for_earring:F

    const/4 v2, 0x3

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_rgb:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_rgb:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->left_min_rgb:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->left_max_rgb:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->right_min_rgb:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->right_max_rgb:[F

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_rgb:[F

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->left_min_rgb:[F

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->right_min_rgb:[F

    aput v0, v6, v3

    aput v0, v5, v3

    aput v0, v4, v3

    iget-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_rgb:[F

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->left_max_rgb:[F

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->right_max_rgb:[F

    aput v1, v6, v3

    aput v1, v5, v3

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;)V
    .locals 4

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_luma:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_luma:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_luma:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_luma:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_luma_for_earring:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_luma_for_earring:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_luma_for_earring:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_luma_for_earring:F

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_rgb:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_rgb:[F

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_rgb:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_rgb:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->left_min_rgb:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->left_min_rgb:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->left_max_rgb:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->left_max_rgb:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->right_min_rgb:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->right_min_rgb:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->right_max_rgb:[F

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->right_max_rgb:[F

    invoke-static {p1, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
