.class final Lcom/cyberlink/clgpuimage/cosmetic/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:F

.field private synthetic b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;F)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/v;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/v;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/v;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/v;->a:F

    iput p0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->m1:F

    return-void
.end method
