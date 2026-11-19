.class public final Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;
.super Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$FetchLanguagesFailure;,
        Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$FetchLanguagesSuccess;,
        Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Hide;,
        Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$SetFontSize;,
        Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
        ">;",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0005 !\"#$B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ&\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002J\u0008\u0010\u001b\u001a\u00020\rH\u0016J\u0008\u0010\u001c\u001a\u00020\rH\u0016J\u0008\u0010\u001d\u001a\u00020\rH\u0016J\u0008\u0010\u001e\u001a\u00020\rH\u0016J\u0008\u0010\u001f\u001a\u00020\rH\u0016R5\u0010\n\u001a#\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bj\u0008\u0012\u0004\u0012\u00020\u0002`\u000f\u00a2\u0006\u0002\u0008\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006%"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor;",
        "settings",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;",
        "repository",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;",
        "<init>",
        "(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;)V",
        "reducerConfigurator",
        "Lkotlin/Function1;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerConfigurator;",
        "getReducerConfigurator",
        "()Lkotlin/jvm/functions/Function1;",
        "createSentence",
        "Lcom/sightcall/livetranslation/domain/Sentence;",
        "message",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;",
        "pid",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;",
        "colors",
        "",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;",
        "start",
        "stop",
        "selectSmallSize",
        "selectMediumSize",
        "selectLargeSize",
        "Show",
        "Hide",
        "SetFontSize",
        "FetchLanguagesSuccess",
        "FetchLanguagesFailure",
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
.field private final reducerConfigurator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorKt;->access$toInitialState(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;-><init>(Ljava/lang/Object;)V

    new-instance v0, Ljx;

    const/16 v1, 0xf

    invoke-direct {v0, p0, p1, p2, v1}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->reducerConfigurator:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final createSentence(Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;Ljava/util/List;)Lcom/sightcall/livetranslation/domain/Sentence;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;",
            ">;)",
            "Lcom/sightcall/livetranslation/domain/Sentence;"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;

    const-string p2, "#FFFF00"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;->getValue()I

    move-result p0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    rem-int/2addr p0, p2

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;

    :goto_0
    new-instance p2, Lcom/sightcall/livetranslation/domain/Sentence;

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/sightcall/livetranslation/domain/Sentence;-><init>(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;)V

    return-object p2
.end method

.method public static synthetic d(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->reducerConfigurator$lambda$0(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->reducerConfigurator$lambda$0$0(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->reducerConfigurator$lambda$0$4(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$SetFontSize;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->reducerConfigurator$lambda$0$1(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$SetFontSize;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$Enable;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->reducerConfigurator$lambda$0$5(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$Enable;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$FetchLanguagesSuccess;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->reducerConfigurator$lambda$0$8(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$FetchLanguagesSuccess;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Hide;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->reducerConfigurator$lambda$0$6(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Hide;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SelectLanguage;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->reducerConfigurator$lambda$0$2(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SelectLanguage;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$GetLanguageList;)Lcom/sightcall/libraries/archi/nucleus/Command;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->reducerConfigurator$lambda$0$7(Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$GetLanguageList;)Lcom/sightcall/libraries/archi/nucleus/Command;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SentenceTimedOut;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->reducerConfigurator$lambda$0$3(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SentenceTimedOut;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$FetchLanguagesFailure;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->reducerConfigurator$lambda$0$9(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$FetchLanguagesFailure;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;)Lkotlin/Unit;
    .locals 4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lrs;

    const/16 v3, 0x1b

    invoke-direct {v2, p0, p1, v3}, Lrs;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p3, v1, v2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesBoth(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    const-class p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$SetFontSize;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    new-instance p1, Lcom/sightcall/livetranslation/domain/a;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/sightcall/livetranslation/domain/a;-><init>(I)V

    invoke-virtual {p3, p0, p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesState(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    const-class p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SelectLanguage;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    new-instance p1, Ln50;

    const/16 v1, 0x8

    invoke-direct {p1, v1}, Ln50;-><init>(I)V

    invoke-virtual {p3, p0, p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesState(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    const-class p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SentenceTimedOut;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    new-instance p1, Ln50;

    const/16 v2, 0x9

    invoke-direct {p1, v2}, Ln50;-><init>(I)V

    invoke-virtual {p3, p0, p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesState(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    const-class p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    new-instance p1, Lcom/sightcall/livetranslation/domain/a;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Lcom/sightcall/livetranslation/domain/a;-><init>(I)V

    invoke-virtual {p3, p0, p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesState(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    const-class p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$Enable;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    new-instance p1, Ln50;

    const/16 v2, 0xa

    invoke-direct {p1, v2}, Ln50;-><init>(I)V

    invoke-virtual {p3, p0, p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesState(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    const-class p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Hide;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    new-instance p1, Lcom/sightcall/livetranslation/domain/a;

    const/4 v2, 0x2

    invoke-direct {p1, v2}, Lcom/sightcall/livetranslation/domain/a;-><init>(I)V

    invoke-virtual {p3, p0, p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesState(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    const-class p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$GetLanguageList;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    new-instance p1, Lw20;

    invoke-direct {p1, p2, v1}, Lw20;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, p0, p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesCommand(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    const-class p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$FetchLanguagesSuccess;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    new-instance p1, Ln50;

    const/16 p2, 0xb

    invoke-direct {p1, p2}, Ln50;-><init>(I)V

    invoke-virtual {p3, p0, p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesState(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    const-class p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$FetchLanguagesFailure;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    new-instance p1, Ln50;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Ln50;-><init>(I)V

    invoke-virtual {p3, p0, p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesState(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$0(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;)Lkotlin/Pair;
    .locals 7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->getMessage()Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;->getPid()Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;

    move-result-object p3

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;->getColors()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p3, v1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->createSentence(Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;Ljava/util/List;)Lcom/sightcall/livetranslation/domain/Sentence;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->getLiveMessages()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->z0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->getHistory()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->z0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p2

    new-instance p3, Lcom/sightcall/livetranslation/domain/TimeOutSentence;

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;->getSentenceTimeOut()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Lcom/sightcall/livetranslation/domain/TimeOutSentence;-><init>(Lcom/sightcall/livetranslation/domain/Sentence;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;)V

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$1(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$SetFontSize;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->getDisplaySettings()Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$SetFontSize;->getFontSize()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    move-result-object v2

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;->copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;ZLcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;Lcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    move-result-object v10

    const/16 v12, 0xb

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v13}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$2(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SelectLanguage;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->getDisplaySettings()Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SelectLanguage;->getLanguage()Lcom/sightcall/livetranslation/domain/Language;

    move-result-object v3

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;->copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;ZLcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;Lcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    move-result-object v10

    const/16 v12, 0xb

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v13}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$3(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SentenceTimedOut;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->getLiveMessages()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->z0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SentenceTimedOut;->getSentence()Lcom/sightcall/livetranslation/domain/Sentence;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$4(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->getDisplaySettings()Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    move-result-object v0

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;->copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;ZLcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;Lcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    move-result-object v10

    const/16 v12, 0xb

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v13}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$5(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$Enable;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->getDisplaySettings()Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$Enable;->isEnable()Z

    move-result v1

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;->copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;ZLcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;Lcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    move-result-object v10

    const/16 v12, 0xb

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v13}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$6(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Hide;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->getDisplaySettings()Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    move-result-object v0

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;->copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;ZLcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;Lcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    move-result-object v10

    const/16 v12, 0xb

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v13}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$7(Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$GetLanguageList;)Lcom/sightcall/libraries/archi/nucleus/Command;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/sightcall/livetranslation/domain/FetchLanguages;

    invoke-direct {p1, p0}, Lcom/sightcall/livetranslation/domain/FetchLanguages;-><init>(Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;)V

    return-object p1
.end method

.method private static final reducerConfigurator$lambda$0$8(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$FetchLanguagesSuccess;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$FetchLanguagesSuccess;->getLanguages()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$9(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$FetchLanguagesFailure;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/livetranslation/domain/LanguagesKt;->getDefaultLanguages()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;->copy$default(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;ILjava/lang/Object;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getReducerConfigurator()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->reducerConfigurator:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public selectLargeSize()V
    .locals 2

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p0

    new-instance v0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$SetFontSize;

    sget-object v1, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;->Large:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    invoke-direct {v0, v1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$SetFontSize;-><init>(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public selectMediumSize()V
    .locals 2

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p0

    new-instance v0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$SetFontSize;

    sget-object v1, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;->Medium:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    invoke-direct {v0, v1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$SetFontSize;-><init>(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public selectSmallSize()V
    .locals 2

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p0

    new-instance v0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$SetFontSize;

    sget-object v1, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;->Small:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    invoke-direct {v0, v1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$SetFontSize;-><init>(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public start()V
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p0

    sget-object v0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;->INSTANCE:Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p0

    sget-object v0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Hide;->INSTANCE:Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Hide;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
