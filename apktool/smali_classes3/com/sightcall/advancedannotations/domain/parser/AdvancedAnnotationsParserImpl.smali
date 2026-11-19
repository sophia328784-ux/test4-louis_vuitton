.class public final Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser;
.implements Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$In;
.implements Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$Out;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0010H\u0016J\u0008\u0010\u001f\u001a\u00020\u0016H\u0016J\u000e\u0010 \u001a\u0004\u0018\u00010\u001a*\u00020\u0010H\u0002J\u000c\u0010!\u001a\u00020\"*\u00020\u001aH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR!\u0010\u000e\u001a\u0015\u0012\u000c\u0012\n \u0011*\u0004\u0018\u00010\u00100\u00100\u000f\u00a2\u0006\u0002\u0008\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0019X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001c\u00a8\u0006#"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;",
        "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser;",
        "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$In;",
        "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$Out;",
        "eventInterpreter",
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;",
        "senderIdGetter",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;",
        "<init>",
        "(Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)V",
        "localSenderId",
        "",
        "getLocalSenderId",
        "()I",
        "inBandMessages",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "disposables",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "parseMessage",
        "",
        "message",
        "annotationParameters",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;",
        "getAnnotationParameters",
        "()Lio/reactivex/rxjava3/core/Observable;",
        "messageCommands",
        "getMessageCommands",
        "clear",
        "unSerialize",
        "serialize",
        "",
        "advancedannotations_release"
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
.field private final annotationParameters:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final inBandMessages:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private final messageCommands:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private final senderIdGetter:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->senderIdGetter:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;

    new-instance p2, Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-direct {p2}, Lio/reactivex/rxjava3/subjects/PublishSubject;-><init>()V

    iput-object p2, p0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->inBandMessages:Lio/reactivex/rxjava3/subjects/PublishSubject;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$annotationParameters$1;

    invoke-direct {v0, p0}, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$annotationParameters$1;-><init>(Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/sightcall/libraries/rx/SubscriptionsKt;->filterIfPresent(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->replay(I)Lio/reactivex/rxjava3/observables/ConnectableObservable;

    move-result-object p2

    new-instance v0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$annotationParameters$2;

    invoke-direct {v0, p0}, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$annotationParameters$2;-><init>(Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/observables/ConnectableObservable;->c(Lio/reactivex/rxjava3/functions/Consumer;)V

    iput-object p2, p0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->annotationParameters:Lio/reactivex/rxjava3/core/Observable;

    invoke-interface {p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;->getAnnotationCommands()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object p2, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$messageCommands$1;->INSTANCE:Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$messageCommands$1;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$messageCommands$2;

    invoke-direct {p2, p0}, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$messageCommands$2;-><init>(Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->messageCommands:Lio/reactivex/rxjava3/core/Observable;

    return-void
.end method

.method public static final synthetic access$getDisposables$p(Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$serialize(Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->serialize(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$unSerialize(Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->unSerialize(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    move-result-object p0

    return-object p0
.end method

.method private final getLocalSenderId()I
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->senderIdGetter:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;

    invoke-interface {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;->getUserId()I

    move-result p0

    return p0
.end method

.method private final serialize(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getSenderId()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;

    move-result-object v0

    sget-object v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->getLocalSenderId()I

    move-result p0

    goto :goto_0

    :cond_0
    instance-of p0, v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Remote;

    if-eqz p0, :cond_c

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getSenderId()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;

    move-result-object p0

    check-cast p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Remote;

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Remote;->getId()I

    move-result p0

    :goto_0
    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "@"

    invoke-static {v0, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getAnnotationId()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;

    move-result-object v0

    sget-object v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$All;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$All;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x2a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_1

    :cond_1
    instance-of v0, v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getAnnotationId()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;

    move-result-object v0

    check-cast v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getDelete()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "D"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getResourceId()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-static {v1, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getLine()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParserKt;->serialize(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "L"

    invoke-static {v1, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getPosition()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParserKt;->serialize(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "P"

    invoke-static {v1, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getScale()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->isHundred()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->getPercentString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-static {v1, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getRotation()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;->getValue()I

    move-result v0

    if-eqz v0, :cond_8

    if-gez v0, :cond_7

    add-int/lit16 v0, v0, 0x168

    :cond_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "R"

    invoke-static {v1, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "C"

    invoke-static {v1, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_9
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getText()Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;->getPosition()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParserKt;->serialize(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "T"

    invoke-static {v1, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_a
    return-object p0

    :cond_b
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_c
    invoke-static {}, Lv40;->g()V

    return-object v2
.end method

.method private final unSerialize(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;
    .locals 28

    invoke-virtual/range {p1 .. p1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x40

    if-eq v0, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "@"

    invoke-static {v2, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/sightcall/advancedannotations/domain/parser/AnnotationParser;

    invoke-direct {v3}, Lcom/sightcall/advancedannotations/domain/parser/AnnotationParser;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/sightcall/advancedannotations/domain/parser/ResourceParser;

    invoke-direct {v4}, Lcom/sightcall/advancedannotations/domain/parser/ResourceParser;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/sightcall/advancedannotations/domain/parser/DeleteParser;

    invoke-direct {v5}, Lcom/sightcall/advancedannotations/domain/parser/DeleteParser;-><init>()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/sightcall/advancedannotations/domain/parser/PositionParser;

    invoke-direct {v6}, Lcom/sightcall/advancedannotations/domain/parser/PositionParser;-><init>()V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/sightcall/advancedannotations/domain/parser/LineParser;

    invoke-direct {v7}, Lcom/sightcall/advancedannotations/domain/parser/LineParser;-><init>()V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/sightcall/advancedannotations/domain/parser/ScaleParser;

    invoke-direct {v8}, Lcom/sightcall/advancedannotations/domain/parser/ScaleParser;-><init>()V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/sightcall/advancedannotations/domain/parser/RotationParser;

    invoke-direct {v9}, Lcom/sightcall/advancedannotations/domain/parser/RotationParser;-><init>()V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/sightcall/advancedannotations/domain/parser/ColorParser;

    invoke-direct {v10}, Lcom/sightcall/advancedannotations/domain/parser/ColorParser;-><init>()V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/sightcall/advancedannotations/domain/parser/TextParser;

    invoke-direct {v11}, Lcom/sightcall/advancedannotations/domain/parser/TextParser;-><init>()V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    :try_start_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v15}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;->getDelimiter()C

    move-result v15

    if-ne v12, v15, :cond_1

    goto :goto_2

    :catch_0
    const/16 p0, 0x0

    goto/16 :goto_5

    :cond_2
    const/16 p0, 0x0

    move-object/from16 v14, p0

    :goto_2
    check-cast v14, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;

    if-eqz v14, :cond_4

    invoke-virtual {v14, v0}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_3
    const/16 p0, 0x0

    :cond_4
    invoke-virtual {v3}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;->getParsedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;

    move-object v13, v0

    goto :goto_3

    :cond_5
    move-object/from16 v13, p0

    :goto_3
    invoke-virtual {v3}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;->getParsedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;

    move-object v15, v0

    goto :goto_4

    :cond_6
    move-object/from16 v15, p0

    :goto_4
    if-eqz v13, :cond_8

    if-eqz v15, :cond_8

    invoke-virtual {v4}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;->getParsedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    invoke-virtual {v5}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;->getParsedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_7
    move/from16 v16, v1

    invoke-virtual {v6}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;->getParsedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    invoke-virtual {v7}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;->getParsedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    invoke-virtual {v8}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;->getParsedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    invoke-virtual {v9}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;->getParsedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;

    invoke-virtual {v10}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;->getParsedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    invoke-virtual {v11}, Lcom/sightcall/advancedannotations/domain/parser/InstructionParser;->getParsedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;

    new-instance v12, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    const/16 v26, 0x32

    const/16 v27, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v27}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;ZLcom/sightcall/advancedannotations/domain/drawer/AnnotationId;ZZLkotlin/jvm/functions/Function0;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12

    :catch_1
    :cond_8
    :goto_5
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->d()V

    return-void
.end method

.method public getAnnotationParameters()Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->annotationParameters:Lio/reactivex/rxjava3/core/Observable;

    return-object p0
.end method

.method public getMessageCommands()Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->messageCommands:Lio/reactivex/rxjava3/core/Observable;

    return-object p0
.end method

.method public parseMessage(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->inBandMessages:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
