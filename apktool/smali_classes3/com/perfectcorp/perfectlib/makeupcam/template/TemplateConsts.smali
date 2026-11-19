.class public abstract Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$LocaleEnum;,
        Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$PatternPosition;
    }
.end annotation


# static fields
.field public static a:F

.field public static final b:Landroid/graphics/Point;

.field public static final c:[Ljava/lang/String;

.field public static final d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b:Landroid/graphics/Point;

    const-string v26, "bronzer"

    const-string v27, "concealer"

    const-string v2, "eye_brow"

    const-string v3, "eye_shadow"

    const-string v4, "eye_line"

    const-string v5, "eye_lash"

    const-string v6, "eye_contact"

    const-string v7, "eye_lid"

    const-string v8, "lipstick"

    const-string v9, "blush"

    const-string v10, "skin_toner"

    const-string v11, "wig"

    const-string v12, "eye_wear"

    const-string v13, "hair_band"

    const-string v14, "necklace"

    const-string v15, "earrings"

    const-string v16, "hat"

    const-string v17, "hair_dye"

    const-string v18, "face_art"

    const-string v19, "mustache"

    const-string v20, "face_contour_pattern"

    const-string v21, "lip_liner"

    const-string v22, "nail"

    const-string v23, "bracelet"

    const-string v24, "watch"

    const-string v25, "ring"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->c:[Ljava/lang/String;

    sget v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->d:I

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;-><init>()V

    const-string v1, "eye_wear"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    const-string v1, "hair_band"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    const-string v1, "necklace"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    const-string v1, "earrings"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    const-string v1, "hat"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    const-string v1, "face_art"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    const-string v1, "ring"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    const-string v1, "bracelet"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    const-string v1, "watch"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->j()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    return-void
.end method

.method public static a(Ljava/lang/String;F)F
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "TemplateConsts"

    const-string v1, "[atof] failed."

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p1
.end method

.method public static b(ILjava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    double-to-int p0, p0

    return p0

    :catchall_0
    move-exception p1

    const-string v0, "TemplateConsts"

    const-string v1, "[atoi] failed."

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p0
.end method

.method public static c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "watch"

    return-object p0

    :pswitch_1
    const-string p0, "bracelet"

    return-object p0

    :pswitch_2
    const-string p0, "ring"

    return-object p0

    :pswitch_3
    const-string p0, "concealer"

    return-object p0

    :pswitch_4
    const-string p0, "bronzer"

    return-object p0

    :pswitch_5
    const-string p0, "lip_liner"

    return-object p0

    :pswitch_6
    const-string p0, "face_contour_pattern"

    return-object p0

    :pswitch_7
    const-string p0, "face_art"

    return-object p0

    :pswitch_8
    const-string p0, "hair_dye"

    return-object p0

    :pswitch_9
    const-string p0, "earrings"

    return-object p0

    :pswitch_a
    const-string p0, "necklace"

    return-object p0

    :pswitch_b
    const-string p0, "hair_band"

    return-object p0

    :pswitch_c
    const-string p0, "eye_wear"

    return-object p0

    :pswitch_d
    const-string p0, "teeth_whitener"

    return-object p0

    :pswitch_e
    const-string p0, "face_reshaper"

    return-object p0

    :pswitch_f
    const-string p0, "skin_smooth"

    return-object p0

    :pswitch_10
    const-string p0, "eye_enlarge"

    return-object p0

    :pswitch_11
    const-string p0, "lipstick"

    return-object p0

    :pswitch_12
    const-string p0, "skin_toner"

    return-object p0

    :pswitch_13
    const-string p0, "blush"

    return-object p0

    :pswitch_14
    const-string p0, "eye_contact"

    return-object p0

    :pswitch_15
    const-string p0, "eye_brow"

    return-object p0

    :pswitch_16
    const-string p0, "eye_shadow"

    return-object p0

    :pswitch_17
    const-string p0, "eye_line"

    return-object p0

    :pswitch_18
    const-string p0, "eye_lash"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "eye_contact"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "lipstick"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "necklace"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "face_art"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "hair_band"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "bronzer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "watch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "blush"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "face_contour_pattern"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "ring"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "bracelet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "hair_dye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "lip_liner"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "eye_enlarge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "eye_shadow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "skin_smooth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "face_reshaper"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "earrings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "concealer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_13
    const-string v0, "background_filter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_14
    const-string v0, "teeth_whitener"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_15
    const-string v0, "skin_toner"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_16
    const-string v0, "eye_wear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_17
    const-string v0, "eye_line"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_18
    const-string v0, "eye_lash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_19
    const-string v0, "eye_brow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->UNDEFINED:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_STICK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NECKLACE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_ART:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_BAND:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BRONZER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->WATCH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->RING:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BRACELET:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_LINER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SIZE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_SMOOTHER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_RESHAPE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CONCEALER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->TEETH_WHITENER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_TONER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_WEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LASHES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_BROW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x5194d47a -> :sswitch_19
        -0x51908828 -> :sswitch_18
        -0x51906abe -> :sswitch_17
        -0x518b7b33 -> :sswitch_16
        -0x4b6bc402 -> :sswitch_15
        -0x48e9ae57 -> :sswitch_14
        -0x47c31c57 -> :sswitch_13
        -0x354c6284 -> :sswitch_12
        -0x2fec8553 -> :sswitch_11
        -0x276bcb7a -> :sswitch_10
        -0x23dd2950 -> :sswitch_f
        -0x2342bd12 -> :sswitch_e
        -0x1ed55fdc -> :sswitch_d
        -0xacc25ae -> :sswitch_c
        -0x7a94b6d -> :sswitch_b
        -0x21db8f8 -> :sswitch_a
        0x356a30 -> :sswitch_9
        0x5074549 -> :sswitch_8
        0x597dd00 -> :sswitch_7
        0x6bac4cf -> :sswitch_6
        0x8fb2e18 -> :sswitch_5
        0x127e9c72 -> :sswitch_4
        0x1da00981 -> :sswitch_3
        0x309cd176 -> :sswitch_2
        0x4b16e1dd -> :sswitch_1
        0x79379412 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
