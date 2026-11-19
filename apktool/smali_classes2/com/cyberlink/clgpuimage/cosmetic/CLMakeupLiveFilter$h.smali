.class final Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public a:Z

.field public b:[Z

.field public c:[Z

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->values()[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;->c:[Z

    sget v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$a;->a:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;->e:Z

    return-void
.end method

.method public static synthetic a(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;->a:Z

    return-void
.end method

.method public static synthetic b(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;)[Z
    .locals 0

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;->c:[Z

    return-object p0
.end method

.method public static synthetic c(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;->e:Z

    return-void
.end method

.method public static synthetic d(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;->c:[Z

    return-void
.end method

.method public static synthetic e(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;->a:Z

    return p0
.end method

.method public static synthetic f(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;)[Z
    .locals 0

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$h;->b:[Z

    return-object p0
.end method
