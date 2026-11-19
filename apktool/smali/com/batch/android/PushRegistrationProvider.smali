.class public interface abstract Lcom/batch/android/PushRegistrationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract checkLibraryAvailability()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/PushRegistrationProviderAvailabilityException;
        }
    .end annotation
.end method

.method public abstract checkServiceAvailability()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/PushRegistrationProviderAvailabilityException;
        }
    .end annotation
.end method

.method public getGCPProjectID()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getRegistration()Ljava/lang/String;
.end method

.method public abstract getSenderID()Ljava/lang/String;
.end method

.method public abstract getShortname()Ljava/lang/String;
.end method
