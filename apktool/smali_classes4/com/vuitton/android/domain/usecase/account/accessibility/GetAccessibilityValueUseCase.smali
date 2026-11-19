.class public final Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;",
        "accessibilityPreferencesRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;)V",
        "domain"
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
.field public final a:Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;->a:Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;->a:Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;->c(Z)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p0, Lkotlin/Result$Failure;

    if-nez v0, :cond_0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :cond_0
    return-object p0
.end method
