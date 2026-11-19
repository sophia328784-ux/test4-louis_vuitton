.class public final Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0017\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;",
        "",
        "Lcom/vuitton/android/presentation/ar/V2A;",
        "clipPosition",
        "uvs",
        "",
        "triangleIndices",
        "<init>",
        "(Lcom/vuitton/android/presentation/ar/V2A;Lcom/vuitton/android/presentation/ar/V2A;[S)V",
        "presentation"
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
.field public final a:Lcom/vuitton/android/presentation/ar/V2A;

.field public final b:Lcom/vuitton/android/presentation/ar/V2A;

.field public final c:[S


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/ar/V2A;Lcom/vuitton/android/presentation/ar/V2A;[S)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;->a:Lcom/vuitton/android/presentation/ar/V2A;

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;->b:Lcom/vuitton/android/presentation/ar/V2A;

    iput-object p3, p0, Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;->c:[S

    return-void
.end method
