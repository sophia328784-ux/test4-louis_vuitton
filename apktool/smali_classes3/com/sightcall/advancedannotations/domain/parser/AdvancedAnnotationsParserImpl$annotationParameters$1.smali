.class final Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$annotationParameters$1;
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

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$annotationParameters$1;->this$0:Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;)Lcom/sightcall/libraries/rx/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;",
            ")",
            "Lcom/sightcall/libraries/rx/Optional<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sightcall/libraries/rx/Optional;->Companion:Lcom/sightcall/libraries/rx/Optional$Companion;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$annotationParameters$1;->this$0:Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;->access$unSerialize(Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sightcall/libraries/rx/Optional$Companion;->ofNullable(Ljava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl$annotationParameters$1;->apply(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;)Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    return-object p0
.end method
