.class public Llv/nfc/reader/data/exceptions/LVNetworkException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private code:I

.field private message:Ljava/lang/String;

.field private step:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Llv/nfc/reader/data/exceptions/LVNetworkException;->step:Ljava/lang/String;

    iput p2, p0, Llv/nfc/reader/data/exceptions/LVNetworkException;->code:I

    iput-object p3, p0, Llv/nfc/reader/data/exceptions/LVNetworkException;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Llv/nfc/reader/data/exceptions/LVNetworkException;->code:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/exceptions/LVNetworkException;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getStep()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/exceptions/LVNetworkException;->step:Ljava/lang/String;

    return-object p0
.end method
