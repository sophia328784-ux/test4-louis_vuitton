.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final attr_guid:Ljava/lang/String;

.field public final inner_text:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c$a;->attr_guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c$a;->inner_text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c$a;->attr_guid:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c$a;->inner_text:Ljava/lang/String;

    return-void
.end method
