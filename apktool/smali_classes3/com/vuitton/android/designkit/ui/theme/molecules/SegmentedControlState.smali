.class public final Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$Companion;,
        Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\t\nB\u001d\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;",
        "",
        "",
        "",
        "labels",
        "",
        "initialIndex",
        "<init>",
        "(Ljava/util/List;I)V",
        "SegmentedControlStateBundle",
        "Companion",
        "system"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final d:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$Companion;

.field public static final e:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$Companion$Saver$1;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Landroidx/compose/runtime/MutableIntState;

.field public final c:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$Companion;

    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$Companion$Saver$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->e:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$Companion$Saver$1;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->a:Ljava/util/List;

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-ge p2, p1, :cond_0

    invoke-static {p2}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->b:Landroidx/compose/runtime/MutableIntState;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->c:Landroidx/compose/runtime/MutableState;

    return-void

    :cond_0
    const-string p0, "Failed requirement."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->b:Landroidx/compose/runtime/MutableIntState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->f()I

    move-result p0

    return p0
.end method

.method public final b(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->b:Landroidx/compose/runtime/MutableIntState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->i(I)V

    :cond_0
    return-void
.end method
