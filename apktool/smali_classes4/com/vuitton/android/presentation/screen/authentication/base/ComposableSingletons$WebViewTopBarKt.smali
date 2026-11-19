.class public final Lcom/vuitton/android/presentation/screen/authentication/base/ComposableSingletons$WebViewTopBarKt;
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
.field public static final a:Lcom/vuitton/android/presentation/screen/authentication/base/ComposableSingletons$WebViewTopBarKt;

.field public static final b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/base/ComposableSingletons$WebViewTopBarKt;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/authentication/base/ComposableSingletons$WebViewTopBarKt;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/base/ComposableSingletons$WebViewTopBarKt;->a:Lcom/vuitton/android/presentation/screen/authentication/base/ComposableSingletons$WebViewTopBarKt;

    new-instance v0, Lpo;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lpo;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, 0x54ae9c58    # 5.9995786E12f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/authentication/base/ComposableSingletons$WebViewTopBarKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
