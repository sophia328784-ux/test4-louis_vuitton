.class Lcom/google/common/collect/MultimapBuilder$1;
.super Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 1

    new-instance p0, Lcom/google/common/collect/CompactHashMap;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactHashMap;-><init>(I)V

    return-object p0
.end method
