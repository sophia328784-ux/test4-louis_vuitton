.class public abstract Lcom/vuitton/android/presentation/common/editorial/models/EditorialMocksKt;
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
.field public static final a:Lkotlin/Lazy;

.field public static final b:Lkotlin/Lazy;

.field public static final c:Lkotlin/Lazy;

.field public static final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrt;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lrt;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialMocksKt;->a:Lkotlin/Lazy;

    new-instance v0, Lrt;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lrt;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialMocksKt;->b:Lkotlin/Lazy;

    new-instance v0, Lrt;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lrt;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialMocksKt;->c:Lkotlin/Lazy;

    new-instance v0, Lrt;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lrt;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialMocksKt;->d:Lkotlin/Lazy;

    return-void
.end method
