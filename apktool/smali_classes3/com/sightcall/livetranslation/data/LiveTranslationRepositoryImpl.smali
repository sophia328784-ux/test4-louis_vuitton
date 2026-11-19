.class public final Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0014\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl;",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;",
        "api",
        "Lcom/sightcall/livetranslation/data/API;",
        "liveTranslationUrl",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;",
        "<init>",
        "(Lcom/sightcall/livetranslation/data/API;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)V",
        "fetchLanguages",
        "Lio/reactivex/rxjava3/core/Single;",
        "",
        "Lcom/sightcall/livetranslation/domain/Language;",
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
.field private final api:Lcom/sightcall/livetranslation/data/API;

.field private final liveTranslationUrl:Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;


# direct methods
.method public constructor <init>(Lcom/sightcall/livetranslation/data/API;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl;->api:Lcom/sightcall/livetranslation/data/API;

    iput-object p2, p0, Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl;->liveTranslationUrl:Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;

    return-void
.end method


# virtual methods
.method public fetchLanguages()Lio/reactivex/rxjava3/core/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Single<",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl;->api:Lcom/sightcall/livetranslation/data/API;

    iget-object p0, p0, Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl;->liveTranslationUrl:Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sightcall/livetranslation/data/API;->fetchLanguage(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    sget-object v0, Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl$fetchLanguages$1;->INSTANCE:Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl$fetchLanguages$1;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->d(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    move-result-object p0

    return-object p0
.end method
