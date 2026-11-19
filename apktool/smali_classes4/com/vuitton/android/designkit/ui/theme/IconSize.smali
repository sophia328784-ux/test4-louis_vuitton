.class public abstract Lcom/vuitton/android/designkit/ui/theme/IconSize;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/IconSize;",
        "",
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
.field public static final a:F

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lcom/vuitton/android/designkit/ui/theme/IconSize;->a:F

    const/high16 v0, 0x41800000    # 16.0f

    sput v0, Lcom/vuitton/android/designkit/ui/theme/IconSize;->b:F

    const/high16 v0, 0x41c00000    # 24.0f

    sput v0, Lcom/vuitton/android/designkit/ui/theme/IconSize;->c:F

    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lcom/vuitton/android/designkit/ui/theme/IconSize;->d:F

    const/high16 v0, 0x42800000    # 64.0f

    sput v0, Lcom/vuitton/android/designkit/ui/theme/IconSize;->e:F

    return-void
.end method
