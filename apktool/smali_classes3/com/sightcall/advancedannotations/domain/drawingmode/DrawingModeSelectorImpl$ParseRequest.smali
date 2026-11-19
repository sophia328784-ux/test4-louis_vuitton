.class public final Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/libraries/archi/nucleus/Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;",
        "Lcom/sightcall/libraries/archi/nucleus/Command;",
        "request",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;",
        "<init>",
        "(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;)V",
        "gson",
        "Lcom/google/gson/Gson;",
        "kotlin.jvm.PlatformType",
        "execute",
        "Lio/reactivex/rxjava3/core/Single;",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
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
.field private final gson:Lcom/google/gson/Gson;

.field private final request:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;->request:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;

    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static final synthetic access$getGson$p(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;)Lcom/google/gson/Gson;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method


# virtual methods
.method public execute()Lio/reactivex/rxjava3/core/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Single<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;->request:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->c(Ljava/lang/Object;)Lio/reactivex/rxjava3/internal/operators/single/SingleJust;

    move-result-object v0

    new-instance v1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest$execute$1;

    invoke-direct {v1, p0}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest$execute$1;-><init>(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->d(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    move-result-object p0

    return-object p0
.end method
