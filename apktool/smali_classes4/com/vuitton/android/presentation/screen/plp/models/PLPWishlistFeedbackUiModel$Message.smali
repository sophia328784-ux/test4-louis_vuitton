.class public Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Message;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Message;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;",
        "Lcom/vuitton/android/presentation/notification/NotificationUiModel;",
        "notification",
        "<init>",
        "(Lcom/vuitton/android/presentation/notification/NotificationUiModel;)V",
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
.field public final a:Lcom/vuitton/android/presentation/notification/NotificationUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/notification/NotificationUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Message;->a:Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    return-void
.end method
