.class public final Lcom/perfectcorp/perfectlib/ph/template/idc/a;
.super Ljava/lang/Object;


# instance fields
.field public final attr_color_number:Ljava/lang/String;

.field public final attr_coverage_intensity:Ljava/lang/String;

.field public final attr_glow_intensity:Ljava/lang/String;

.field public final attr_guid:Ljava/lang/String;

.field public final attr_intensity:Ljava/lang/String;

.field public final attr_skin_smooth_intensity:Ljava/lang/String;

.field public final attr_sku_guid:Ljava/lang/String;

.field public final inner_text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/idc/a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/template/idc/a;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_sku_guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_color_number:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_intensity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_glow_intensity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_coverage_intensity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_skin_smooth_intensity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->inner_text:Ljava/lang/String;

    return-void
.end method
