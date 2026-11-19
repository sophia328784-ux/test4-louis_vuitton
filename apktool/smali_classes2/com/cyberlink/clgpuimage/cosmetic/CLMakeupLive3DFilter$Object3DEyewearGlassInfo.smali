.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Object3DEyewearGlassInfo"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:[F

.field public e:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->a:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->b:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->c:F

    const/4 v1, 0x3

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->d:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->e:[F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->d:[F

    aput v0, v3, v2

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->e:[F

    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
