.class public abstract Landroidx/compose/foundation/contextmenu/ContextMenuSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/foundation/contextmenu/ContextMenuSpec;",
        "",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
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

.field public static final f:Landroidx/compose/ui/BiasAlignment$Vertical;

.field public static final g:I

.field public static final h:F

.field public static final i:F

.field public static final j:F

.field public static final k:F

.field public static final l:F

.field public static final m:J

.field public static final n:Landroidx/compose/ui/text/font/FontWeight;

.field public static final o:J

.field public static final p:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x42e00000    # 112.0f

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->a:F

    const/high16 v0, 0x438c0000    # 280.0f

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->b:F

    const/high16 v0, 0x42400000    # 48.0f

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->c:F

    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->d:F

    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->e:F

    sget-object v0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sput-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->f:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/text/style/TextAlign;->g:I

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->g:I

    const/high16 v0, 0x41400000    # 12.0f

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->h:F

    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->i:F

    const/high16 v1, 0x41c00000    # 24.0f

    sput v1, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->k:F

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->l:F

    const/16 v0, 0xe

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->c(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->m:J

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->i:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->n:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v0, 0x14

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->c(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->o:J

    const v0, 0x3dcccccd    # 0.1f

    const-wide v1, 0x100000000L

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(FJ)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->p:J

    return-void
.end method
