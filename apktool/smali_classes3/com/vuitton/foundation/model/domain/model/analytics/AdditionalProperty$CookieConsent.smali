.class public final Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CookieConsent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;",
        "",
        "functional",
        "analytics",
        "customization",
        "advertising",
        "augmentedReality",
        "<init>",
        "(ZZZZLjava/lang/Boolean;)V",
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
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(ZZZZLjava/lang/Boolean;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->a:Z

    .line 17
    iput-boolean p2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->b:Z

    .line 18
    iput-boolean p3, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->c:Z

    .line 19
    iput-boolean p4, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->d:Z

    .line 20
    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(ZZZZLjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;-><init>(ZZZZLjava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->e:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->e:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->e:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", analytics="

    const-string v1, ", customization="

    const-string v2, "CookieConsent(functional="

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", advertising="

    const-string v2, ", augmentedReality="

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
