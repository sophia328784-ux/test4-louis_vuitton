.class public final Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$Companion$Saver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/saveable/Saver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/saveable/Saver<",
        "Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;",
        "Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001\u00a8\u0006\u0004"
    }
    d2 = {
        "com/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$Companion$Saver$1",
        "Landroidx/compose/runtime/saveable/Saver;",
        "Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;",
        "Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;",
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


# virtual methods
.method public final a(Landroidx/compose/runtime/saveable/SaverScope;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;

    iget-object p1, p2, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->b:Landroidx/compose/runtime/MutableIntState;

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->f()I

    move-result p1

    iget-object p2, p2, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->a:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;-><init>(ILjava/util/List;)V

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

    iget-object v0, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;->c:Ljava/util/List;

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState$SegmentedControlStateBundle;->b:I

    invoke-direct {p0, v0, p1}, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;-><init>(Ljava/util/List;I)V

    return-object p0
.end method
