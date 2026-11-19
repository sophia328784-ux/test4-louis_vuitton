.class public final Landroidx/navigation3/scene/ComposableSingletons$SceneSetupNavEntryDecoratorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/navigation3/scene/ComposableSingletons$SceneSetupNavEntryDecoratorKt;

.field public static final b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/navigation3/scene/ComposableSingletons$SceneSetupNavEntryDecoratorKt;

    invoke-direct {v0}, Landroidx/navigation3/scene/ComposableSingletons$SceneSetupNavEntryDecoratorKt;-><init>()V

    sput-object v0, Landroidx/navigation3/scene/ComposableSingletons$SceneSetupNavEntryDecoratorKt;->a:Landroidx/navigation3/scene/ComposableSingletons$SceneSetupNavEntryDecoratorKt;

    new-instance v0, Lho;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lho;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x314e0e5

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    sput-object v1, Landroidx/navigation3/scene/ComposableSingletons$SceneSetupNavEntryDecoratorKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
