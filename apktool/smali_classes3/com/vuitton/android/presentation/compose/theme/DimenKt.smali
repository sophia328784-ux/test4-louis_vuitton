.class public abstract Lcom/vuitton/android/presentation/compose/theme/DimenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
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
.field public static final a:J

.field public static final b:J

.field public static final c:J

.field public static final d:J

.field public static final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x32

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->c(I)J

    move-result-wide v0

    sput-wide v0, Lcom/vuitton/android/presentation/compose/theme/DimenKt;->a:J

    const/16 v0, 0x28

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->c(I)J

    move-result-wide v0

    sput-wide v0, Lcom/vuitton/android/presentation/compose/theme/DimenKt;->b:J

    const/16 v0, 0x30

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->c(I)J

    move-result-wide v0

    sput-wide v0, Lcom/vuitton/android/presentation/compose/theme/DimenKt;->c:J

    const/16 v0, 0x3a

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->c(I)J

    move-result-wide v0

    sput-wide v0, Lcom/vuitton/android/presentation/compose/theme/DimenKt;->d:J

    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->b(D)J

    move-result-wide v0

    sput-wide v0, Lcom/vuitton/android/presentation/compose/theme/DimenKt;->e:J

    return-void
.end method
