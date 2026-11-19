.class final Lcom/cyberlink/clgpuimage/cosmetic/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/u;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iput-boolean p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/u;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/u;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-boolean p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/u;->a:Z

    iput-boolean p0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->w4:Z

    return-void
.end method
