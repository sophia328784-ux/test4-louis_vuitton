.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Object3DEyewearSetting"
.end annotation


# instance fields
.field public a:[F

.field public b:F

.field public c:[F

.field public d:F

.field public e:[F

.field public f:F

.field public g:Z

.field public h:F

.field public i:F

.field public j:Z

.field public k:F

.field public l:F

.field public m:Z

.field public n:F

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->n:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->o:Z

    const/4 v2, 0x3

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->a:[F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->b:F

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->c:[F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->d:F

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->e:[F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->f:F

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->g:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->h:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->i:F

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->j:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->k:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->l:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->m:Z

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->a:[F

    aput v0, v4, v3

    iget-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->c:[F

    aput v0, v4, v3

    iget-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->e:[F

    aput v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->n:F

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->o:Z

    return-void
.end method
