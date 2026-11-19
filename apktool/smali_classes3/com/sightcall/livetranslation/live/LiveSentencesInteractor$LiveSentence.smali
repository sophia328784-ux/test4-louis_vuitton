.class public final Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/live/LiveSentencesInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveSentence"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018H\u00d6\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;",
        "",
        "message",
        "",
        "color",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;",
        "fontSize",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;",
        "<init>",
        "(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;)V",
        "getMessage",
        "()Ljava/lang/String;",
        "getColor",
        "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;",
        "getFontSize",
        "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final color:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;

.field private final fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->message:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->color:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;

    iput-object p3, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;ILjava/lang/Object;)Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->message:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->color:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->copy(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;)Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->color:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;

    return-object p0
.end method

.method public final component3()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;)Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;-><init>(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;

    iget-object v1, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->color:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;

    iget-object v3, p1, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->color:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    iget-object p1, p1, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getColor()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->color:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;

    return-object p0
.end method

.method public final getFontSize()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->message:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->color:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;

    invoke-virtual {v1}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->message:Ljava/lang/String;

    iget-object v1, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->color:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;

    iget-object p0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LiveSentence(message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", color="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", fontSize="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
