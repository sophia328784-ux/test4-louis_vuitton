.class final Lcom/cyberlink/clgpuimage/cosmetic/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:[F

.field private synthetic b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter;[F)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/z;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/z;->a:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/z;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter;

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter;->N:I

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/z;->a:[F

    invoke-static {p0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0}, Landroid/opengl/GLES20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method
