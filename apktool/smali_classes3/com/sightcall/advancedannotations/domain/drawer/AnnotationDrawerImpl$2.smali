.class final Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
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


# instance fields
.field final synthetic this$0:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$2;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/sightcall/libraries/ui/ViewLayoutSizeChangeEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$2;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;

    invoke-static {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->access$updateAnnotationsLayout(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/sightcall/libraries/ui/ViewLayoutSizeChangeEvent;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$2;->accept(Lcom/sightcall/libraries/ui/ViewLayoutSizeChangeEvent;)V

    return-void
.end method
