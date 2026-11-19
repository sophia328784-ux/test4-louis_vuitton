.class public Llv/nfc/reader/data/exceptions/LVTagException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private error:Llv/nfc/reader/data/exceptions/LVReadTagError;

.field private message:Ljava/lang/String;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Llv/nfc/reader/data/exceptions/LVReadTagError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Llv/nfc/reader/data/exceptions/LVTagException;->error:Llv/nfc/reader/data/exceptions/LVReadTagError;

    iput-object p2, p0, Llv/nfc/reader/data/exceptions/LVTagException;->message:Ljava/lang/String;

    iput-object p3, p0, Llv/nfc/reader/data/exceptions/LVTagException;->throwable:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getLVReadTagError()Llv/nfc/reader/data/exceptions/LVReadTagError;
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/exceptions/LVTagException;->error:Llv/nfc/reader/data/exceptions/LVReadTagError;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/exceptions/LVTagException;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/exceptions/LVTagException;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method
