.class public final Lcom/sightcall/session/Reference$Customization;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/session/Reference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Customization"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B1\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J=\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\u0014\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014H\u00d6\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/sightcall/session/Reference$Customization;",
        "",
        "acdExternal",
        "",
        "pluginShareOverlayDisabled",
        "",
        "rtccLocalUdpDisabled",
        "rtccUsapTurnDisabled",
        "sslPlugin",
        "<init>",
        "(Ljava/lang/String;ZZZZ)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "session_release"
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
.field public final acdExternal:Ljava/lang/String;

.field public final pluginShareOverlayDisabled:Z

.field public final rtccLocalUdpDisabled:Z

.field public final rtccUsapTurnDisabled:Z

.field public final sslPlugin:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/session/Reference$Customization;->acdExternal:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sightcall/session/Reference$Customization;->pluginShareOverlayDisabled:Z

    iput-boolean p3, p0, Lcom/sightcall/session/Reference$Customization;->rtccLocalUdpDisabled:Z

    iput-boolean p4, p0, Lcom/sightcall/session/Reference$Customization;->rtccUsapTurnDisabled:Z

    iput-boolean p5, p0, Lcom/sightcall/session/Reference$Customization;->sslPlugin:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/session/Reference$Customization;Ljava/lang/String;ZZZZILjava/lang/Object;)Lcom/sightcall/session/Reference$Customization;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/sightcall/session/Reference$Customization;->acdExternal:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lcom/sightcall/session/Reference$Customization;->pluginShareOverlayDisabled:Z

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-boolean p3, p0, Lcom/sightcall/session/Reference$Customization;->rtccLocalUdpDisabled:Z

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-boolean p4, p0, Lcom/sightcall/session/Reference$Customization;->rtccUsapTurnDisabled:Z

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-boolean p5, p0, Lcom/sightcall/session/Reference$Customization;->sslPlugin:Z

    :cond_4
    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/sightcall/session/Reference$Customization;->copy(Ljava/lang/String;ZZZZ)Lcom/sightcall/session/Reference$Customization;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/Reference$Customization;->acdExternal:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$Customization;->pluginShareOverlayDisabled:Z

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$Customization;->rtccLocalUdpDisabled:Z

    return p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$Customization;->rtccUsapTurnDisabled:Z

    return p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$Customization;->sslPlugin:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;ZZZZ)Lcom/sightcall/session/Reference$Customization;
    .locals 0

    new-instance p0, Lcom/sightcall/session/Reference$Customization;

    invoke-direct/range {p0 .. p5}, Lcom/sightcall/session/Reference$Customization;-><init>(Ljava/lang/String;ZZZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/session/Reference$Customization;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/session/Reference$Customization;

    iget-object v1, p0, Lcom/sightcall/session/Reference$Customization;->acdExternal:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/session/Reference$Customization;->acdExternal:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/sightcall/session/Reference$Customization;->pluginShareOverlayDisabled:Z

    iget-boolean v3, p1, Lcom/sightcall/session/Reference$Customization;->pluginShareOverlayDisabled:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/sightcall/session/Reference$Customization;->rtccLocalUdpDisabled:Z

    iget-boolean v3, p1, Lcom/sightcall/session/Reference$Customization;->rtccLocalUdpDisabled:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/sightcall/session/Reference$Customization;->rtccUsapTurnDisabled:Z

    iget-boolean v3, p1, Lcom/sightcall/session/Reference$Customization;->rtccUsapTurnDisabled:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/sightcall/session/Reference$Customization;->sslPlugin:Z

    iget-boolean p1, p1, Lcom/sightcall/session/Reference$Customization;->sslPlugin:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sightcall/session/Reference$Customization;->acdExternal:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/sightcall/session/Reference$Customization;->pluginShareOverlayDisabled:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/sightcall/session/Reference$Customization;->rtccLocalUdpDisabled:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/sightcall/session/Reference$Customization;->rtccUsapTurnDisabled:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$Customization;->sslPlugin:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/sightcall/session/Reference$Customization;->acdExternal:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/sightcall/session/Reference$Customization;->pluginShareOverlayDisabled:Z

    iget-boolean v2, p0, Lcom/sightcall/session/Reference$Customization;->rtccLocalUdpDisabled:Z

    iget-boolean v3, p0, Lcom/sightcall/session/Reference$Customization;->rtccUsapTurnDisabled:Z

    iget-boolean p0, p0, Lcom/sightcall/session/Reference$Customization;->sslPlugin:Z

    const-string v4, ", pluginShareOverlayDisabled="

    const-string v5, ", rtccLocalUdpDisabled="

    const-string v6, "Customization(acdExternal="

    invoke-static {v6, v0, v4, v5, v1}, Ld21;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rtccUsapTurnDisabled="

    const-string v4, ", sslPlugin="

    invoke-static {v0, v2, v1, v3, v4}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
