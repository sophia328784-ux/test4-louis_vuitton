.class public final Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;
.super Lcom/dynatrace/agent/useraction/UserActionMatch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/agent/useraction/UserActionMatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelfRetired"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;",
        "Lcom/dynatrace/agent/useraction/UserActionMatch;",
        "Lcom/dynatrace/agent/useraction/RetiredUserAction;",
        "retired",
        "<init>",
        "(Lcom/dynatrace/agent/useraction/RetiredUserAction;)V",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Lcom/dynatrace/agent/useraction/RetiredUserAction;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/useraction/RetiredUserAction;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/dynatrace/agent/useraction/RetiredUserAction;->a:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    iget-object v0, v0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dynatrace/agent/useraction/UserActionMatch;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;->b:Lcom/dynatrace/agent/useraction/RetiredUserAction;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;

    iget-object p0, p0, Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;->b:Lcom/dynatrace/agent/useraction/RetiredUserAction;

    iget-object p1, p1, Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;->b:Lcom/dynatrace/agent/useraction/RetiredUserAction;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;->b:Lcom/dynatrace/agent/useraction/RetiredUserAction;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SelfRetired(retired="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;->b:Lcom/dynatrace/agent/useraction/RetiredUserAction;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
