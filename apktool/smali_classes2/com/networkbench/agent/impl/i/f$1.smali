.class Lcom/networkbench/agent/impl/i/f$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/i/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lcom/networkbench/agent/impl/i/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/i/f;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/i/f;I)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/i/f$1;->a:Lcom/networkbench/agent/impl/i/f;

    invoke-direct {p0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/i/g;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p0

    const/16 p1, 0xa

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
