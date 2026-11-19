.class public final Lcom/perfectcorp/perfectlib/ph/template/idc/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/ph/template/idc/f;


# instance fields
.field public final attr_guid:Ljava/lang/String;

.field public final attr_height_intensity:Ljava/lang/String;

.field public final attr_height_lower_intensity:Ljava/lang/String;

.field public final attr_height_upper_intensity:Ljava/lang/String;

.field public final attr_highlight:Ljava/lang/String;

.field public final attr_itemZIP:Ljava/lang/String;

.field public final attr_lip_shape_ombre:Ljava/lang/String;

.field public final attr_lip_shape_roi_start:Ljava/lang/String;

.field public final attr_mask:Ljava/lang/String;

.field public final attr_mshaped_intensity:Ljava/lang/String;

.field public final attr_shadow:Ljava/lang/String;

.field public final attr_size_intensity:Ljava/lang/String;

.field public final attr_thumbnail:Ljava/lang/String;

.field public final attr_width_intensity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/template/idc/f;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->a:Lcom/perfectcorp/perfectlib/ph/template/idc/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_thumbnail:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_mask:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_shadow:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_highlight:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_lip_shape_ombre:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_height_intensity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_height_upper_intensity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_height_lower_intensity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_size_intensity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_width_intensity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_mshaped_intensity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_lip_shape_roi_start:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->attr_itemZIP:Ljava/lang/String;

    return-void
.end method
