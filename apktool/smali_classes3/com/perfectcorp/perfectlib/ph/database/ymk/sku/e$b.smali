.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;,
        Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;,
        Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;
    }
.end annotation


# instance fields
.field public final earringsOrNail:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "earrings"
    .end annotation
.end field

.field public final paletteColor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final pattern:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;

.field public final patternGeneral:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->pattern:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->patternGeneral:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->earringsOrNail:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->paletteColor:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/template/idc/e;ZLjava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;

    invoke-direct {v0, p1, p2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;-><init>(Lcom/perfectcorp/perfectlib/ph/template/idc/e;Z)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->pattern:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    new-instance p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    :goto_0
    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_thumbnail:Ljava/lang/String;

    invoke-direct {p2, v1, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->patternGeneral:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->earringsOrNail:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, v0

    :goto_2
    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->paletteColor:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->pattern:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;

    invoke-direct {v1, p1, p2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->patternGeneral:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->earringsOrNail:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->paletteColor:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->pattern:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->patternGeneral:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->earringsOrNail:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->paletteColor:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;Ljava/util/ArrayList;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->pattern:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->patternGeneral:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;

    invoke-direct {v1, p1, p2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;-><init>(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;)V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->earringsOrNail:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->paletteColor:Ljava/util/List;

    return-void
.end method
