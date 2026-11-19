.class final Lcom/sightcall/advancedannotations/domain/settings/FetchAnnotationSettings$execute$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/advancedannotations/domain/settings/FetchAnnotationSettings;->execute()Lio/reactivex/rxjava3/core/Single;
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
.field public static final INSTANCE:Lcom/sightcall/advancedannotations/domain/settings/FetchAnnotationSettings$execute$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/advancedannotations/domain/settings/FetchAnnotationSettings$execute$1<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/advancedannotations/domain/settings/FetchAnnotationSettings$execute$1;

    invoke-direct {v0}, Lcom/sightcall/advancedannotations/domain/settings/FetchAnnotationSettings$execute$1;-><init>()V

    sput-object v0, Lcom/sightcall/advancedannotations/domain/settings/FetchAnnotationSettings$execute$1;->INSTANCE:Lcom/sightcall/advancedannotations/domain/settings/FetchAnnotationSettings$execute$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/util/List;)Lcom/sightcall/libraries/archi/nucleus/Action;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/advancedannotations/domain/settings/Setting;",
            ">;)",
            "Lcom/sightcall/libraries/archi/nucleus/Action;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl$FetchSettingsSuccess;

    invoke-direct {p0, p1}, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl$FetchSettingsSuccess;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/settings/FetchAnnotationSettings$execute$1;->apply(Ljava/util/List;)Lcom/sightcall/libraries/archi/nucleus/Action;

    move-result-object p0

    return-object p0
.end method
