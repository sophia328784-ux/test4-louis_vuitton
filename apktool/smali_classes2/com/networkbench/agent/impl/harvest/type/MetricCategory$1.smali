.class Lcom/networkbench/agent/impl/harvest/type/MetricCategory$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/harvest/type/MetricCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/networkbench/agent/impl/harvest/type/MetricCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:J = -0x12a1ddaac69688caL


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "onCreate"

    sget-object v1, Lcom/networkbench/agent/impl/harvest/type/MetricCategory;->VIEW_LOADING:Lcom/networkbench/agent/impl/harvest/type/MetricCategory;

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
