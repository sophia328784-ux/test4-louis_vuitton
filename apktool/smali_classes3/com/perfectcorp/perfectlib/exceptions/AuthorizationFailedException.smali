.class public final Lcom/perfectcorp/perfectlib/exceptions/AuthorizationFailedException;
.super Ljava/lang/IllegalStateException;


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, "status code is "

    invoke-static {p1, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/perfectcorp/perfectlib/exceptions/AuthorizationFailedException;->b:I

    return-void
.end method


# virtual methods
.method public final getStatusCode()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/exceptions/AuthorizationFailedException;->b:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Authorization failed. statusCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/perfectcorp/perfectlib/exceptions/AuthorizationFailedException;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
