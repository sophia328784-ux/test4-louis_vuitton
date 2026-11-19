.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final guid:Ljava/lang/String;

.field public final mask:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

.field public final patternMask:Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;->guid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;->mask:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;->patternMask:Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/template/idc/e;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;->guid:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->pattern_mask_real_3D:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$k;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$k;->mask:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;->mask:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->pattern_mask:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/idc/e$i;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/e$i;->mask:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;

    :cond_1
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;->patternMask:Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;

    return-void
.end method
