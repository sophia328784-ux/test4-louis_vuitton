.class final Landroidx/paging/MutableCombinedLoadStateCollection$set$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/paging/CombinedLoadStates;",
        "Landroidx/paging/CombinedLoadStates;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/paging/CombinedLoadStates;",
        "currState",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic c:Landroidx/paging/LoadType;

.field public final synthetic d:Landroidx/paging/LoadState;

.field public final synthetic e:Landroidx/paging/MutableCombinedLoadStateCollection;


# direct methods
.method public constructor <init>(Landroidx/paging/LoadType;Landroidx/paging/LoadState;Landroidx/paging/MutableCombinedLoadStateCollection;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/MutableCombinedLoadStateCollection$set$2;->c:Landroidx/paging/LoadType;

    iput-object p2, p0, Landroidx/paging/MutableCombinedLoadStateCollection$set$2;->d:Landroidx/paging/LoadState;

    iput-object p3, p0, Landroidx/paging/MutableCombinedLoadStateCollection$set$2;->e:Landroidx/paging/MutableCombinedLoadStateCollection;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/paging/CombinedLoadStates;

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/paging/CombinedLoadStates;->d:Landroidx/paging/LoadStates;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroidx/paging/LoadStates;->f:Landroidx/paging/LoadStates$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/LoadStates;->g:Landroidx/paging/LoadStates;

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p1, Landroidx/paging/CombinedLoadStates;->e:Landroidx/paging/LoadStates;

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/paging/MutableCombinedLoadStateCollection$set$2;->d:Landroidx/paging/LoadState;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/paging/LoadStates$WhenMappings;->a:[I

    iget-object v5, p0, Landroidx/paging/MutableCombinedLoadStateCollection$set$2;->c:Landroidx/paging/LoadType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    if-ne v4, v6, :cond_3

    const/4 v4, 0x6

    invoke-static {v0, v3, v1, v1, v4}, Landroidx/paging/LoadStates;->a(Landroidx/paging/LoadStates;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;I)Landroidx/paging/LoadStates;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {}, Lv40;->g()V

    goto :goto_1

    :cond_4
    const/4 v4, 0x5

    invoke-static {v0, v1, v3, v1, v4}, Landroidx/paging/LoadStates;->a(Landroidx/paging/LoadStates;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;I)Landroidx/paging/LoadStates;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-static {v0, v1, v1, v3, v6}, Landroidx/paging/LoadStates;->a(Landroidx/paging/LoadStates;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;I)Landroidx/paging/LoadStates;

    move-result-object v1

    :goto_1
    iget-object p0, p0, Landroidx/paging/MutableCombinedLoadStateCollection$set$2;->e:Landroidx/paging/MutableCombinedLoadStateCollection;

    invoke-static {p0, p1, v1, v2}, Landroidx/paging/MutableCombinedLoadStateCollection;->a(Landroidx/paging/MutableCombinedLoadStateCollection;Landroidx/paging/CombinedLoadStates;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/CombinedLoadStates;

    move-result-object p0

    return-object p0
.end method
