.class public final Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnSmsConsentCheckBoxClick"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;",
        "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick;",
        "",
        "checked",
        "Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;",
        "consentData",
        "Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;",
        "marketingChannel",
        "<init>",
        "(ZLcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;)V",
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

.field public final b:Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;

.field public final c:Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;


# direct methods
.method public constructor <init>(ZLcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->a:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->b:Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->b:Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->b:Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->b:Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnSmsConsentCheckBoxClick(checked="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", consentData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->b:Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", marketingChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnConsentCheckBoxClick$OnSmsConsentCheckBoxClick;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
