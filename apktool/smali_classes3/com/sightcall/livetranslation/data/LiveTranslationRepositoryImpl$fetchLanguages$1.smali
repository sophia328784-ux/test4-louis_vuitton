.class final Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl$fetchLanguages$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl;->fetchLanguages()Lio/reactivex/rxjava3/core/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl$fetchLanguages$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl$fetchLanguages$1<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl$fetchLanguages$1;

    invoke-direct {v0}, Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl$fetchLanguages$1;-><init>()V

    sput-object v0, Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl$fetchLanguages$1;->INSTANCE:Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl$fetchLanguages$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Lcom/sightcall/livetranslation/data/LanguageListEntity;

    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl$fetchLanguages$1;->apply(Lcom/sightcall/livetranslation/data/LanguageListEntity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final apply(Lcom/sightcall/livetranslation/data/LanguageListEntity;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/data/LanguageListEntity;",
            ")",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryKt;->access$mapToDomain(Lcom/sightcall/livetranslation/data/LanguageListEntity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
