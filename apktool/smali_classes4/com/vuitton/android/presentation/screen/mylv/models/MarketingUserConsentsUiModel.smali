.class public final Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u00002\u00020\u0001BS\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;",
        "",
        "",
        "callConsent",
        "mailsConsent",
        "newsletterEmailsConsent",
        "smsConsent",
        "marketingSmsConsent",
        "partnerEmailsConsent",
        "emailTrackingConsent",
        "<init>",
        "(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V",
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

.field public final e:Ljava/lang/Boolean;

.field public final f:Ljava/lang/Boolean;

.field public final g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 49
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;-><init>(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a:Z

    .line 43
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->b:Z

    .line 44
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->c:Z

    .line 45
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->d:Z

    .line 46
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->e:Ljava/lang/Boolean;

    .line 47
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->f:Ljava/lang/Boolean;

    .line 48
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    const/4 v0, 0x0

    if-eqz p9, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    move-object p7, v0

    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;-><init>(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;
    .locals 8

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a:Z

    :cond_0
    move v1, p1

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->b:Z

    :cond_1
    move v2, p2

    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    iget-boolean p3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->c:Z

    :cond_2
    move v3, p3

    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    iget-boolean p4, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->d:Z

    :cond_3
    move v4, p4

    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    iget-object p5, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->e:Ljava/lang/Boolean;

    :cond_4
    move-object v5, p5

    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_5

    iget-object p6, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->f:Ljava/lang/Boolean;

    :cond_5
    move-object v6, p6

    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_6

    iget-object p7, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->g:Ljava/lang/Boolean;

    :cond_6
    move-object v7, p7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;-><init>(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->e:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->e:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->f:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->f:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->g:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->g:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->e:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->f:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->g:Ljava/lang/Boolean;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", mailsConsent="

    const-string v1, ", newsletterEmailsConsent="

    const-string v2, "MarketingUserConsentsUiModel(callConsent="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smsConsent="

    const-string v2, ", marketingSmsConsent="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", partnerEmailsConsent="

    const-string v2, ", emailTrackingConsent="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->e:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->f:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;->g:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
