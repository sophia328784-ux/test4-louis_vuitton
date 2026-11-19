.class public final Lcom/vuitton/android/data/repository/BeautyConsentRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/BeautyConsentRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/BeautyConsentRepositoryImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/BeautyConsentRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/BeautyConsentRepository;",
        "<init>",
        "()V",
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
.field public a:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;

.field public b:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/repository/BeautyConsentRepositoryImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/data/repository/BeautyConsentRepositoryImpl;->b:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object p1, p0, Lcom/vuitton/android/data/repository/BeautyConsentRepositoryImpl;->a:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/vuitton/android/data/repository/BeautyConsentRepositoryImpl;->b:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/data/repository/BeautyConsentRepositoryImpl;->b:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->d:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;->SHADE_FINDER_IMAGE_STORAGE:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;

    if-eqz v2, :cond_2

    iget-boolean v0, v2, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;->e:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/data/repository/BeautyConsentRepositoryImpl;->b:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;->c:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final c(Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;)V
    .locals 2

    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;->d:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/android/data/repository/BeautyConsentRepositoryImpl$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/vuitton/android/data/repository/BeautyConsentRepositoryImpl;->b:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;

    return-void

    :cond_2
    iput-object p1, p0, Lcom/vuitton/android/data/repository/BeautyConsentRepositoryImpl;->a:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;

    return-void
.end method
