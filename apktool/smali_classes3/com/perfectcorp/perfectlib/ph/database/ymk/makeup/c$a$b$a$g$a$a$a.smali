.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final attr_palette_color_index:Ljava/lang/String;

.field public final attr_palette_guid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a$a;->attr_palette_guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a$a;->attr_palette_color_index:Ljava/lang/String;

    return-void
.end method
