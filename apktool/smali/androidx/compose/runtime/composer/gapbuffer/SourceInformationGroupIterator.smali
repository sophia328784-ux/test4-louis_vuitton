.class final Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;",
        "",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        "Landroidx/compose/runtime/composer/gapbuffer/SlotTable;",
        "table",
        "",
        "parent",
        "Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;",
        "group",
        "Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;",
        "path",
        "<init>",
        "(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;ILandroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;)V",
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
.field public final b:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

.field public final c:I

.field public final d:Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

.field public final e:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

.field public final f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;ILandroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;->b:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    iput p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;->c:I

    iput-object p3, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;->d:Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    iput-object p4, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;->e:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

    iget p1, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->i:I

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;->f:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;->d:Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;->g:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;->d:Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;->g:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;->b:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    if-eqz v2, :cond_1

    new-instance v1, Landroidx/compose/runtime/composer/gapbuffer/SlotTableGroup;

    check-cast v0, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->a:I

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;->f:I

    invoke-direct {v1, v3, v0, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableGroup;-><init>(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;II)V

    return-object v1

    :cond_1
    instance-of v2, v0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    if-eqz v2, :cond_2

    new-instance v1, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;

    check-cast v0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    new-instance v2, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;

    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;->g:I

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;->e:Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;

    invoke-direct {v2, v5, v4}, Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;-><init>(Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;I)V

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupIterator;->c:I

    invoke-direct {v1, v3, p0, v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SourceInformationSlotTableGroup;-><init>(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;ILandroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;)V

    return-object v1

    :cond_2
    const-string p0, "Unexpected group information structure"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    return-object v1
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
