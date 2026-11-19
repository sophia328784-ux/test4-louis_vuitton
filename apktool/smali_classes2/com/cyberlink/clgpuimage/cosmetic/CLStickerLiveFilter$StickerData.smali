.class public Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickerData"
.end annotation


# instance fields
.field final HOMOGRAPY_SIZE:I

.field final IDENTICAL_HOMOGRAPHY:[F

.field public face_sticker_count:I

.field public face_sticker_homography:[F

.field public face_sticker_model_height:[I

.field public face_sticker_model_width:[I

.field public frame_height:I

.field public frame_width:I

.field public is_enabled:Z

.field public is_face_detected:Z

.field public is_face_sticker_displayed:[Z

.field public is_flip:Z

.field public is_scene_displayed:[Z

.field public reset_decoder:[Z

.field public reset_scene_decoder:[Z

.field public rotation:I

.field public scene_offset_x:[F

.field public scene_offset_y:[F

.field public scene_ratio_x:[F

.field public scene_ratio_y:[F

.field public scene_sticker_count:I

.field public scene_stretch_end_x:[F

.field public scene_stretch_end_y:[F

.field public scene_stretch_start_x:[F

.field public scene_stretch_start_y:[F


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->HOMOGRAPY_SIZE:I

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->IDENTICAL_HOMOGRAPHY:[F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_face_detected:Z

    const/16 v2, 0x5a

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->rotation:I

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_flip:Z

    const/16 v2, 0x1e0

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->frame_width:I

    const/16 v2, 0x280

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->frame_height:I

    const/4 v2, 0x4

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_model_width:[I

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_model_height:[I

    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_face_sticker_displayed:[Z

    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->reset_decoder:[Z

    const/16 v3, 0x24

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_homography:[F

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_count:I

    const/4 v3, 0x2

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_ratio_x:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_ratio_y:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_offset_x:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_offset_y:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_start_x:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_end_x:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_start_y:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_end_y:[F

    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_scene_displayed:[Z

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->reset_scene_decoder:[Z

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_sticker_count:I

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->IDENTICAL_HOMOGRAPHY:[F

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_homography:[F

    mul-int/lit8 v6, v3, 0x9

    invoke-static {v4, v1, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;)V
    .locals 4

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_enabled:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_enabled:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_flip:Z

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_face_detected:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_face_detected:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->frame_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->frame_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->frame_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->frame_height:I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_scene_displayed:[Z

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_scene_displayed:[Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->reset_scene_decoder:[Z

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->reset_scene_decoder:[Z

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_offset_x:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_offset_x:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_offset_y:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_offset_y:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_ratio_x:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_ratio_x:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_ratio_y:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_ratio_y:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_start_x:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_start_x:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_end_x:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_end_x:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_start_y:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_start_y:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_end_y:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_end_y:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_model_width:[I

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_model_width:[I

    const/4 v3, 0x4

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_model_height:[I

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_model_height:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_face_sticker_displayed:[Z

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_face_sticker_displayed:[Z

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->reset_decoder:[Z

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->reset_decoder:[Z

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_count:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_count:I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_homography:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_homography:[F

    const/16 v3, 0x24

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_sticker_count:I

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_sticker_count:I

    return-void
.end method
