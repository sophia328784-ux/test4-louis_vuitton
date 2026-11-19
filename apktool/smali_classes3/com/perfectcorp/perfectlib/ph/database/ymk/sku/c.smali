.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "productGuid can\'t be empty"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "featureType can\'t be empty"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;->a:Ljava/lang/String;

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;->b:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;->b:J

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;->c:Ljava/lang/String;

    return-void
.end method
