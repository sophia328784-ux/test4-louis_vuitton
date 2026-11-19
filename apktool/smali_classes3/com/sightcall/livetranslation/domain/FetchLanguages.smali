.class public final Lcom/sightcall/livetranslation/domain/FetchLanguages;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/libraries/archi/nucleus/Command;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/domain/FetchLanguages;",
        "Lcom/sightcall/libraries/archi/nucleus/Command;",
        "repository",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;",
        "<init>",
        "(Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;)V",
        "execute",
        "Lio/reactivex/rxjava3/core/Single;",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
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
.field private final repository:Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;


# direct methods
.method public constructor <init>(Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/domain/FetchLanguages;->repository:Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;)Lcom/sightcall/libraries/archi/nucleus/Action;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/livetranslation/domain/FetchLanguages;->execute$lambda$0(Ljava/lang/Throwable;)Lcom/sightcall/libraries/archi/nucleus/Action;

    move-result-object p0

    return-object p0
.end method

.method private static final execute$lambda$0(Ljava/lang/Throwable;)Lcom/sightcall/libraries/archi/nucleus/Action;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$FetchLanguagesFailure;

    invoke-direct {v0, p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$FetchLanguagesFailure;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public execute()Lio/reactivex/rxjava3/core/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Single<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/domain/FetchLanguages;->repository:Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;

    invoke-interface {p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;->fetchLanguages()Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->b:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "scheduler is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleSubscribeOn;

    invoke-direct {v1, p0, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleSubscribeOn;-><init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/core/Scheduler;)V

    sget-object p0, Lcom/sightcall/livetranslation/domain/FetchLanguages$execute$1;->INSTANCE:Lcom/sightcall/livetranslation/domain/FetchLanguages$execute$1;

    invoke-virtual {v1, p0}, Lio/reactivex/rxjava3/core/Single;->d(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    move-result-object p0

    new-instance v0, Lmt;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lmt;-><init>(I)V

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;-><init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)V

    return-object v1
.end method
