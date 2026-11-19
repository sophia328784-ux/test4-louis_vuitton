.class abstract synthetic Lkotlinx/coroutines/flow/FlowKt__DistinctKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
    xs = "kotlinx/coroutines/flow/FlowKt"
.end annotation


# static fields
.field public static final a:Lgt0;

.field public static final b:Lrq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgt0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lgt0;-><init>(I)V

    sput-object v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->a:Lgt0;

    new-instance v0, Lrq;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lrq;-><init>(I)V

    sput-object v0, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->b:Lrq;

    return-void
.end method
