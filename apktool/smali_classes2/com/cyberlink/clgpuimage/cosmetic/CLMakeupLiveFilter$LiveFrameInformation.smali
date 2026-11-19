.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveFrameInformation"
.end annotation


# instance fields
.field public face_size:I

.field public feature_points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public is_flipped:Z

.field public is_mask_detected:Z

.field public rotation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->feature_points:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->feature_points:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->feature_points:Ljava/util/ArrayList;

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->is_flipped:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->is_flipped:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->face_size:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->face_size:I

    iget-boolean p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->is_mask_detected:Z

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->is_mask_detected:Z

    return-void
.end method
