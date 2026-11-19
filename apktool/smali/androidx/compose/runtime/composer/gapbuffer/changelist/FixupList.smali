.class public final Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;
.super Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationsDebugStringFormattable;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;",
        "Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationsDebugStringFormattable;",
        "<init>",
        "()V",
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
.field public final a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

.field public final b:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationsDebugStringFormattable;-><init>()V

    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    invoke-direct {v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    invoke-direct {v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    return-void
.end method
