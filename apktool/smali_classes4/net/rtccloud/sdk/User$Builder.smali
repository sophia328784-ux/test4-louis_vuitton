.class public abstract Lnet/rtccloud/sdk/User$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Lnet/rtccloud/sdk/User;",
        "B:",
        "Lnet/rtccloud/sdk/User$Builder<",
        "TU;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected advancedAnnotations:Z

.field protected final appid:Ljava/lang/String;

.field protected attendeeSslPlugin:Z

.field protected displayName:Ljava/lang/String;

.field protected environment:I

.field protected final extras:Landroid/os/Bundle;

.field protected hap:Ljava/lang/String;

.field protected liveTranslationLanguage:Ljava/lang/String;

.field protected localUdpDisabled:Z

.field protected usapTurnDisabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lnet/rtccloud/sdk/User$Builder;->extras:Landroid/os/Bundle;

    iput-object p1, p0, Lnet/rtccloud/sdk/User$Builder;->appid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public advancedAnnotations()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/User$Builder;->advancedAnnotations:Z

    return p0
.end method

.method public final appid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User$Builder;->appid:Ljava/lang/String;

    return-object p0
.end method

.method public attendeeSslPlugin()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/User$Builder;->attendeeSslPlugin:Z

    return p0
.end method

.method public final displayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User$Builder;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final displayName(Ljava/lang/String;)Lnet/rtccloud/sdk/User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lnet/rtccloud/sdk/User$Builder;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public environment()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/User$Builder;->environment:I

    return p0
.end method

.method public final extras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public final hap()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User$Builder;->hap:Ljava/lang/String;

    return-object p0
.end method

.method public final hap(Ljava/lang/String;)Lnet/rtccloud/sdk/User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lnet/rtccloud/sdk/User$Builder;->hap:Ljava/lang/String;

    return-object p0
.end method

.method public liveTranslationLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/User$Builder;->liveTranslationLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final liveTranslationLanguage(Ljava/lang/String;)Lnet/rtccloud/sdk/User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lnet/rtccloud/sdk/User$Builder;->liveTranslationLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public localUdpDisabled()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/User$Builder;->localUdpDisabled:Z

    return p0
.end method

.method public final rtccAdvancedAnnotations(Z)Lnet/rtccloud/sdk/User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Lnet/rtccloud/sdk/User$Builder;->advancedAnnotations:Z

    return-object p0
.end method

.method public final rtccAttendeeSslPlugin(Z)Lnet/rtccloud/sdk/User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Lnet/rtccloud/sdk/User$Builder;->attendeeSslPlugin:Z

    return-object p0
.end method

.method public final rtccEnvironment(I)Lnet/rtccloud/sdk/User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iput p1, p0, Lnet/rtccloud/sdk/User$Builder;->environment:I

    return-object p0
.end method

.method public final rtccLocalUdpDisabled(Z)Lnet/rtccloud/sdk/User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Lnet/rtccloud/sdk/User$Builder;->localUdpDisabled:Z

    return-object p0
.end method

.method public final rtccUsapTurnDisabled(Z)Lnet/rtccloud/sdk/User$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Lnet/rtccloud/sdk/User$Builder;->usapTurnDisabled:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Builder{appid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/User$Builder;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', displayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/User$Builder;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/rtccloud/sdk/User$Builder;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public usapTurnDisabled()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/User$Builder;->usapTurnDisabled:Z

    return p0
.end method
