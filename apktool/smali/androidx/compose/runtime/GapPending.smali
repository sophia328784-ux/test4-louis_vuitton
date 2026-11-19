.class final Landroidx/compose/runtime/GapPending;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/runtime/GapPending;",
        "",
        "",
        "Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;",
        "keyInfos",
        "",
        "startIndex",
        "<init>",
        "(Ljava/util/List;I)V",
        "runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public c:I

.field public final d:Ljava/util/ArrayList;

.field public final e:Landroidx/collection/MutableIntObjectMap;

.field public final f:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/GapPending;->a:Ljava/util/List;

    iput p2, p0, Landroidx/compose/runtime/GapPending;->b:I

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "Invalid start index"

    invoke-static {p2}, Landroidx/compose/runtime/PreconditionsKt;->a(Ljava/lang/String;)V

    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/GapPending;->d:Ljava/util/ArrayList;

    new-instance p2, Landroidx/collection/MutableIntObjectMap;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p2, v1, v2, v0}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v0, v1

    :goto_1
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/GapPending;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->c:I

    iget v2, v2, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->d:I

    new-instance v4, Landroidx/compose/runtime/composer/GroupInfo;

    invoke-direct {v4, v1, v0, v2}, Landroidx/compose/runtime/composer/GroupInfo;-><init>(III)V

    invoke-virtual {p2, v3, v4}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-object p2, p0, Landroidx/compose/runtime/GapPending;->e:Landroidx/collection/MutableIntObjectMap;

    new-instance p1, Landroidx/compose/runtime/GapPending$keyMap$2;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/GapPending$keyMap$2;-><init>(Landroidx/compose/runtime/GapPending;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/GapPending;->f:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v0, v0, Landroidx/compose/runtime/GapPending;->e:Landroidx/collection/MutableIntObjectMap;

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/composer/GroupInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget v4, v2, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    iget v5, v2, Landroidx/compose/runtime/composer/GroupInfo;->c:I

    sub-int v5, v1, v5

    iput v1, v2, Landroidx/compose/runtime/composer/GroupInfo;->c:I

    if-eqz v5, :cond_3

    iget-object v1, v0, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/IntObjectMap;->a:[J

    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_3

    move v7, v3

    :goto_0
    aget-wide v8, v0, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v3

    :goto_1
    if-ge v12, v10, :cond_1

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-object v13, v1, v13

    check-cast v13, Landroidx/compose/runtime/composer/GroupInfo;

    iget v14, v13, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    if-lt v14, v4, :cond_0

    if-eq v13, v2, :cond_0

    add-int/2addr v14, v5

    if-ltz v14, :cond_0

    iput v14, v13, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    :cond_0
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    if-ne v10, v11, :cond_3

    :cond_2
    if-eq v7, v6, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    return v3
.end method
