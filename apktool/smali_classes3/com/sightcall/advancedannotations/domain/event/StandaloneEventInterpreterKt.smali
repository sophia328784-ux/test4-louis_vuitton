.class public final Lcom/sightcall/advancedannotations/domain/event/StandaloneEventInterpreterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u0018\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a(\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000cH\u0000\u001a(\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000cH\u0000\u001a(\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000cH\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "createStandalonePointer",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;",
        "localSenderId",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;",
        "position",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;",
        "mode",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;",
        "moveStandalonePointer",
        "createStandaloneLine",
        "annotationId",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;",
        "addStandaloneLinePosition",
        "completeStandaloneDrop",
        "advancedannotations_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final addStandaloneLinePosition(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    new-instance v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    invoke-virtual/range {p3 .. p3}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v13

    const/16 v15, 0x16fa

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v16}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;ZLcom/sightcall/advancedannotations/domain/drawer/AnnotationId;ZZLkotlin/jvm/functions/Function0;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;-><init>(ZZLcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V

    return-object v0
.end method

.method public static final completeStandaloneDrop(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    invoke-virtual/range {p3 .. p3}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v13

    new-instance v8, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;-><init>(I)V

    move v2, v1

    new-instance v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    const/16 v15, 0x173a

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v16}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;ZLcom/sightcall/advancedannotations/domain/drawer/AnnotationId;ZZLkotlin/jvm/functions/Function0;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;-><init>(ZZLcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V

    return-object v0
.end method

.method public static final createStandaloneLine(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    new-instance v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    invoke-virtual/range {p3 .. p3}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v13

    const/16 v15, 0x16fa

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v16}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;ZLcom/sightcall/advancedannotations/domain/drawer/AnnotationId;ZZLkotlin/jvm/functions/Function0;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;-><init>(ZZLcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V

    return-object v0
.end method

.method public static final createStandalonePointer(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    new-instance v4, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;-><init>(I)V

    new-instance v8, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    invoke-direct {v8, v1}, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;-><init>(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v13

    new-instance v11, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    const/16 v2, 0x64

    invoke-direct {v11, v2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;-><init>(I)V

    move v2, v1

    new-instance v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    const/16 v15, 0x153a

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v16}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;ZLcom/sightcall/advancedannotations/domain/drawer/AnnotationId;ZZLkotlin/jvm/functions/Function0;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;-><init>(ZZLcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V

    return-object v0
.end method

.method public static final moveStandalonePointer(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    new-instance v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    new-instance v4, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;-><init>(I)V

    const/16 v15, 0x1f7a

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v16}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;ZLcom/sightcall/advancedannotations/domain/drawer/AnnotationId;ZZLkotlin/jvm/functions/Function0;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;-><init>(ZZLcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V

    return-object v0
.end method
