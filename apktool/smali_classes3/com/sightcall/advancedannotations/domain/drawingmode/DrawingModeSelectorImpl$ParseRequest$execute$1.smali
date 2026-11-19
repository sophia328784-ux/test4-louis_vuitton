.class final Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest$execute$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;->execute()Lio/reactivex/rxjava3/core/Single;
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
.field final synthetic this$0:Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest$execute$1;->this$0:Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;)Lcom/sightcall/libraries/archi/nucleus/Action;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Update;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest$execute$1;->this$0:Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;

    invoke-static {p0}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;->access$getGson$p(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;)Lcom/google/gson/Gson;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;->getJsonValue()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;

    invoke-virtual {p0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;

    invoke-direct {v0, p0}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Update;-><init>(Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest$execute$1;->apply(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;)Lcom/sightcall/libraries/archi/nucleus/Action;

    move-result-object p0

    return-object p0
.end method
