.class public final Lcom/perfectcorp/perfectlib/ph/template/idc/d$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/idc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final attr_color_intensity:Ljava/lang/String;

.field public final attr_color_under_eye_intensity:Ljava/lang/String;

.field public final attr_coloring_section:Ljava/lang/String;

.field public final attr_coverage_level:Ljava/lang/String;

.field public final attr_ombre_line_offset:Ljava/lang/String;

.field public final attr_ombre_range:Ljava/lang/String;

.field public final attr_palette_color_index:Ljava/lang/String;

.field public final attr_shine_intensity:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$c;->attr_palette_color_index:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$c;->attr_color_intensity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$c;->attr_shine_intensity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$c;->attr_ombre_range:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$c;->attr_ombre_line_offset:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$c;->attr_coloring_section:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$c;->attr_color_under_eye_intensity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$c;->attr_coverage_level:Ljava/lang/String;

    return-void
.end method
