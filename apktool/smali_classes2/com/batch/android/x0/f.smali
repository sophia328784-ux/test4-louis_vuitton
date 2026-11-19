.class public Lcom/batch/android/x0/f;
.super Lcom/batch/android/x0/n;
.source "SourceFile"


# instance fields
.field private final c:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/x0/f;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/batch/android/x0/n;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p2, p0, Lcom/batch/android/x0/f;->c:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/batch/android/x0/n;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/batch/android/x0/f;->c:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/x0/f;->c:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/x0/f;->c:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
