.class public final Lcom/dynatrace/android/agent/conf/RageTapConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final e:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;-><init>()V

    new-instance v1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    invoke-direct {v1, v0}, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;)V

    sput-object v1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->e:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->a:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->a:I

    iget v0, p1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->b:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->b:I

    iget v0, p1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->c:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->c:I

    iget p1, p1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->d:I

    iput p1, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-class v2, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    iget v2, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->a:I

    iget v3, p1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->a:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->b:I

    iget v3, p1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->b:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->c:I

    iget v3, p1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->c:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget p0, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->d:I

    iget p1, p1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->d:I

    if-ne p0, p1, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RageTapConfiguration{tapDuration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dispersionRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timespanDifference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minimumNumberOfTaps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->d:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
