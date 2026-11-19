.class public Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x3c02ec3accad3399L


# instance fields
.field private errorCodeId:I

.field private errorMessage:Ljava/lang/String;

.field private targetException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lorg/squirrelframework/foundation/exception/ErrorCodes;)V
    .locals 0

    .line 38
    invoke-direct {p0, p2}, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;-><init>(Lorg/squirrelframework/foundation/exception/ErrorCodes;)V

    .line 39
    iput-object p1, p0, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->targetException:Ljava/lang/Throwable;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Throwable;Lorg/squirrelframework/foundation/exception/ErrorCodes;[Ljava/lang/Object;)V
    .locals 0

    .line 43
    invoke-direct {p0, p2, p3}, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;-><init>(Lorg/squirrelframework/foundation/exception/ErrorCodes;[Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->targetException:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Lorg/squirrelframework/foundation/exception/ErrorCodes;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 41
    invoke-virtual {p1}, Lorg/squirrelframework/foundation/exception/ErrorCodes;->getCode()I

    move-result v0

    iput v0, p0, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->errorCodeId:I

    .line 42
    invoke-virtual {p0}, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->getErrorCodeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/squirrelframework/foundation/exception/ErrorCodes;->getDescription()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%08d : %s."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Lorg/squirrelframework/foundation/exception/ErrorCodes;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p1}, Lorg/squirrelframework/foundation/exception/ErrorCodes;->getCode()I

    move-result v0

    iput v0, p0, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->errorCodeId:I

    invoke-virtual {p0}, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->getErrorCodeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/squirrelframework/foundation/exception/ErrorCodes;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%08d : %s."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCodeId()I
    .locals 0

    iget p0, p0, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->errorCodeId:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetException()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/exception/SquirrelRuntimeException;->targetException:Ljava/lang/Throwable;

    return-object p0
.end method
