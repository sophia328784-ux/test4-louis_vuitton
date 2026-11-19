.class public abstract Lcom/google/common/collect/Multimaps;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$CustomListMultimap;,
        Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,
        Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;,
        Lcom/google/common/collect/Multimaps$AsMap;,
        Lcom/google/common/collect/Multimaps$Entries;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/common/collect/ListMultimap;Luh;)Lcom/google/common/collect/ListMultimap;
    .locals 2

    new-instance v0, Lfw;

    const/16 v1, 0x1b

    invoke-direct {v0, p1, v1}, Lfw;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;

    invoke-direct {p1, p0, v0}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;-><init>(Lcom/google/common/collect/ListMultimap;Lfw;)V

    return-object p1
.end method
