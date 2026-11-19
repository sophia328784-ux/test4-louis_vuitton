.class public final Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;,
        Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Parse;,
        Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;,
        Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$SetStandaloneMode;,
        Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$SetUpdateCapability;,
        Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Update;,
        Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u00002\u00020\u0001:\u0006123456B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020&H\u0016J\u000e\u0010\'\u001a\u0004\u0018\u00010(*\u00020\u000eH\u0002J\u000c\u0010)\u001a\u00020\u000e*\u00020\u000eH\u0002J\u0016\u0010*\u001a\u00020\u000e*\u00020\u000e2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0002J\u0016\u0010-\u001a\u00020\u000e*\u00020\u000e2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0002J\u0016\u0010.\u001a\u00020\u000e*\u00020\u000e2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0002J\u0014\u0010/\u001a\u00020\u000e*\u00020\u000e2\u0006\u0010%\u001a\u00020&H\u0002J\u0014\u00100\u001a\u00020\u000e*\u00020\u000e2\u0006\u0010\"\u001a\u00020#H\u0002R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nRS\u0010\u000b\u001aG\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0004\u0012\u00020\u0008\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100\u000f0\u000cj\u0008\u0012\u0004\u0012\u00020\u000e`\u0012\u00a2\u0006\u0002\u0008\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u00067"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;",
        "initialPointerColor",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;",
        "<init>",
        "(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V",
        "actions",
        "Lio/reactivex/rxjava3/subjects/Subject;",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
        "getActions",
        "()Lio/reactivex/rxjava3/subjects/Subject;",
        "reducer",
        "Lkotlin/Function3;",
        "Lcom/sightcall/libraries/archi/nucleus/Nucleus;",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;",
        "Lkotlin/Pair;",
        "Lcom/sightcall/libraries/archi/nucleus/Command;",
        "Lkotlin/ExtensionFunctionType;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusReducer;",
        "reduceStateForConfigurationUpdate",
        "state",
        "configuration",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;",
        "nucleus",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;",
        "getState",
        "()Lio/reactivex/rxjava3/core/Observable;",
        "clear",
        "",
        "selectDrivenMode",
        "request",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;",
        "selectUpdateCapability",
        "capability",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;",
        "selectStandaloneMode",
        "mode",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;",
        "detectMode",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;",
        "reduceDrivenNone",
        "reduceDrivenPointer",
        "params",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;",
        "reduceDrivenDraw",
        "reduceDrivenDrop",
        "reduceStandaloneMode",
        "reduceUpdateCapability",
        "SetUpdateCapability",
        "Update",
        "Parse",
        "SetStandaloneMode",
        "ParseRequest",
        "Configurations",
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
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;",
            ">;"
        }
    .end annotation
.end field

.field private final reducer:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/sightcall/libraries/archi/nucleus/Nucleus<",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;",
            ">;",
            "Lkotlin/Pair<",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;",
            "+",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            "Lkotlin/Pair<",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;>;"
        }
    .end annotation
.end field

