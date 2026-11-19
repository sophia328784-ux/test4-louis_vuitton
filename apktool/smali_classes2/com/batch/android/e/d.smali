.class Lcom/batch/android/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/e/d$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "RmY5bWJTd2J1U3Jw"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/batch/android/e/c;
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, v0}, Lcom/batch/android/e/d;->a(ILjava/lang/String;)Lcom/batch/android/e/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILjava/lang/String;)Lcom/batch/android/e/c;
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/batch/android/e/d$b;->a(I)Lcom/batch/android/e/d$b;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/batch/android/e/d;->a(Lcom/batch/android/e/d$b;Ljava/lang/String;)Lcom/batch/android/e/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/batch/android/e/d$b;)Lcom/batch/android/e/c;
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, v0}, Lcom/batch/android/e/d;->a(Lcom/batch/android/e/d$b;Ljava/lang/String;)Lcom/batch/android/e/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/batch/android/e/d$b;Ljava/lang/String;)Lcom/batch/android/e/c;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/batch/android/e/d;->a()[B

    move-result-object p1

    invoke-static {p1}, Lcom/batch/android/e/b;->c([B)Ljava/lang/String;

    move-result-object p1

    :cond_1
    sget-object v1, Lcom/batch/android/e/d$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Lcom/batch/android/e/i;

    invoke-direct {p0, p1}, Lcom/batch/android/e/i;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/batch/android/e/h;

    invoke-direct {p0, p1}, Lcom/batch/android/e/h;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/batch/android/e/k;

    invoke-direct {p0, p1}, Lcom/batch/android/e/k;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/batch/android/e/j;

    invoke-direct {p0, p1}, Lcom/batch/android/e/j;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/batch/android/e/c;
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-static {p0, v0}, Lcom/batch/android/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/e/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/e/c;
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/batch/android/e/d$b;->a(Ljava/lang/String;)Lcom/batch/android/e/d$b;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/batch/android/e/d;->a(Lcom/batch/android/e/d$b;Ljava/lang/String;)Lcom/batch/android/e/c;

    move-result-object p0

    return-object p0
.end method

.method private static a()[B
    .locals 3

    .line 64
    const-string v0, "Rkt2Qg=="

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 65
    const-string v2, "RmY5bWJTd2J1U3Jw"

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/batch/android/e/b;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method
