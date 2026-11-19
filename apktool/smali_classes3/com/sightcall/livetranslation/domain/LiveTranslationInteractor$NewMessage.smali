.class public final Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/libraries/archi/nucleus/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewMessage"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014H\u00d6\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0016H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
        "message",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;",
        "pid",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;",
        "<init>",
        "(Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;)V",
        "getMessage",
        "()Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;",
        "getPid",
        "()Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "livetranslation_release"
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
.field private final message:Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;

.field private final pid:Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;


# direct methods
.method public constructor <init>(Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->message:Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;

    iput-object p2, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->pid:Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->message:Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->pid:Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->copy(Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->message:Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;

    return-object p0
.end method

.method public final component2()Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->pid:Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;

    return-object p0
.end method

.method public final copy(Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;-><init>(Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;

    iget-object v1, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->message:Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;

    iget-object v3, p1, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->message:Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->pid:Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;

    iget-object p1, p1, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->pid:Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMessage()Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->message:Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;

    return-object p0
.end method

.method public final getPid()Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->pid:Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->message:Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;

    invoke-virtual {v0}, Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->pid:Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->message:Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->pid:Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NewMessage(message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
