.class public abstract Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$Swipe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Swipe"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001\u0082\u0001\u0002\u0002\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$Swipe;",
        "Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel;",
        "Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$SwipeNext;",
        "Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$SwipePrevious;",
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
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$Swipe;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerTrackingUiModel$Swipe;->b:Ljava/lang/String;

    return-void
.end method
