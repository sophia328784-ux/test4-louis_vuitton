.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LipStickProfile"
.end annotation


# instance fields
.field public b:I

.field public feather_strength:I

.field public g:I

.field public gloss:I

.field public level:I

.field public level_default:I

.field public level_max:I

.field public r:I

.field public ratio:I

.field public shimmer_b:I

.field public shimmer_density:I

.field public shimmer_g:I

.field public shimmer_granularity:I

.field public shimmer_intensity:I

.field public shimmer_r:I

.field public transparency:I

.field public type:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;->values()[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->type:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->r:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->g:I

    iput p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->b:I

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level:I

    iput p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level_max:I

    iput p5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level_default:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->ratio:I

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->feather_strength:I

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->gloss:I

    const/16 p1, 0xff

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_r:I

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_g:I

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_b:I

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->r:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->g:I

    iput p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->b:I

    iput p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level_max:I

    iput p5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level_default:I

    iput p6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->ratio:I

    iput p7, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->feather_strength:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level:I

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->gloss:I

    const/16 p1, 0xff

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_r:I

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_g:I

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_b:I

    return-void
.end method

.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;IIIIIIIIII)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->type:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->r:I

    iput p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->g:I

    iput p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->b:I

    iput p5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level:I

    iput p6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level_max:I

    iput p7, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level_default:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->ratio:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->feather_strength:I

    iput p8, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->gloss:I

    iput p9, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_r:I

    iput p10, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_g:I

    iput p11, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_b:I

    return-void
.end method

.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;IIIIIIIIIIIIIIII)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->type:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->r:I

    iput p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->g:I

    iput p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->b:I

    iput p5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level:I

    iput p6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level_max:I

    iput p7, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level_default:I

    iput p8, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->ratio:I

    iput p9, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->feather_strength:I

    iput p10, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->gloss:I

    iput p11, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->transparency:I

    iput p12, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_r:I

    iput p13, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_g:I

    iput p14, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_b:I

    iput p15, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_intensity:I

    move/from16 p1, p16

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_granularity:I

    move/from16 p1, p17

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_density:I

    return-void
.end method

.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->type:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->type:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$BlendMode;

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->r:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->r:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->g:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->g:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->b:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->b:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level_max:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level_max:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level_default:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->level_default:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->ratio:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->ratio:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->feather_strength:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->feather_strength:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->gloss:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->gloss:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_r:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_r:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_g:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_g:I

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_b:I

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveLipStickFilter$LipStickProfile;->shimmer_b:I

    return-void
.end method
