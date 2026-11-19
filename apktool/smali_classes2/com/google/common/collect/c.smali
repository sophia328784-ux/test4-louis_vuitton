.class public final synthetic Lcom/google/common/collect/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/Maps$EntryTransformer;


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;

    check-cast p0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;

    check-cast p2, Ljava/util/List;

    new-instance v0, Lcom/google/common/collect/b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/b;-><init>(Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;Ljava/lang/Object;)V

    invoke-static {v0, p2}, Lcom/google/common/collect/Lists;->d(Lcom/google/common/base/Function;Ljava/util/List;)Ljava/util/AbstractList;

    move-result-object p0

    return-object p0
.end method
