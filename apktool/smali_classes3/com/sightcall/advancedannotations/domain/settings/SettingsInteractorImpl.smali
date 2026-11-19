.class public final Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl$FetchSettingsFailure;,
        Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl$FetchSettingsSuccess;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001:\u0002\u001a\u001bB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nRS\u0010\u000b\u001aG\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0004\u0012\u00020\u0008\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100\u000f0\u000cj\u0008\u0012\u0004\u0012\u00020\u000e`\u0012\u00a2\u0006\u0002\u0008\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0015X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;",
        "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;",
        "repository",
        "Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;",
        "<init>",
        "(Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;)V",
        "actions",
        "Lio/reactivex/rxjava3/subjects/Subject;",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
        "getActions",
        "()Lio/reactivex/rxjava3/subjects/Subject;",
        "reducer",
        "Lkotlin/Function3;",
        "Lcom/sightcall/libraries/archi/nucleus/Nucleus;",
        "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;",
        "Lkotlin/Pair;",
        "Lcom/sightcall/libraries/archi/nucleus/Command;",
        "Lkotlin/ExtensionFunctionType;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusReducer;",
        "nucleus",
        "state",
        "Lio/reactivex/rxjava3/core/Observable;",
        "getState",
        "()Lio/reactivex/rxjava3/core/Observable;",
        "clear",
        "",
        "FetchSettingsSuccess",
        "FetchSettingsFailure",
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
.field private final actions:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final nucleus:Lcom/sightcall/libraries/archi/nucleus/Nucleus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/libraries/archi/nucleus/Nucleus<",
            "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;",
            ">;"
        }
    .end annotation
.end field

.field private final reducer:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/sightcall/libraries/archi/nucleus/Nucleus<",
            "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;",
            ">;",
            "Lkotlin/Pair<",
            "+",
            "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;",
            "+",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            "Lkotlin/Pair<",
            "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;>;"
        }
    .end annotation
.end field

.field private final repository:Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;

.field private final state:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;->repository:Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;

    new-instance p1, Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-direct {p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;-><init>()V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;->actions:Lio/reactivex/rxjava3/subjects/Subject;

    new-instance v3, Lxe0;

    const/16 p1, 0x10

    invoke-direct {v3, p0, p1}, Lxe0;-><init>(Ljava/lang/Object;I)V

    iput-object v3, p0, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;->reducer:Lkotlin/jvm/functions/Function3;

    new-instance v0, Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    sget-object p1, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Loading;->INSTANCE:Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Loading;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Single;->c(Ljava/lang/Object;)Lio/reactivex/rxjava3/internal/operators/single/SingleJust;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v2

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sightcall/libraries/archi/nucleus/Nucleus;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function5;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;->nucleus:Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    invoke-virtual {v0}, Lcom/sightcall/libraries/archi/nucleus/Nucleus;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;->state:Lio/reactivex/rxjava3/core/Observable;

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;Lcom/sightcall/libraries/archi/nucleus/Nucleus;Lkotlin/Pair;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;->reducer$lambda$0(Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;Lcom/sightcall/libraries/archi/nucleus/Nucleus;Lkotlin/Pair;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final reducer$lambda$0(Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;Lcom/sightcall/libraries/archi/nucleus/Nucleus;Lkotlin/Pair;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p1, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;

    sget-object p2, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$Start;->INSTANCE:Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$Start;

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Loading;->INSTANCE:Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Loading;

    goto :goto_0

    :cond_0
    instance-of v0, p3, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl$FetchSettingsSuccess;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Ready;

    move-object v0, p3

    check-cast v0, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl$FetchSettingsSuccess;

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl$FetchSettingsSuccess;->getSettings()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Ready;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    instance-of v0, p3, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl$FetchSettingsFailure;

    if-eqz v0, :cond_2

    new-instance p1, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Failure;

    move-object v0, p3

    check-cast v0, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl$FetchSettingsFailure;

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl$FetchSettingsFailure;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/sightcall/advancedannotations/domain/settings/FetchAnnotationSettings;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;->repository:Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;

    invoke-direct {p2, p0}, Lcom/sightcall/advancedannotations/domain/settings/FetchAnnotationSettings;-><init>(Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;)V

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/sightcall/libraries/archi/nucleus/NoCommand;->INSTANCE:Lcom/sightcall/libraries/archi/nucleus/NoCommand;

    :goto_1
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;->nucleus:Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/Nucleus;->clear()V

    return-void
.end method

.method public bridge synthetic getActions()Lio/reactivex/rxjava3/core/Observer;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object p0

    return-object p0
.end method

.method public getActions()Lio/reactivex/rxjava3/subjects/Subject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;->actions:Lio/reactivex/rxjava3/subjects/Subject;

    return-object p0
.end method

.method public getState()Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;->state:Lio/reactivex/rxjava3/core/Observable;

    return-object p0
.end method
