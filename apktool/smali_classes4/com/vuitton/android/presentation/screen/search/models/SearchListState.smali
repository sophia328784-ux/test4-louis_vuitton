.class public abstract Lcom/vuitton/android/presentation/screen/search/models/SearchListState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Error;,
        Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Idle;,
        Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Loading;,
        Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0004\u0003\u0004\u0005\u0006\u0082\u0001\u0004\u0007\u0008\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/search/models/SearchListState;",
        "T",
        "",
        "Idle",
        "Loading",
        "Result",
        "Error",
        "Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Error;",
        "Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Idle;",
        "Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Loading;",
        "Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;",
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
.field public final a:Z


# direct methods
.method public constructor <init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;->a:Z

    return-void
.end method
