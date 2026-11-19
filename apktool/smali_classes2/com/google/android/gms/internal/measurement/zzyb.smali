.class final Lcom/google/android/gms/internal/measurement/zzyb;
.super Lcom/google/android/gms/internal/measurement/zzyc;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyc;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyb;->e:I

    const-string v0, "com/google/android/libraries/phenotype/client/Phlogger"

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyb;->b:Ljava/lang/String;

    const-string v0, "logInternal"

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyb;->c:Ljava/lang/String;

    const-string v0, "Phlogger.java"

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyb;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzyb;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzyb;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c()I
    .locals 0

    const/16 p0, 0x2c

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    sget-char v0, Ljava/io/File;->separatorChar:C

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzyb;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzyb;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzyb;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyb;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyb;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzyb;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzyb;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzyb;->b:Ljava/lang/String;

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_3

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    and-int/lit8 v5, v3, -0x2

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    xor-int/2addr v3, v4

    if-eq v3, v0, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyb;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyb;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x1303

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x2c

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyb;->e:I

    :cond_0
    return v0
.end method
