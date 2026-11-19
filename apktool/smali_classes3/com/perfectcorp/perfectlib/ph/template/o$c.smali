.class public final Lcom/perfectcorp/perfectlib/ph/template/o$c;
.super Ljava/lang/Object;


# instance fields
.field public final attr_hidden:Ljava/lang/String;

.field public final attr_item_guid:Ljava/lang/String;

.field public final attr_name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/o$c;->attr_item_guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/o$c;->attr_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/o$c;->attr_hidden:Ljava/lang/String;

    return-void
.end method
