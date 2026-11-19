.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/l;
.super Ljava/lang/Object;


# instance fields
.field public final A:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;

.field public final B:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;

.field public final C:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;

.field public final D:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;

.field public final E:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;

.field public final F:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;

.field public final G:[Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

.field public final H:[Ljava/util/List;

.field public final I:[Ljava/util/List;

.field public final J:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;

.field public final a:Lcom/perfectcorp/perfectlib/core/BaseVenus;

.field public final b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

.field public final c:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

.field public final d:[Z

.field public final e:[Z

.field public final f:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;

.field public final g:[[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;

.field public final h:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;

.field public final i:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;

.field public final j:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;

.field public final k:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;

.field public final l:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;

.field public final m:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;

.field public final n:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;

.field public final o:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

.field public final p:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

.field public final q:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;

.field public final r:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

.field public final s:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

.field public final t:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;

.field public final u:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;

.field public final v:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;

.field public final w:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

.field public final x:[Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

.field public final y:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

.field public final z:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->a:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->c:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    const/4 p1, 0x3

    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->d:[Z

    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->e:[Z

    new-array p2, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->f:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;

    new-array p2, p1, [[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->g:[[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->h:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->i:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->j:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->k:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->l:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->m:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->n:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->o:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->p:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->q:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->r:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->s:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->t:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->u:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->v:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->w:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->x:[Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->y:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->z:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->A:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->B:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->C:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->D:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->E:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->F:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;

    new-array p3, p1, [Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->G:[Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    new-array p3, p1, [Ljava/util/List;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->H:[Ljava/util/List;

    new-array p3, p1, [Ljava/util/List;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->I:[Ljava/util/List;

    new-instance p3, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;

    invoke-direct {p3}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;-><init>()V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->J:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->f:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;-><init>()V

    aput-object v2, v1, v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;

    aput-object v1, p2, v0

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;-><init>()V

    aput-object v2, v1, p3

    aget-object v1, p2, v0

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->h:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->i:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->j:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->k:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->l:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->m:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->n:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->o:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->p:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->q:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->t:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->u:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->v:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->r:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->s:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->w:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->x:[Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->y:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->z:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->A:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->B:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->C:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->D:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->E:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->F:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->G:[Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->H:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->I:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([Z[Z)V
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->y:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->E:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->F:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;

    move-object/from16 v27, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->f:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;

    move-object/from16 v28, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->g:[[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->h:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->i:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->j:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->k:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->l:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->m:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->n:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;

    iget-object v11, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->o:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->p:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->q:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;

    iget-object v14, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->r:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    iget-object v15, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->s:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->t:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->u:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->v:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->w:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->x:[Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->z:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->A:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->B:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->C:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->D:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;

    move-object/from16 v29, v26

    move-object/from16 v26, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v29

    move-object/from16 v29, p1

    move-object/from16 v30, p2

    invoke-virtual/range {v1 .. v30}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->c0([Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;[[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;[Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;[Z[Z)V

    :cond_0
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->c:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    aget-object v2, v21, v2

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->J:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;

    invoke-virtual {v1, v0, v2}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->l(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;)V

    :cond_1
    return-void
.end method

.method public final b(II)Z
    .locals 38

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->e:[Z

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->a:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    move-object/from16 v34, v3

    iget-wide v3, v5, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->f:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeContactFilter$LiveEyeContactMetadata;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->g:[[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEyeMakeupMetadata;

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->h:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipstickData;

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->i:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLiplinerFilter$LiplinerData;

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->j:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveTeethWhitenFilter$TeethWhitenMetaData;

    iget-object v11, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->k:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlushFilter$LiveBlushMakeupdata;

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->l:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->m:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveSmoothFilter$LiveSmoothMetadata;

    iget-object v14, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->n:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;

    iget-object v15, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->o:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    move-wide/from16 v16, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->p:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->q:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->r:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    move-object/from16 v19, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->s:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->t:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;

    move-object/from16 v21, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->u:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;

    move-object/from16 v22, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->v:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;

    move-object/from16 v23, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->w:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    move-object/from16 v24, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->x:[Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    move-object/from16 v25, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->y:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    move-object/from16 v26, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->z:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;

    move-object/from16 v27, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->A:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;

    move-object/from16 v28, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->B:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;

    move-object/from16 v29, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->C:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;

    move-object/from16 v30, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->D:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearMetaData;

    move-object/from16 v31, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->E:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;

    move-object/from16 v32, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->F:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFaceRegionOccludeMetadata;

    move-object/from16 v33, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->d:[Z

    move-object/from16 v35, v33

    move-object/from16 v33, v3

    move-wide/from16 v36, v16

    move-object/from16 v17, v4

    move-wide/from16 v3, v36

    move-object/from16 v16, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v35

    invoke-static/range {v3 .. v34}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetMakeupMetadata(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Z[Z)Z

    move-result v3

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->J:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;

    iget-wide v6, v5, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v6, v7, v5, v4}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetBackgroundMetadata(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->I:[Ljava/util/List;

    iget-wide v6, v5, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v6, v7, v5, v4}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetFaceData(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    iget-wide v6, v5, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->H:[Ljava/util/List;

    invoke-static {v6, v7, v5, v4}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetFaceData(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v3, v5

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_3

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->G:[Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    aget-object v6, v6, v5

    aget-object v7, v14, v5

    iget v8, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->rotation:I

    iput v8, v6, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->rotation:I

    iget-object v7, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->feature_points:Ljava/util/ArrayList;

    iput-object v7, v6, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_face_align_data:Ljava/util/ArrayList;

    iput-boolean v3, v6, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_is_data_valid:Z

    aget-object v6, v4, v5

    const/16 v7, 0x5a

    if-eq v8, v7, :cond_1

    const/16 v7, 0x10e

    if-ne v8, v7, :cond_0

    goto :goto_1

    :cond_0
    int-to-float v7, v1

    int-to-float v8, v2

    goto :goto_2

    :cond_1
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    mul-float/2addr v10, v7

    iput v10, v9, Landroid/graphics/PointF;->x:F

    iget v10, v9, Landroid/graphics/PointF;->y:F

    mul-float/2addr v10, v8

    iput v10, v9, Landroid/graphics/PointF;->y:F

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method
