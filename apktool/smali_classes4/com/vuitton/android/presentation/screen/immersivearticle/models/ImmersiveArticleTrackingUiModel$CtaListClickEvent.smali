.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CtaListClickEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;",
        "",
        "articleKey",
        "moduleKey",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;",
        "articleType",
        "ctaLabel",
        "",
        "index",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;I)V",
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

.field public final c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

.field public final d:Ljava/lang/String;

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->d:Ljava/lang/String;

    iput p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->e:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->e:I

    iget p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->e:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->d:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", moduleKey="

    const-string v1, ", articleType="

    const-string v2, "CtaListClickEvent(articleKey="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ctaLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->e:I

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
