.class public final Lcom/perfectcorp/perfectlib/ph/template/o$g;
.super Ljava/lang/Object;


# instance fields
.field public final attr_item_guid:Ljava/lang/String;

.field public final attr_name:Ljava/lang/String;

.field public final attr_path:Ljava/lang/String;

.field public final attr_subitem_guid:Ljava/lang/String;

.field public final attr_value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/o$g;->attr_item_guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/o$g;->attr_subitem_guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/o$g;->attr_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/o$g;->attr_path:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/o$g;->attr_value:Ljava/lang/String;

    return-void
.end method
