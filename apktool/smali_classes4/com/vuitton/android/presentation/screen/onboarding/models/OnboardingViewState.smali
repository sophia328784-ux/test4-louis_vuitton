.class public final Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B5\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;",
        "",
        "",
        "isUserConnected",
        "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;",
        "onboardingAssets",
        "",
        "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssetType;",
        "onboardingSteps",
        "displayFallbackLoginImage",
        "<init>",
        "(ZLcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;Ljava/util/List;Z)V",
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

.field public final b:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;

.field public final c:Ljava/util/List;

.field public final d:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 41
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;-><init>(ZLcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;",
            "Ljava/util/List<",
            "+",
            "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssetType;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->a:Z

    .line 38
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->b:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;

    .line 39
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->c:Ljava/util/List;

    .line 40
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->d:Z

    return-void
.end method

.method public constructor <init>(ZLcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    new-instance v1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;-><init>(Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v1

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    sget-object p3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;-><init>(ZLcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->b:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->b:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->d:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->d:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->b:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->c:Ljava/util/List;

    invoke-static {v2, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnboardingViewState(isUserConnected="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", onboardingAssets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->b:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onboardingSteps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayFallbackLoginImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->d:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
