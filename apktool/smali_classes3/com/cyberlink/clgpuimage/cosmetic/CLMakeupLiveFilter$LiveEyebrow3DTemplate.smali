.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveEyebrow3DTemplate"
.end annotation


# instance fields
.field public eyebrow3d_template:Ljava/nio/ByteBuffer;

.field public texture_height:I

.field public texture_width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->Clear()V

    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->eyebrow3d_template:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->texture_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->texture_height:I

    return-void
.end method

.method public IsUseTexture()Z
    .locals 2

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->texture_width:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->texture_height:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveEyebrow3DTemplate;->eyebrow3d_template:Ljava/nio/ByteBuffer;

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method
