.class public Lcom/batch/android/e/o0$d;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/e/o0$d$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private b:Lcom/batch/android/e/o0$d$a;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/batch/android/e/o0$d$a;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/e/o0$d;->c:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/batch/android/e/o0$d;->b:Lcom/batch/android/e/o0$d$a;

    return-void

    :cond_0
    const-string p0, "Null reason"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/batch/android/e/o0$d$a;Ljava/lang/Throwable;)V
    .locals 0

    .line 20
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 21
    iput p2, p0, Lcom/batch/android/e/o0$d;->c:I

    if-eqz p1, :cond_0

    .line 22
    iput-object p1, p0, Lcom/batch/android/e/o0$d;->b:Lcom/batch/android/e/o0$d$a;

    return-void

    .line 23
    :cond_0
    const-string p0, "Null reason"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(Lcom/batch/android/e/o0$d;)Lcom/batch/android/e/o0$d$a;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/batch/android/e/o0$d;->b:Lcom/batch/android/e/o0$d$a;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/batch/android/FailReason;
    .locals 1

    sget-object v0, Lcom/batch/android/e/o0$a;->a:[I

    invoke-virtual {p0}, Lcom/batch/android/e/o0$d;->b()Lcom/batch/android/e/o0$d$a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    return-object p0

    :cond_0
    sget-object p0, Lcom/batch/android/FailReason;->DEACTIVATED_API_KEY:Lcom/batch/android/FailReason;

    return-object p0

    :cond_1
    sget-object p0, Lcom/batch/android/FailReason;->INVALID_API_KEY:Lcom/batch/android/FailReason;

    return-object p0

    :cond_2
    sget-object p0, Lcom/batch/android/FailReason;->NETWORK_ERROR:Lcom/batch/android/FailReason;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/batch/android/e/o0$d;->c:I

    return-void
.end method

.method public b()Lcom/batch/android/e/o0$d$a;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/e/o0$d;->b:Lcom/batch/android/e/o0$d$a;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/batch/android/e/o0$d;->c:I

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method
