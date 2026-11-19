.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;->a:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;->b:J

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;->c:Ljava/lang/String;

    return-void
.end method
