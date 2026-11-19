.class public final Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationArgContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OpIterator"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;",
        "Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationArgContainer;",
        "<init>",
        "(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;)V",
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
.field public a:I

.field public b:I

.field public c:I

.field public final synthetic d:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->d:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->d:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->b:I

    add-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->d:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->e:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->c:I

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method
