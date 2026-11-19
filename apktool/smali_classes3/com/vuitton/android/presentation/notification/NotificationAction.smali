.class public Lcom/vuitton/android/presentation/notification/NotificationAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/notification/NotificationAction$NoAction;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0017\u0018\u00002\u00020\u0001:\u0001\u0006B\u0013\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/notification/NotificationAction;",
        "",
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;",
        "label",
        "<init>",
        "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V",
        "NoAction",
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
.field public final a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/vuitton/android/presentation/notification/NotificationAction;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/notification/NotificationAction;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/notification/NotificationAction;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method
