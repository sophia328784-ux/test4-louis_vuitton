.class public final Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0014\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000bH\u0016J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;",
        "Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;",
        "api",
        "Lcom/sightcall/advancedannotations/data/API;",
        "settingsUrl",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Lcom/sightcall/advancedannotations/data/API;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;Landroid/content/Context;)V",
        "fetchSettings",
        "Lio/reactivex/rxjava3/core/Single;",
        "",
        "Lcom/sightcall/advancedannotations/domain/settings/Setting;",
        "parseLocalFile",
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
.field private final api:Lcom/sightcall/advancedannotations/data/API;

.field private final context:Landroid/content/Context;

.field private final settingsUrl:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/data/API;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;->api:Lcom/sightcall/advancedannotations/data/API;

    iput-object p2, p0, Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;->settingsUrl:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;

    iput-object p3, p0, Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;->fetchSettings$lambda$1(Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final fetchSettings$lambda$1(Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;->parseLocalFile()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final parseLocalFile()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/advancedannotations/domain/settings/Setting;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object p0, p0, Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "default/annotations.json"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/io/ByteStreamsKt;->b(Ljava/io/InputStream;)[B

    move-result-object p0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-class p0, Lcom/sightcall/advancedannotations/data/AnnotationSettingsEntity;

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/sightcall/advancedannotations/data/AnnotationSettingsEntity;

    invoke-static {p0}, Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryKt;->access$mapToDomain(Lcom/sightcall/advancedannotations/data/AnnotationSettingsEntity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fetchSettings()Lio/reactivex/rxjava3/core/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Single<",
            "Ljava/util/List<",
            "Lcom/sightcall/advancedannotations/domain/settings/Setting;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;->settingsUrl:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;->api:Lcom/sightcall/advancedannotations/data/API;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/sightcall/advancedannotations/data/API;->fetchSettings(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl$fetchSettings$1$1;->INSTANCE:Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl$fetchSettings$1$1;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->d(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    new-instance v0, Ln2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ln2;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFromCallable;

    invoke-direct {p0, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0
.end method
