.class public final Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Anonymous;
.super Lcom/vuitton/android/data/net/atg/ATGSessionStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/net/atg/ATGSessionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Anonymous"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Anonymous;",
        "Lcom/vuitton/android/data/net/atg/ATGSessionStatus;",
        "Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;",
        "atgSessionIdentification",
        "<init>",
        "(Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;)V",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/net/atg/ATGSessionIdentification;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/vuitton/android/data/net/atg/ATGSessionStatus;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
