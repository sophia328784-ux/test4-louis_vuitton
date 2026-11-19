.class final Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPIImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPIImpl;-><init>(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawer;Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;)V
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
.field final synthetic this$0:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPIImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPIImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPIImpl$2;->this$0:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPIImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPIImpl$2;->this$0:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPIImpl;

    invoke-static {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPIImpl;->access$getMessageSender$p(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPIImpl;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;->processMessage(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPIImpl$2;->accept(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;)V

    return-void
.end method
