.class public abstract Lcom/vuitton/android/presentation/screen/booking/form/components/module/BookingModuleSkeletonDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/form/components/module/BookingModuleSkeletonDefaults;",
        "",
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
.field public static final a:F

.field public static final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x42080000    # 34.0f

    sput v0, Lcom/vuitton/android/presentation/screen/booking/form/components/module/BookingModuleSkeletonDefaults;->a:F

    const/high16 v0, 0x428e0000    # 71.0f

    sput v0, Lcom/vuitton/android/presentation/screen/booking/form/components/module/BookingModuleSkeletonDefaults;->b:F

    return-void
.end method
