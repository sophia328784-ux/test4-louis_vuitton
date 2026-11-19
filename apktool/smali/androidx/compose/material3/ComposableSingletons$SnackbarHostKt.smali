.class public final Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt;

.field public static final b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt;

    invoke-direct {v0}, Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt;-><init>()V

    sput-object v0, Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt;->a:Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt;

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x5c4f7a94

    const/4 v2, 0x0

    sget-object v3, Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt$lambda$-1548712596$1;->b:Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt$lambda$-1548712596$1;

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    sput-object v0, Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
