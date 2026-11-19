.class public Lnet/rtccloud/sdk/ChatDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cid:Ljava/lang/String;

.field private current:I

.field private final metadata:[B

.field private mid:Ljava/lang/String;

.field private nuid:I

.field private plist:[Ljava/lang/String;

.field private total:I

.field private totalmsg:I

.field private ts:I

.field private unreadmsg:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIII[B[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/rtccloud/sdk/ChatDetails;->ts:I

    iput-object p2, p0, Lnet/rtccloud/sdk/ChatDetails;->cid:Ljava/lang/String;

    iput-object p3, p0, Lnet/rtccloud/sdk/ChatDetails;->mid:Ljava/lang/String;

    iput p4, p0, Lnet/rtccloud/sdk/ChatDetails;->current:I

    iput p5, p0, Lnet/rtccloud/sdk/ChatDetails;->total:I

    iput p6, p0, Lnet/rtccloud/sdk/ChatDetails;->nuid:I

    iput p7, p0, Lnet/rtccloud/sdk/ChatDetails;->unreadmsg:I

    iput p8, p0, Lnet/rtccloud/sdk/ChatDetails;->totalmsg:I

    iput-object p9, p0, Lnet/rtccloud/sdk/ChatDetails;->metadata:[B

    iput-object p10, p0, Lnet/rtccloud/sdk/ChatDetails;->plist:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ChatDetails;->cid:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrent()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/ChatDetails;->current:I

    return p0
.end method

.method public final getMetadata()[B
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ChatDetails;->metadata:[B

    return-object p0
.end method

.method public getMid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ChatDetails;->mid:Ljava/lang/String;

    return-object p0
.end method

.method public getNuid()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/ChatDetails;->nuid:I

    return p0
.end method

.method public getPlist()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ChatDetails;->plist:[Ljava/lang/String;

    return-object p0
.end method

.method public getTotal()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/ChatDetails;->total:I

    return p0
.end method

.method public getTotalmsg()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/ChatDetails;->totalmsg:I

    return p0
.end method

.method public getTs()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/ChatDetails;->ts:I

    return p0
.end method

.method public getUnreadmsg()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/ChatDetails;->unreadmsg:I

    return p0
.end method
