.class public final Lcom/perfectcorp/perfectlib/ph/template/idc/d$p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/idc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation


# instance fields
.field public final attr_feather_strength:Ljava/lang/String;

.field public final attr_inner_ratio:Ljava/lang/String;

.field public final attr_pattern1_idx:Ljava/lang/String;

.field public final attr_pattern2_idx:Ljava/lang/String;

.field public final inner_text:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$p;->attr_inner_ratio:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$p;->attr_feather_strength:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$p;->inner_text:Ljava/lang/String;

    const-string v0, "-1"

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$p;->attr_pattern1_idx:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$p;->attr_pattern2_idx:Ljava/lang/String;

    return-void
.end method
