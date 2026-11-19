.class final Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;-><init>(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$Out;Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lio/reactivex/rxjava3/core/Scheduler;)V
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
.field public static final INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$2<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$2;

    invoke-direct {v0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$2;-><init>()V

    sput-object v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$2;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;->getParameters()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$2;->apply(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    move-result-object p0

    return-object p0
.end method
