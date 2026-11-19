.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reshape"
.end annotation


# instance fields
.field cheekbones_intensity:I

.field chin_length_intensity:I

.field chin_reshape_intensity:I

.field chin_reshape_left_intensity:I

.field chin_reshape_right_intensity:I

.field enlarge_eye_intensity:I

.field enlarge_eye_left_intensity:I

.field enlarge_eye_right_intensity:I

.field eye_distance_intensity:I

.field eye_height_intensity:I

.field eye_slant_intensity:I

.field eye_width_intensity:I

.field face_reshape_intensity:I

.field face_reshape_left_intensity:I

.field face_reshape_right_intensity:I

.field face_width_intensity:I

.field is_cheekbones_enabled:Z

.field is_chin_length_enabled:Z

.field is_chin_reshape_enabled:Z

.field is_enlarge_eye_enabled:Z

.field is_eye_distance_enabled:Z

.field is_eye_height_enabled:Z

.field is_eye_slant_enabled:Z

.field is_eye_width_enabled:Z

.field is_face_reshape_enabled:Z

.field is_face_width_enabled:Z

.field is_jaw_enabled:Z

.field is_mouth_height_enabled:Z

.field is_mouth_size_enabled:Z

.field is_mouth_width_enabled:Z

.field is_mshaped_lip_enabled:Z

.field is_nose_bridge_width_enabled:Z

.field is_nose_length_enabled:Z

.field is_nose_size_enabled:Z

.field is_nose_tip_enabled:Z

.field is_nose_tip_width_enabled:Z

.field is_nose_wing_enabled:Z

.field jaw_intensity:I

.field final liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

.field mouth_height_intensity:I

.field mouth_height_lower_intensity:I

.field mouth_height_upper_intensity:I

.field mouth_size_intensity:I

.field mouth_width_intensity:I

.field mshaped_lip_intensity:I

.field nose_bridge_width_intensity:I

.field nose_length_intensity:I

.field nose_size_intensity:I

.field nose_tip_intensity:I

.field nose_tip_width_intensity:I

.field nose_wing_intensity:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    return-void
.end method

.method private updateEye()V
    .locals 8

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SIZE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SIZE_LEFT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v2, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v2

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SIZE_RIGHT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v7, v6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_enlarge_eye_enabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v6

    :goto_2
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->enlarge_eye_intensity:I

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v6

    :goto_3
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->enlarge_eye_left_intensity:I

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v6

    :goto_4
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->enlarge_eye_right_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_DISTANCE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_eye_distance_enabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_5

    :cond_5
    move v0, v6

    :goto_5
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->eye_distance_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_HEIGHT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_eye_height_enabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_6

    :cond_6
    move v0, v6

    :goto_6
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->eye_height_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SLANT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_eye_slant_enabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_7

    :cond_7
    move v0, v6

    :goto_7
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->eye_slant_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_WIDTH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_eye_width_enabled:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v6

    :cond_8
    iput v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->eye_width_intensity:I

    return-void
.end method

.method private updateFace()V
    .locals 9

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_RESHAPE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_RESHAPE_LEFT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v2, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v2

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_RESHAPE_RIGHT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v8, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v6

    :goto_1
    iput-boolean v8, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_face_reshape_enabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v7

    :goto_2
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->face_reshape_intensity:I

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v7

    :goto_3
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->face_reshape_left_intensity:I

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v7

    :goto_4
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->face_reshape_right_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CHEEKBONE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_cheekbones_enabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_5

    :cond_5
    move v0, v7

    :goto_5
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->cheekbones_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CHIN_LENGTH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_chin_length_enabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_6

    :cond_6
    move v0, v7

    :goto_6
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->chin_length_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CHIN_RESHAPE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CHIN_RESHAPE_LEFT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v2, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v2

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CHIN_RESHAPE_RIGHT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v4

    if-nez v0, :cond_8

    if-nez v2, :cond_8

    if-eqz v4, :cond_7

    goto :goto_7

    :cond_7
    move v6, v7

    :cond_8
    :goto_7
    iput-boolean v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_chin_reshape_enabled:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_8

    :cond_9
    move v0, v7

    :goto_8
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->chin_reshape_intensity:I

    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_9

    :cond_a
    move v0, v7

    :goto_9
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->chin_reshape_left_intensity:I

    if-eqz v4, :cond_b

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_a

    :cond_b
    move v0, v7

    :goto_a
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->chin_reshape_right_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_WIDTH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_face_width_enabled:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_b

    :cond_c
    move v0, v7

    :goto_b
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->face_width_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_JAW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_jaw_enabled:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v7

    :cond_d
    iput v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->jaw_intensity:I

    return-void
.end method

.method private updateLip()V
    .locals 8

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_HEIGHT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_HEIGHT_UPPER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v2, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v2

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_HEIGHT_LOWER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v7, v6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_mouth_height_enabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v6

    :goto_2
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->mouth_height_intensity:I

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v6

    :goto_3
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->mouth_height_upper_intensity:I

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v6

    :goto_4
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->mouth_height_lower_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_SIZE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_mouth_size_enabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_5

    :cond_5
    move v0, v6

    :goto_5
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->mouth_size_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_WIDTH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_mouth_width_enabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_6

    :cond_6
    move v0, v6

    :goto_6
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->mouth_width_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_PEAK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_mshaped_lip_enabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v6

    :cond_7
    iput v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->mshaped_lip_intensity:I

    return-void
.end method

.method private updateNose()V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NOSE_BRIDGE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_nose_bridge_width_enabled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->nose_bridge_width_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NOSE_LENGTH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_nose_length_enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->nose_length_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NOSE_SIZE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_nose_size_enabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->nose_size_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NOSE_TIP:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_nose_tip_enabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->nose_tip_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NOSE_WIDTH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_nose_tip_width_enabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->nose_tip_width_intensity:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NOSE_WING:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->is_nose_wing_enabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->liveSettingCtrl:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v2

    :cond_5
    iput v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->nose_wing_intensity:I

    return-void
.end method


# virtual methods
.method public final update()V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->updateFace()V

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->updateEye()V

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->updateLip()V

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;->updateNose()V

    return-void
.end method
