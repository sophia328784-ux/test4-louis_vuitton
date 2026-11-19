.class public final Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;
    }
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    iput-object v0, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->b:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->b:Z

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->c:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->c:Z

    iget-object p1, p1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->d:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->d:Ljava/lang/Boolean;

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

    if-eqz p1, :cond_2

    const-class v2, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    iget-object v2, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    iget-object v3, p1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->b:Z

    iget-boolean v3, p1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->b:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->c:Z

    iget-boolean v3, p1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->c:Z

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->d:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->d:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->d:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserPrivacyOptions{dataCollectionLevel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", crashReportingOptedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", crashReplayOptedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", screenRecordOptedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->d:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
