.class final enum Lcom/perfectcorp/perfectlib/TagHandler$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/TagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/TagHandler$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/perfectlib/TagHandler$Type;

.field public static final enum b:Lcom/perfectcorp/perfectlib/TagHandler$Type;


# instance fields
.field final c:Ljava/lang/String;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/perfectcorp/perfectlib/TagHandler$Type;

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->b:Ljava/util/List;

    sget-object v5, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->TAG_SKU:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    const-string v1, "SKU"

    const/4 v2, 0x0

    const-string v3, "sku"

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/TagHandler$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/TagHandler$Type;->a:Lcom/perfectcorp/perfectlib/TagHandler$Type;

    new-instance v1, Lcom/perfectcorp/perfectlib/TagHandler$Type;

    const-string v0, "look"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->TAG_LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    const-string v2, "LOOK"

    const/4 v3, 0x1

    const-string v4, "look"

    invoke-direct/range {v1 .. v6}, Lcom/perfectcorp/perfectlib/TagHandler$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/TagHandler$Type;->b:Lcom/perfectcorp/perfectlib/TagHandler$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/TagHandler$Type;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/TagHandler$Type;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/TagHandler$Type;->e:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    return-void
.end method
