.class public final Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$e$d;
.super Ljava/lang/Object;


# instance fields
.field public final attr_version:Ljava/lang/String;

.field public final skus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$e$d;->attr_version:Ljava/lang/String;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$e$d;->skus:Ljava/util/List;

    return-void
.end method
