.class public Lnet/rtccloud/sdk/ChatMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cid:Ljava/lang/String;

.field private current:I

.field private from:I

.field private message:Ljava/lang/String;

.field private total:I

.field private ts:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/rtccloud/sdk/ChatMessage;->ts:I

    iput p2, p0, Lnet/rtccloud/sdk/ChatMessage;->from:I

    iput-object p3, p0, Lnet/rtccloud/sdk/ChatMessage;->cid:Ljava/lang/String;

    iput p4, p0, Lnet/rtccloud/sdk/ChatMessage;->current:I

    iput p5, p0, Lnet/rtccloud/sdk/ChatMessage;->total:I

    iput-object p6, p0, Lnet/rtccloud/sdk/ChatMessage;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ChatMessage;->cid:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrent()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/ChatMessage;->current:I

    return p0
.end method

.method public getFrom()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/ChatMessage;->from:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ChatMessage;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getTotal()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/ChatMessage;->total:I

    return p0
.end method

.method public getTs()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/ChatMessage;->ts:I

    return p0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/ChatMessage;->cid:Ljava/lang/String;

    return-void
.end method

.method public setCurrent(I)V
    .locals 0

    iput p1, p0, Lnet/rtccloud/sdk/ChatMessage;->current:I

    return-void
.end method

.method public setFrom(I)V
    .locals 0

    iput p1, p0, Lnet/rtccloud/sdk/ChatMessage;->from:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/ChatMessage;->message:Ljava/lang/String;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lnet/rtccloud/sdk/ChatMessage;->total:I

    return-void
.end method

.method public setTs(I)V
    .locals 0

    iput p1, p0, Lnet/rtccloud/sdk/ChatMessage;->ts:I

    return-void
.end method
