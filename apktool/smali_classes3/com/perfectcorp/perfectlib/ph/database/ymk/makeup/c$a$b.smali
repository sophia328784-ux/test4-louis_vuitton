.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$b;,
        Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;
    }
.end annotation


# instance fields
.field public final attr_guid:Ljava/lang/String;

.field public final attr_look_type:Ljava/lang/String;

.field public final attr_preview_image:Ljava/lang/String;

.field public final attr_supported_mode:Ljava/lang/String;

.field public final attr_thumbnail:Ljava/lang/String;

.field public final description:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/template/idc/b;",
            ">;"
        }
    .end annotation
.end field

.field public final effect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a;",
            ">;"
        }
    .end annotation
.end field

.field public final look_categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$b;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/template/idc/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->attr_thumbnail:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->attr_preview_image:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->attr_supported_mode:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->attr_look_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->attr_guid:Ljava/lang/String;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->effect:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->name:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->description:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b;->look_categories:Ljava/util/List;

    return-void
.end method
