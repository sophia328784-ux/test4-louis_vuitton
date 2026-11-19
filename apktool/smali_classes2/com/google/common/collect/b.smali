.class public final synthetic Lcom/google/common/collect/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;

    iput-object p2, p0, Lcom/google/common/collect/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->g:Lfw;

    iget-object p0, p0, Lfw;->c:Ljava/lang/Object;

    check-cast p0, Luh;

    invoke-virtual {p0, p1}, Luh;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
