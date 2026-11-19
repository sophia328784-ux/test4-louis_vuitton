.class public abstract Lcom/vuitton/android/data/exception/ConnectivityException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/exception/ConnectivityException$FaqMappingException;,
        Lcom/vuitton/android/data/exception/ConnectivityException$NoEarphoneTutorialException;,
        Lcom/vuitton/android/data/exception/ConnectivityException$NoSpeakerTutorialException;,
        Lcom/vuitton/android/data/exception/ConnectivityException$NoWatchVideoException;,
        Lcom/vuitton/android/data/exception/ConnectivityException$NoWatchfaceException;,
        Lcom/vuitton/android/data/exception/ConnectivityException$WatchFaqException;,
        Lcom/vuitton/android/data/exception/ConnectivityException$WatchTutorialException;,
        Lcom/vuitton/android/data/exception/ConnectivityException$WatchV2PairedException;,
        Lcom/vuitton/android/data/exception/ConnectivityException$WatchV2UnpairedException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00060\u0001j\u0002`\u0002:\t\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u0082\u0001\t\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/data/exception/ConnectivityException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "WatchV2PairedException",
        "WatchV2UnpairedException",
        "WatchFaqException",
        "WatchTutorialException",
        "NoWatchfaceException",
        "NoWatchVideoException",
        "NoEarphoneTutorialException",
        "NoSpeakerTutorialException",
        "FaqMappingException",
        "Lcom/vuitton/android/data/exception/ConnectivityException$FaqMappingException;",
        "Lcom/vuitton/android/data/exception/ConnectivityException$NoEarphoneTutorialException;",
        "Lcom/vuitton/android/data/exception/ConnectivityException$NoSpeakerTutorialException;",
        "Lcom/vuitton/android/data/exception/ConnectivityException$NoWatchVideoException;",
        "Lcom/vuitton/android/data/exception/ConnectivityException$NoWatchfaceException;",
        "Lcom/vuitton/android/data/exception/ConnectivityException$WatchFaqException;",
        "Lcom/vuitton/android/data/exception/ConnectivityException$WatchTutorialException;",
        "Lcom/vuitton/android/data/exception/ConnectivityException$WatchV2PairedException;",
        "Lcom/vuitton/android/data/exception/ConnectivityException$WatchV2UnpairedException;",
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


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/exception/ConnectivityException;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/exception/ConnectivityException;->b:Ljava/lang/String;

    return-object p0
.end method
