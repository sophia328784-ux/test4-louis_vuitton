.class public final Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bw\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006\u0012\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000b\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;",
        "",
        "Lcom/vuitton/android/presentation/screen/search/models/SearchState;",
        "state",
        "Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;",
        "history",
        "Lcom/vuitton/android/presentation/screen/search/models/SearchListState;",
        "Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;",
        "trendingList",
        "Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;",
        "suggestionList",
        "",
        "Lcom/vuitton/android/presentation/screen/search/models/SearchMatchUiModel;",
        "autocompleteSearchMatchList",
        "Lcom/vuitton/android/presentation/screen/search/models/SearchHintUiModel;",
        "autocompleteSearchHintList",
        "",
        "currentQuery",
        "",
        "isHistoryEmpty",
        "isAICompanionEnabled",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/search/models/SearchState;Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

.field public final b:Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;

.field public final c:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

.field public final d:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/search/models/SearchState;Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/screen/search/models/SearchState;",
            "Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;",
            "Lcom/vuitton/android/presentation/screen/search/models/SearchListState<",
            "Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;",
            ">;",
            "Lcom/vuitton/android/presentation/screen/search/models/SearchListState<",
            "Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/search/models/SearchMatchUiModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/search/models/SearchHintUiModel;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->a:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    .line 99
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->b:Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;

    .line 100
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->c:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    .line 101
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->d:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    .line 102
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->e:Ljava/util/List;

    .line 103
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->f:Ljava/util/List;

    .line 104
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->g:Ljava/lang/String;

    .line 105
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->h:Z

    .line 106
    iput-boolean p9, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->i:Z

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/search/models/SearchState;Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    new-instance v3, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Idle;

    invoke-direct {v3}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Idle;-><init>()V

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    new-instance v4, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Idle;

    invoke-direct {v4}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Idle;-><init>()V

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    sget-object v5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    const-string v7, ""

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v2, p8

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move/from16 p11, v0

    :goto_7
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move/from16 p10, v2

    move-object p5, v3

    move-object p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    goto :goto_8

    :cond_7
    move/from16 p11, p9

    goto :goto_7

    :goto_8
    invoke-direct/range {p2 .. p11}, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;-><init>(Lcom/vuitton/android/presentation/screen/search/models/SearchState;Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->a:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->a:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->b:Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->b:Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->c:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->c:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->d:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->d:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->f:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->i:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->i:Z

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->a:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->b:Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->c:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->d:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->e:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->f:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->h:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->i:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SearchScreenViewState(state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->a:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", history="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->b:Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trendingList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->c:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", suggestionList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->d:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autocompleteSearchMatchList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", autocompleteSearchHintList="

    const-string v2, ", currentQuery="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->e:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->f:Ljava/util/List;

    invoke-static {v0, v3, v1, v4, v2}, La;->C(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const-string v1, ", isHistoryEmpty="

    const-string v2, ", isAICompanionEnabled="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->g:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->h:Z

    invoke-static {v3, v1, v2, v0, v4}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->i:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
