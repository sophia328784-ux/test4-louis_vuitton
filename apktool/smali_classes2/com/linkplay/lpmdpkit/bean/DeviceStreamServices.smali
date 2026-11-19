.class public Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;,
        Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServices;
    }
.end annotation


# instance fields
.field private encrypt:Ljava/lang/String;

.field private streamServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioSurround(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->streamServices:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->streamServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->access$000(Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->getAudioSurround()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEncrypt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->encrypt:Ljava/lang/String;

    return-object p0
.end method

.method public getQuality(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->streamServices:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->streamServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->access$000(Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->getQuality()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStreamServiceVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->streamServices:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->streamServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->access$000(Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->access$100(Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public getStreamServices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->streamServices:Ljava/util/List;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->version:Ljava/lang/String;

    return-object p0
.end method

.method public isNewVersion(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->getStreamServiceVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "1.0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportCalmRadio()Z
    .locals 1

    const-string v0, "CalmRadio"

    invoke-virtual {p0, v0}, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->getStreamServiceVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSupportDeezer2()Z
    .locals 1

    const-string v0, "Deezer2"

    invoke-virtual {p0, v0}, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->getStreamServiceVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSupportLinkplaySpotify()Z
    .locals 1

    const-string v0, "LinkplaySpotify"

    invoke-virtual {p0, v0}, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->getStreamServiceVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSupportRoonReady()Z
    .locals 1

    const-string v0, "Roon"

    invoke-virtual {p0, v0}, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->getStreamServiceVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSupportSoundCloud()Z
    .locals 1

    const-string v0, "SoundCloud"

    invoke-virtual {p0, v0}, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->getStreamServiceVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSupportSoundMachine()Z
    .locals 1

    const-string v0, "soundmachine"

    invoke-virtual {p0, v0}, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->getStreamServiceVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setEncrypt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->encrypt:Ljava/lang/String;

    return-void
.end method

.method public setStreamServices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->streamServices:Ljava/util/List;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->version:Ljava/lang/String;

    return-void
.end method
