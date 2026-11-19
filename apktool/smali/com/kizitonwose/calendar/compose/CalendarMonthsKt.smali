.class public abstract Lcom/kizitonwose/calendar/compose/CalendarMonthsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kizitonwose/calendar/compose/CalendarMonthsKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0007\u00b2\u0006\'\u0010\u0006\u001a\u001d\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u0004\u0012\u0004\u0012\u00020\u00050\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lkotlin/Function1;",
        "Lcom/kizitonwose/calendar/compose/ItemCoordinates;",
        "Lkotlin/ParameterName;",
        "name",
        "itemCoordinates",
        "",
        "currentOnItemPlaced",
        "compose_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/kizitonwose/calendar/compose/ComposableSingletons$CalendarMonthsKt;->a:Lcom/kizitonwose/calendar/compose/ComposableSingletons$CalendarMonthsKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/kizitonwose/calendar/compose/ComposableSingletons$CalendarMonthsKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    sput-object v0, Lcom/kizitonwose/calendar/compose/CalendarMonthsKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    sget-object v0, Lcom/kizitonwose/calendar/compose/ComposableSingletons$CalendarMonthsKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    sput-object v0, Lcom/kizitonwose/calendar/compose/CalendarMonthsKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method

.method public static final a(Landroidx/compose/foundation/lazy/LazyListScope;ILkotlin/jvm/functions/Function1;Lcom/kizitonwose/calendar/compose/ContentHeightMode;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p2

    new-instance p2, Lk0;

    const/4 v0, 0x5

    invoke-direct {p2, v1, v0}, Lk0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    new-instance v0, Lcom/kizitonwose/calendar/compose/b;

    move-object v2, p3

    move-object v5, p4

    move-object v4, p5

    move-object v3, p6

    invoke-direct/range {v0 .. v5}, Lcom/kizitonwose/calendar/compose/b;-><init>(Lkotlin/jvm/functions/Function1;Lcom/kizitonwose/calendar/compose/ContentHeightMode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance p4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const p3, -0x33bea46c    # -5.0687568E7f

    const/4 p5, 0x1

    invoke-direct {p4, p3, p5, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 p5, 0x4

    const/4 p3, 0x0

    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/lazy/LazyListScope;->j(Landroidx/compose/foundation/lazy/LazyListScope;ILk0;Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/a;Lkotlin/jvm/functions/Function4;I)V

    return-void
.end method
