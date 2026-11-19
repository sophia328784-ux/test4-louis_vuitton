.class public final Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;-><init>()V

    new-instance v1, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    invoke-direct {v1, v0}, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;)V

    sput-object v1, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->c:Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;->a:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->a:I

    iget p1, p1, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration$Builder;->b:I

    iput p1, p0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->b:I

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

    if-eqz p1, :cond_3

    const-class v2, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;

    iget v2, p0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->a:I

    iget v3, p1, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->a:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget p0, p0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->b:I

    iget p1, p1, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->b:I

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->b:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionSplitConfiguration{maxSessionDuration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inactivityTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/dynatrace/android/agent/conf/SessionSplitConfiguration;->b:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
