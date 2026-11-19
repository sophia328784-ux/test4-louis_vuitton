.class public abstract Lcom/google/common/collect/MultimapBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;,
        Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;,
        Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static a()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 2

    const/16 v0, 0x8

    const-string v1, "expectedKeys"

    invoke-static {v0, v1}, Lcom/google/common/collect/CollectPreconditions;->b(ILjava/lang/String;)V

    new-instance v0, Lcom/google/common/collect/MultimapBuilder$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public static b()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1

    new-instance v0, Lcom/google/common/collect/MultimapBuilder$3;

    invoke-direct {v0}, Lcom/google/common/collect/MultimapBuilder$3;-><init>()V

    return-object v0
.end method
