.class public final Lcom/vuitton/android/presentation/loading/ComposableSingletons$LvLoadingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vuitton/android/presentation/loading/ComposableSingletons$LvLoadingKt;

.field public static final b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/presentation/loading/ComposableSingletons$LvLoadingKt;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/loading/ComposableSingletons$LvLoadingKt;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/loading/ComposableSingletons$LvLoadingKt;->a:Lcom/vuitton/android/presentation/loading/ComposableSingletons$LvLoadingKt;

    new-instance v0, Lun;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lun;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x6212d943

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    sput-object v1, Lcom/vuitton/android/presentation/loading/ComposableSingletons$LvLoadingKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    new-instance v0, Lun;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lun;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x5dc13698

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    sput-object v1, Lcom/vuitton/android/presentation/loading/ComposableSingletons$LvLoadingKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    new-instance v0, Lvn;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lvn;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, 0x18a160c7

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    new-instance v0, Lvn;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lvn;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x58881851

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
