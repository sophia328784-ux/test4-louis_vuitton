.class public final Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003J\u000f\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0003H\u00c6\u0003JC\u0010\u0016\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0003H\u00c6\u0001J\u0014\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u001a\u001a\u00020\u001bH\u00d6\u0081\u0004J\n\u0010\u001c\u001a\u00020\u001dH\u00d6\u0081\u0004R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\r\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
        "",
        "history",
        "",
        "Lcom/sightcall/livetranslation/domain/Sentence;",
        "liveMessages",
        "displaySettings",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;",
        "languages",
        "Lcom/sightcall/livetranslation/domain/Language;",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;)V",
        "getHistory",
        "()Ljava/util/List;",
        "getLiveMessages",
        "getDisplaySettings",
        "()Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;",
        "getLanguages",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
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
.field private final displaySettings:Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

.field private final history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Sentence;",
            ">;"
        }
    .end annotation
.end field

.field private final languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;"
        }
    .end annotation
.end field

.field private final liveMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Sentence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Sentence;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Sentence;",
            ">;",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->history:Ljava/util/List;

    iput-object p2, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->liveMessages:Ljava/util/List;

    iput-object p3, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->displaySettings:Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    iput-object p4, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->languages:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->history:Ljava/util/List;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->liveMessages:Ljava/util/List;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->displaySettings:Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->languages:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->copy(Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Sentence;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->history:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Sentence;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->liveMessages:Ljava/util/List;

    return-object p0
.end method

.method public final component3()Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->displaySettings:Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    return-object p0
.end method

.method public final component4()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->languages:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Sentence;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Sentence;",
            ">;",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;)",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    iget-object v1, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->history:Ljava/util/List;

    iget-object v3, p1, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->history:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->liveMessages:Ljava/util/List;

    iget-object v3, p1, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->liveMessages:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->displaySettings:Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    iget-object v3, p1, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->displaySettings:Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->languages:Ljava/util/List;

    iget-object p1, p1, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->languages:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDisplaySettings()Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->displaySettings:Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    return-object p0
.end method

.method public final getHistory()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Sentence;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->history:Ljava/util/List;

    return-object p0
.end method

.method public final getLanguages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->languages:Ljava/util/List;

    return-object p0
.end method

.method public final getLiveMessages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Sentence;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->liveMessages:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->history:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->liveMessages:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->displaySettings:Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    invoke-virtual {v2}, Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->languages:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->history:Ljava/util/List;

    iget-object v1, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->liveMessages:Ljava/util/List;

    iget-object v2, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->displaySettings:Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->languages:Ljava/util/List;

    const-string v3, ", liveMessages="

    const-string v4, ", displaySettings="

    const-string v5, "State(history="

    invoke-static {v5, v3, v4, v0, v1}, Lo60;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", languages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
