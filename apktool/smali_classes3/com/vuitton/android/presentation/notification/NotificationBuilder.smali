.class public final Lcom/vuitton/android/presentation/notification/NotificationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "",
        "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;",
        "getAccessibilityValueUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;
    .locals 11

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p2

    :goto_0
    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_1

    sget-object p3, Lcom/vuitton/android/presentation/notification/NotificationDuration;->SHORT:Lcom/vuitton/android/presentation/notification/NotificationDuration;

    :cond_1
    move-object v5, p3

    and-int/lit8 p2, p5, 0x8

    if-eqz p2, :cond_2

    xor-int/lit8 p2, v6, 0x1

    move v7, p2

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    and-int/lit8 p2, p5, 0x10

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    :cond_3
    move v8, v1

    and-int/lit8 p2, p5, 0x20

    if-eqz p2, :cond_4

    sget-object p4, Lcom/vuitton/android/presentation/notification/NotificationAction$NoAction;->b:Lcom/vuitton/android/presentation/notification/NotificationAction$NoAction;

    :cond_4
    move-object v9, p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->DISABLE_AUTOPLAY:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    invoke-virtual {p0, p2}, Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;->a(Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;)Ljava/lang/Object;

    move-result-object p0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p3, p0, Lkotlin/Result$Failure;

    if-eqz p3, :cond_5

    move-object p0, p2

    :cond_5
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/vuitton/android/presentation/notification/NotificationUiModel;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;ZZZLcom/vuitton/android/presentation/notification/NotificationAction;Lkotlin/Unit;)V

    return-object v2
.end method
