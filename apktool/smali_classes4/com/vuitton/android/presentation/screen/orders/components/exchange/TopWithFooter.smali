.class final Lcom/vuitton/android/presentation/screen/orders/components/exchange/TopWithFooter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$Vertical;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/orders/components/exchange/TopWithFooter;",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "presentation"
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
.field public static final a:Lcom/vuitton/android/presentation/screen/orders/components/exchange/TopWithFooter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/TopWithFooter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/TopWithFooter;->a:Lcom/vuitton/android/presentation/screen/orders/components/exchange/TopWithFooter;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/compose/ui/unit/Density;I[I[I)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p0, p3

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    if-ge p1, p0, :cond_0

    aget v2, p3, p1

    add-int/lit8 v3, v1, 0x1

    aput v0, p4, v1

    add-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    move v1, v3

    goto :goto_0

    :cond_0
    if-ge v0, p2, :cond_2

    array-length p0, p4

    add-int/lit8 p0, p0, -0x1

    array-length p1, p3

    if-eqz p1, :cond_1

    array-length p1, p3

    add-int/lit8 p1, p1, -0x1

    aget p1, p3, p1

    sub-int/2addr p2, p1

    aput p2, p4, p0

    return-void

    :cond_1
    const-string p0, "Array is empty."

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
