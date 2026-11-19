.class public final synthetic Lcom/vuitton/android/designkit/ui/common/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic e:Landroidx/compose/ui/unit/LayoutDirection;


# direct methods
.method public synthetic constructor <init>(JLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/common/b;->b:J

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/common/b;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/vuitton/android/designkit/ui/common/b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/vuitton/android/designkit/ui/common/b;->e:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/common/b;->b:J

    invoke-static {p1, v2, v3, v0, v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->e(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z

    move-result p2

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/common/b;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/vuitton/android/designkit/ui/common/b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    if-eqz p2, :cond_4

    iget-wide v1, p2, Landroidx/compose/ui/geometry/Offset;->a:J

    iget-wide p1, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    const/16 v3, 0x20

    shr-long/2addr p1, v3

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    shr-long/2addr v1, v3

    long-to-int p2, v1

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    cmpl-float p1, p1, p2

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/common/b;->e:Landroidx/compose/ui/unit/LayoutDirection;

    if-lez p1, :cond_2

    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p0, p1, :cond_1

    sget-object p0, Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDirection;->StartToEnd:Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDirection;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDirection;->EndToStart:Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDirection;

    goto :goto_0

    :cond_2
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p0, p1, :cond_3

    sget-object p0, Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDirection;->EndToStart:Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDirection;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDirection;->StartToEnd:Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDirection;

    :goto_0
    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
