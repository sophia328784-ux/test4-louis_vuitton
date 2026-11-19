.class public final Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChatNotificationReceived"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;",
        "Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;",
        "",
        "message",
        "",
        "isProactiveChat",
        "fromName",
        "image",
        "<init>",
        "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V",
        "chat"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->b:Z

    iput-object p3, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->b:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->d:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isProactiveChat="

    const-string v1, ", fromName="

    const-string v2, "ChatNotificationReceived(message="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->b:Z

    invoke-static {v2, v3, v0, v1, v4}, Ld21;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", image="

    const-string v2, ")"

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, p0, v2}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
