.class final Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/libraries/archi/nucleus/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\tH\u00c6\u0003J3\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0014\u0010\u0019\u001a\u00020\u00052\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0083\u0004J\n\u0010\u001c\u001a\u00020\u001dH\u00d6\u0081\u0004J\n\u0010\u001e\u001a\u00020\u001fH\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006 "
    }
    d2 = {
        "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
        "fontSize",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;",
        "show",
        "",
        "language",
        "Lcom/sightcall/livetranslation/domain/Language;",
        "transcriptHistory",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;",
        "<init>",
        "(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;ZLcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;)V",
        "getFontSize",
        "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;",
        "getShow",
        "()Z",
        "getLanguage",
        "()Lcom/sightcall/livetranslation/domain/Language;",
        "getTranscriptHistory",
        "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
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
.field private final fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

.field private final language:Lcom/sightcall/livetranslation/domain/Language;

.field private final show:Z

.field private final transcriptHistory:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;


# direct methods
.method public constructor <init>(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;ZLcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    iput-boolean p2, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->show:Z

    iput-object p3, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->language:Lcom/sightcall/livetranslation/domain/Language;

    iput-object p4, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->transcriptHistory:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;ZLcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;ILjava/lang/Object;)Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->show:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->language:Lcom/sightcall/livetranslation/domain/Language;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->transcriptHistory:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->copy(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;ZLcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;)Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    return-object p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->show:Z

    return p0
.end method

.method public final component3()Lcom/sightcall/livetranslation/domain/Language;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->language:Lcom/sightcall/livetranslation/domain/Language;

    return-object p0
.end method

.method public final component4()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->transcriptHistory:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;

    return-object p0
.end method

.method public final copy(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;ZLcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;)Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;-><init>(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;ZLcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;

    iget-object v1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    iget-object v3, p1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->show:Z

    iget-boolean v3, p1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->show:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->language:Lcom/sightcall/livetranslation/domain/Language;

    iget-object v3, p1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->language:Lcom/sightcall/livetranslation/domain/Language;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->transcriptHistory:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;

    iget-object p1, p1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->transcriptHistory:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFontSize()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    return-object p0
.end method

.method public final getLanguage()Lcom/sightcall/livetranslation/domain/Language;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->language:Lcom/sightcall/livetranslation/domain/Language;

    return-object p0
.end method

.method public final getShow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->show:Z

    return p0
.end method

.method public final getTranscriptHistory()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->transcriptHistory:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->show:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->language:Lcom/sightcall/livetranslation/domain/Language;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/sightcall/livetranslation/domain/Language;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->transcriptHistory:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->fontSize:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    iget-boolean v1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->show:Z

    iget-object v2, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->language:Lcom/sightcall/livetranslation/domain/Language;

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->transcriptHistory:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UpdateState(fontSize="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", show="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", language="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", transcriptHistory="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
