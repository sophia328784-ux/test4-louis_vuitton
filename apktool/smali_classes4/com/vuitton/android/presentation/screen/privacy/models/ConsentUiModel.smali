.class public abstract Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;,
        Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;,
        Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;,
        Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;,
        Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;,
        Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\u0008\t\n\u000b\u000c\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;",
        "",
        "FunctionalConsentUiModel",
        "AnalyticsConsentUiModel",
        "CustomisationConsentUiModel",
        "SocialConsentUiModel",
        "ChatConsentUiModel",
        "LucieLabsConsentUiModel",
        "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;",
        "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;",
        "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;",
        "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;",
        "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;",
        "Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;",
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
.field public final a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;

    if-eqz v0, :cond_0

    new-instance p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;

    if-eqz v0, :cond_1

    new-instance p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;

    if-eqz v0, :cond_2

    new-instance p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;

    if-eqz v0, :cond_3

    new-instance p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    return-object p0

    :cond_3
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;

    if-eqz v0, :cond_4

    new-instance p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    return-object p0

    :cond_4
    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;

    if-eqz p0, :cond_5

    new-instance p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    return-object p0

    :cond_5
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