.field private final state:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-direct {v1}, Lio/reactivex/rxjava3/subjects/PublishSubject;-><init>()V

    iput-object v1, v0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->actions:Lio/reactivex/rxjava3/subjects/Subject;

    new-instance v5, Ld3;

    const/16 v1, 0x11

    invoke-direct {v5, v0, v1}, Ld3;-><init>(Ljava/lang/Object;I)V

    iput-object v5, v0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->reducer:Lkotlin/jvm/functions/Function3;

    new-instance v2, Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    new-instance v6, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, p1

    move-object/from16 v15, p1

    invoke-direct/range {v6 .. v17}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;-><init>(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;)V

    invoke-static {v6}, Lio/reactivex/rxjava3/core/Single;->c(Ljava/lang/Object;)Lio/reactivex/rxjava3/internal/operators/single/SingleJust;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->getActions()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object v4

    const/16 v8, 0x18

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sightcall/libraries/archi/nucleus/Nucleus;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function5;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->nucleus:Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    invoke-virtual {v2}, Lcom/sightcall/libraries/archi/nucleus/Nucleus;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$state$1;

    invoke-direct {v2, v0}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$state$1;-><init>(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/sightcall/libraries/rx/SubscriptionsKt;->filterIfPresent(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    iput-object v1, v0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->state:Lio/reactivex/rxjava3/core/Observable;

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;Lcom/sightcall/libraries/archi/nucleus/Nucleus;Lkotlin/Pair;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->reducer$lambda$0(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;Lcom/sightcall/libraries/archi/nucleus/Nucleus;Lkotlin/Pair;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$detectMode(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->detectMode(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private final detectMode(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;
    .locals 5

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->getWriteMode()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    :goto_0
    const/4 v1, 0x0

    if-eq p0, v0, :cond_b

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p0, v3, :cond_6

    if-ne p0, v2, :cond_5

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->getStandaloneMode()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;

    move-result-object p0

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v4, p0

    :goto_1
    if-eq p0, v0, :cond_4

    if-eq p0, v3, :cond_3

    if-ne p0, v2, :cond_2

    new-instance p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->getStandaloneDrawDropColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V

    return-object p0

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_3
    new-instance p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->getStandalonePointerColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V

    return-object p0

    :cond_4
    return-object v1

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_6
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->getDrivenMode()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;

    move-result-object p0

    if-nez p0, :cond_7

    move p0, v0

    goto :goto_2

    :cond_7
    sget-object v4, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v4, p0

    :goto_2
    if-eq p0, v0, :cond_b

    if-eq p0, v3, :cond_b

    if-eq p0, v2, :cond_a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-ne p0, v0, :cond_8

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->validDrivenDrop()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_9
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->validDrivenDraw()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->validDrivenPointer()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v1
.end method

.method private final reduceDrivenDraw(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;
    .locals 14

    sget-object v8, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;->Draw:Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;->getColor()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    invoke-direct {v0, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->getDrivenDrawColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/16 v12, 0x76f

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v13}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->copy$default(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;ILjava/lang/Object;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    move-result-object p0

    return-object p0
.end method

.method private final reduceDrivenDrop(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;
    .locals 14

    sget-object v8, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;->Drop:Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;->getColor()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    invoke-direct {v0, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->getDrivenDropColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;->getResourceId()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    invoke-direct {v0, p0}, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;-><init>(I)V

    :goto_2
    move-object v7, v0

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->getDrivenDropResourceId()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    move-result-object v0

    goto :goto_2

    :goto_3
    const/16 v12, 0x71f

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v13}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->copy$default(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;ILjava/lang/Object;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    move-result-object p0

    return-object p0
.end method

.method private final reduceDrivenNone(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;
    .locals 14

    sget-object v8, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;->None:Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;

    const/16 v12, 0x77f

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v13}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->copy$default(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;ILjava/lang/Object;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    move-result-object p0

    return-object p0
.end method

.method private final reduceDrivenPointer(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;
    .locals 14

    sget-object v8, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;->Pointer:Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;->getColor()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    invoke-direct {v0, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->getDrivenPointerColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;->getResourceId()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    invoke-direct {v0, p0}, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;-><init>(I)V

    :goto_2
    move-object v3, v0

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->getDrivenPointerResourceId()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    move-result-object v0

    goto :goto_2

    :goto_3
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;->getScale()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    mul-int/lit8 p0, p0, 0x8

    invoke-direct {v0, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;-><init>(I)V

    :goto_4
    move-object v4, v0

    goto :goto_5

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->getDrivenPointerScale()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    move-result-object v0

    goto :goto_4

    :goto_5
    const/16 v12, 0x771

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v13}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->copy$default(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;ILjava/lang/Object;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    move-result-object p0

    return-object p0
.end method

.method private final reduceStandaloneMode(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;
    .locals 14

    const/16 v12, 0x3ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p1

    move-object/from16 v11, p2

    invoke-static/range {v0 .. v13}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->copy$default(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;ILjava/lang/Object;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    move-result-object p0

    return-object p0
.end method

.method private final reduceStateForConfigurationUpdate(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;
    .locals 2

    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;->getMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "none"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->reduceDrivenNone(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    move-result-object p0

    return-object p0

    :sswitch_1
    const-string v1, "drop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;->getParams()Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->reduceDrivenDrop(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    move-result-object p0

    return-object p0

    :sswitch_2
    const-string v1, "draw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;->getParams()Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->reduceDrivenDraw(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    move-result-object p0

    return-object p0

    :sswitch_3
    const-string v1, "pointer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    return-object p1

    :cond_3
    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;->getParams()Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->reduceDrivenPointer(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x17e0c1c3 -> :sswitch_3
        0x2f2d44 -> :sswitch_2
        0x2f2eef -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch
.end method

.method private final reduceUpdateCapability(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;
    .locals 14

    const/16 v12, 0x7fe

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v13}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->copy$default(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;ILjava/lang/Object;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    move-result-object p0

    return-object p0
.end method

.method private static final reducer$lambda$0(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;Lcom/sightcall/libraries/archi/nucleus/Nucleus;Lkotlin/Pair;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    instance-of p2, p3, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Update;

    if-eqz p2, :cond_0

    move-object p2, p3

    check-cast p2, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Update;

    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Update;->getConfiguration()Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->reduceStateForConfigurationUpdate(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of p2, p3, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$SetUpdateCapability;

    if-eqz p2, :cond_1

    move-object p2, p3

    check-cast p2, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$SetUpdateCapability;

    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$SetUpdateCapability;->getCapability()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->reduceUpdateCapability(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of p2, p3, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$SetStandaloneMode;

    if-eqz p2, :cond_2

    move-object p2, p3

    check-cast p2, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$SetStandaloneMode;

    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$SetStandaloneMode;->getMode()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->reduceStandaloneMode(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    move-result-object p1

    :cond_2
    :goto_0
    instance-of p0, p3, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Parse;

    if-eqz p0, :cond_3

    new-instance p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;

    check-cast p3, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Parse;

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Parse;->getRequest()Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;-><init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;)V

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/sightcall/libraries/archi/nucleus/NoCommand;->INSTANCE:Lcom/sightcall/libraries/archi/nucleus/NoCommand;

    :goto_1
    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->nucleus:Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/Nucleus;->clear()V

    return-void
.end method

.method public bridge synthetic getActions()Lio/reactivex/rxjava3/core/Observer;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->getActions()Lio/reactivex/rxjava3/subjects/Subject;

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
    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->actions:Lio/reactivex/rxjava3/subjects/Subject;

    return-object p0
.end method

.method public getState()Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->state:Lio/reactivex/rxjava3/core/Observable;

    return-object p0
.end method

.method public selectDrivenMode(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->getActions()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object p0

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Parse;

    invoke-direct {v0, p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Parse;-><init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;)V

    invoke-interface {p0, v0}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public selectStandaloneMode(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->getActions()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object p0

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$SetStandaloneMode;

    invoke-direct {v0, p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$SetStandaloneMode;-><init>(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;)V

    invoke-interface {p0, v0}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public selectUpdateCapability(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->getActions()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object p0

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$SetUpdateCapability;

    invoke-direct {v0, p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$SetUpdateCapability;-><init>(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;)V

    invoke-interface {p0, v0}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method
