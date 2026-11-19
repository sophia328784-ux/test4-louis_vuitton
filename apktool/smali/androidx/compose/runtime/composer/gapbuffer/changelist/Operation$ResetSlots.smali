.class public final Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;
.super Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResetSlots"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;",
        "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;",
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


# static fields
.field public static final c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 0

    iget p0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->n:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Cannot reset when inserting"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->I()V

    const/4 p0, 0x0

    iput p0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    invoke-virtual {p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->o()I

    move-result p1

    iget p2, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->h:I

    sub-int/2addr p1, p2

    iput p1, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->u:I

    iput p0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->i:I

    iput p0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->j:I

    iput p0, p3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->o:I

    return-void
.end method
