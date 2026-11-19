.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a;
    }
.end annotation


# instance fields
.field public final attr_pattern_guid:Ljava/lang/String;

.field public final attr_pattern_mask_index:Ljava/lang/String;

.field public final palettes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a;->attr_pattern_guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a;->attr_pattern_mask_index:Ljava/lang/String;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$g$a;->palettes:Ljava/util/List;

    return-void
.end method
