.class public Lcom/linkplay/core/nas/LPMediaServerItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private currPage:I

.field private device:Lorg/teleal/cling/model/meta/Device;

.field private perPage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/linkplay/core/nas/LPMediaServerItem;->currPage:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/linkplay/core/nas/LPMediaServerItem;->perPage:I

    return-void
.end method


# virtual methods
.method public getCurrPage()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/nas/LPMediaServerItem;->currPage:I

    return p0
.end method

.method public getDevice()Lorg/teleal/cling/model/meta/Device;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/nas/LPMediaServerItem;->device:Lorg/teleal/cling/model/meta/Device;

    return-object p0
.end method

.method public getPerPage()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/nas/LPMediaServerItem;->perPage:I

    return p0
.end method

.method public setCurrPage(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/nas/LPMediaServerItem;->currPage:I

    return-void
.end method

.method public setDevice(Lorg/teleal/cling/model/meta/Device;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/nas/LPMediaServerItem;->device:Lorg/teleal/cling/model/meta/Device;

    return-void
.end method

.method public setPerPage(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/core/nas/LPMediaServerItem;->perPage:I

    return-void
.end method
