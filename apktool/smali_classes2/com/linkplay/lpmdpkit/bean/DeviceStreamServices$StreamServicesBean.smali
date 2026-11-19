.class public Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamServicesBean"
.end annotation


# instance fields
.field private audioSurround:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private quality:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

.method public static synthetic access$000(Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->id:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->version:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getAudioSurround()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->audioSurround:Ljava/util/List;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getQuality()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->quality:Ljava/util/List;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setAudioSurround(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->audioSurround:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setQuality(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->quality:Ljava/util/List;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices$StreamServicesBean;->version:Ljava/lang/String;

    return-void
.end method
