.class final Landroidx/paging/MutableCombinedLoadStateCollection$set$1;
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
.field public final synthetic c:Landroidx/paging/MutableCombinedLoadStateCollection;

.field public final synthetic d:Landroidx/paging/LoadStates;

.field public final synthetic e:Landroidx/paging/LoadStates;


# direct methods
.method public constructor <init>(Landroidx/paging/MutableCombinedLoadStateCollection;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/MutableCombinedLoadStateCollection$set$1;->c:Landroidx/paging/MutableCombinedLoadStateCollection;

    iput-object p2, p0, Landroidx/paging/MutableCombinedLoadStateCollection$set$1;->d:Landroidx/paging/LoadStates;

    iput-object p3, p0, Landroidx/paging/MutableCombinedLoadStateCollection$set$1;->e:Landroidx/paging/LoadStates;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/paging/CombinedLoadStates;

    iget-object v0, p0, Landroidx/paging/MutableCombinedLoadStateCollection$set$1;->d:Landroidx/paging/LoadStates;

    iget-object v1, p0, Landroidx/paging/MutableCombinedLoadStateCollection$set$1;->e:Landroidx/paging/LoadStates;

    iget-object p0, p0, Landroidx/paging/MutableCombinedLoadStateCollection$set$1;->c:Landroidx/paging/MutableCombinedLoadStateCollection;

    invoke-static {p0, p1, v0, v1}, Landroidx/paging/MutableCombinedLoadStateCollection;->a(Landroidx/paging/MutableCombinedLoadStateCollection;Landroidx/paging/CombinedLoadStates;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/CombinedLoadStates;

    move-result-object p0

    return-object p0
.end method
