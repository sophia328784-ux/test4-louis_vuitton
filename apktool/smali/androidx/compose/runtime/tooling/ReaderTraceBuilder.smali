.class public final Landroidx/compose/runtime/tooling/ReaderTraceBuilder;
.super Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/runtime/tooling/ReaderTraceBuilder;",
        "Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;",
        "Landroidx/compose/runtime/composer/gapbuffer/SlotReader;",
        "reader",
        "<init>",
        "(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;)V",
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
.field public final b:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;->b:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/compose/runtime/Anchor;)I
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;->b:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-static {p1}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->a(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->h(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i(I)I

    move-result p0

    return p0
.end method

.method public final f(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;->b:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-static {p1}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->a(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->h(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->q(I)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    move-result-object p0

    return-object p0
.end method
