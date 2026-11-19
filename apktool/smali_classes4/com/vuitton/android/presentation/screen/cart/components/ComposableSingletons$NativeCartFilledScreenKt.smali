.class public final Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartFilledScreenKt;
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
.field public static final a:Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartFilledScreenKt;

.field public static final b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartFilledScreenKt;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartFilledScreenKt;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartFilledScreenKt;->a:Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartFilledScreenKt;

    new-instance v0, Lun;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lun;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, 0x206e8ba5

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartFilledScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/components/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x1a13853b

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
