.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final nailPosition:Ljava/lang/String;

.field public final patternGUID:Ljava/lang/String;

.field public final piercedPosition:I

.field public final position:Ljava/lang/String;

.field public final side:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b$a;->patternGUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b$a;->side:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b$a;->piercedPosition:I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b$a;->nailPosition:Ljava/lang/String;

    const-string v0, "ring"

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b$a;->position:Ljava/lang/String;

    return-void
.end method
