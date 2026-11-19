.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;->b:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;->c:J

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;->d:Ljava/lang/String;

    return-void
.end method
