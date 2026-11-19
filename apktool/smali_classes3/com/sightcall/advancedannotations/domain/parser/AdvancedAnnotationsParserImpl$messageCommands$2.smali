.class final Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$messageCommands$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;-><init>(Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)V
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


# instance fields
.field final synthetic this$0:Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$messageCommands$2;->this$0:Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$messageCommands$2;->this$0:Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;->getParameters()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->access$serialize(Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$messageCommands$2;->apply(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;

    move-result-object p0

    return-object p0
.end method
