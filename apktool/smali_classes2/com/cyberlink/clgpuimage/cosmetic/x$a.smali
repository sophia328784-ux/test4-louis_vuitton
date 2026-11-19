.class public final Lcom/cyberlink/clgpuimage/cosmetic/x$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:[I

.field public final d:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

.field public final e:Lcom/cyberlink/clgpuimage/cosmetic/x$b;

.field public final f:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->d:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/x$b;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/x$b;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->e:Lcom/cyberlink/clgpuimage/cosmetic/x$b;

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->f:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    return-void
.end method
