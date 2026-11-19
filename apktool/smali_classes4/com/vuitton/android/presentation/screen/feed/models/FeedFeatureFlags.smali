.class public final Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0087\u0008\u0018\u00002\u00020\u0001Ba\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;",
        "",
        "",
        "isInboxAvailable",
        "isVATIncluded",
        "isRecommendedForYouSectionEnabled",
        "isLastViewedProductSectionEnabled",
        "isUserWorldwideIdEnabled",
        "isGoogleSignInEnabled",
        "isLineSignInEnabled",
        "isFeedRevampV2Enabled",
        "isAICompanionEnabled",
        "<init>",
        "(ZZZZZZZZZ)V",
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

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 60
    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;-><init>(ZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZZZZZZ)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->a:Z

    .line 52
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->b:Z

    .line 53
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->c:Z

    .line 54
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->d:Z

    .line 55
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->e:Z

    .line 56
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->f:Z

    .line 57
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->g:Z

    .line 58
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->h:Z

    .line 59
    iput-boolean p9, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->i:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move p7, v0

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    move p8, v0

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    move p9, v0

    :cond_8
    invoke-direct/range {p0 .. p9}, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;-><init>(ZZZZZZZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->i:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->i:Z

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->f:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->g:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->h:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->i:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isVATIncluded="

    const-string v1, ", isRecommendedForYouSectionEnabled="

    const-string v2, "FeedFeatureFlags(isInboxAvailable="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLastViewedProductSectionEnabled="

    const-string v2, ", isUserWorldwideIdEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isGoogleSignInEnabled="

    const-string v2, ", isLineSignInEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->e:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->f:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isFeedRevampV2Enabled="

    const-string v2, ", isAICompanionEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->g:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->h:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->i:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
