.class final Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$state$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V
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
.field final synthetic this$0:Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$state$1;->this$0:Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;)Lcom/sightcall/libraries/rx/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;",
            ")",
            "Lcom/sightcall/libraries/rx/Optional<",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/sightcall/libraries/rx/Optional;->Companion:Lcom/sightcall/libraries/rx/Optional$Companion;

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;->getWriteMode()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$state$1;->this$0:Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;

    new-instance v2, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;

    invoke-static {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;->access$detectMode(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;)Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;-><init>(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/sightcall/libraries/rx/Optional$Companion;->ofNullable(Ljava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$state$1;->apply(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;)Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    return-object p0
.end method
