.class public Lcom/batch/android/x0/l;
.super Lcom/batch/android/x0/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/CharacterCodingException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/batch/android/x0/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/CharacterCodingException;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/batch/android/x0/i;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/batch/android/x0/l;->getCause()Ljava/nio/charset/CharacterCodingException;

    move-result-object p0

    return-object p0
.end method

.method public getCause()Ljava/nio/charset/CharacterCodingException;
    .locals 0

    invoke-super {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/nio/charset/CharacterCodingException;

    return-object p0
.end method
