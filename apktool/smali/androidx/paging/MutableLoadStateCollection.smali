.class public final Landroidx/paging/MutableLoadStateCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/MutableLoadStateCollection$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/paging/MutableLoadStateCollection;",
        "",
        "<init>",
        "()V",
        "paging-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Landroidx/paging/LoadState;

.field public b:Landroidx/paging/LoadState;

.field public c:Landroidx/paging/LoadState;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/paging/LoadState$NotLoading;->b:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/paging/LoadState$NotLoading;->d:Landroidx/paging/LoadState$NotLoading;

    iput-object v1, p0, Landroidx/paging/MutableLoadStateCollection;->a:Landroidx/paging/LoadState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Landroidx/paging/MutableLoadStateCollection;->b:Landroidx/paging/LoadState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Landroidx/paging/MutableLoadStateCollection;->c:Landroidx/paging/LoadState;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/MutableLoadStateCollection$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroidx/paging/MutableLoadStateCollection;->b:Landroidx/paging/LoadState;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Landroidx/paging/MutableLoadStateCollection;->c:Landroidx/paging/LoadState;

    return-object p0

    :cond_2
    iget-object p0, p0, Landroidx/paging/MutableLoadStateCollection;->a:Landroidx/paging/LoadState;

    return-object p0
.end method

.method public final b(Landroidx/paging/LoadStates;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/paging/LoadStates;->a:Landroidx/paging/LoadState;

    iput-object v0, p0, Landroidx/paging/MutableLoadStateCollection;->a:Landroidx/paging/LoadState;

    iget-object v0, p1, Landroidx/paging/LoadStates;->c:Landroidx/paging/LoadState;

    iput-object v0, p0, Landroidx/paging/MutableLoadStateCollection;->c:Landroidx/paging/LoadState;

    iget-object p1, p1, Landroidx/paging/LoadStates;->b:Landroidx/paging/LoadState;

    iput-object p1, p0, Landroidx/paging/MutableLoadStateCollection;->b:Landroidx/paging/LoadState;

    return-void
.end method

.method public final c(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/MutableLoadStateCollection$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Landroidx/paging/MutableLoadStateCollection;->b:Landroidx/paging/LoadState;

    return-void

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    iput-object p2, p0, Landroidx/paging/MutableLoadStateCollection;->c:Landroidx/paging/LoadState;

    return-void

    :cond_2
    iput-object p2, p0, Landroidx/paging/MutableLoadStateCollection;->a:Landroidx/paging/LoadState;

    return-void
.end method

.method public final d()Landroidx/paging/LoadStates;
    .locals 3

    new-instance v0, Landroidx/paging/LoadStates;

    iget-object v1, p0, Landroidx/paging/MutableLoadStateCollection;->a:Landroidx/paging/LoadState;

    iget-object v2, p0, Landroidx/paging/MutableLoadStateCollection;->b:Landroidx/paging/LoadState;

    iget-object p0, p0, Landroidx/paging/MutableLoadStateCollection;->c:Landroidx/paging/LoadState;

    invoke-direct {v0, v1, v2, p0}, Landroidx/paging/LoadStates;-><init>(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)V

    return-object v0
.end method
