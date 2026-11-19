.class public final Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState$Companion$saver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/saveable/Saver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/saveable/Saver<",
        "Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001\u00a8\u0006\u0004"
    }
    d2 = {
        "com/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState$Companion$saver$1",
        "Landroidx/compose/runtime/saveable/Saver;",
        "Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;",
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


# instance fields
.field public final synthetic a:Landroidx/compose/material3/SheetState;

.field public final synthetic b:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState$Companion$saver$1;->a:Landroidx/compose/material3/SheetState;

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState$Companion$saver$1;->b:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/saveable/SaverScope;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState$Companion$saver$1;->a:Landroidx/compose/material3/SheetState;

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState$Companion$saver$1;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v0, v1, p0, p1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;-><init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;Z)V

    return-object v0
.end method
