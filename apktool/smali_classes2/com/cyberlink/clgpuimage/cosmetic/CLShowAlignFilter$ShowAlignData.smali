.class public Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowAlignData"
.end annotation


# instance fields
.field public frame_height:I

.field public frame_width:I

.field public is_enabled:Z

.field public is_flip:Z

.field public m_face_align_data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public m_is_data_valid:Z

.field public rotation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5a

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->rotation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->is_flip:Z

    const/16 v1, 0x1e0

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->frame_width:I

    const/16 v1, 0x280

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->frame_height:I

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_is_data_valid:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_face_align_data:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;)V
    .locals 3

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->is_enabled:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->is_enabled:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->is_flip:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->frame_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->frame_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->frame_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->frame_height:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_is_data_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_is_data_valid:Z

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_face_align_data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_face_align_data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_face_align_data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_face_align_data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
