.class public final Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u0018\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a(\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000cH\u0000\u001a(\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000cH\u0000\u001a(\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000fH\u0000\u001aB\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0000\u001aB\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0000\u001a \u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0000\u001a;\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00182!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u0018\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020 0\u001dH\u0000\u001a\u001c\u0010!\u001a\u00020\"*\u00020#2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0005H\u0002\u001a$\u0010&\u001a\u00020\'*\u00020#2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u00a8\u0006("
    }
    d2 = {
        "createDrivenPointer",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;",
        "localSenderId",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;",
        "position",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;",
        "mode",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;",
        "moveDrivenPointer",
        "createDrivenLine",
        "annotationId",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;",
        "addDrivenLinePosition",
        "createDrivenDrop",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;",
        "moveDrivenDrop",
        "initialPosition",
        "setting",
        "Lcom/sightcall/advancedannotations/domain/settings/Setting;",
        "view",
        "Landroid/view/ViewGroup;",
        "completeDrivenDrop",
        "delete",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;",
        "transmit",
        "",
        "fadeOut",
        "completion",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "",
        "computeRotation",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;",
        "Landroid/view/View;",
        "source",
        "dest",
        "computeScale",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;",
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
.method public static synthetic a(Lkotlin/jvm/functions/Function1;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->fadeOut$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final addDrivenLinePosition(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    new-instance v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    invoke-virtual/range {p3 .. p3}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

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

.method public static final completeDrivenDrop(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;Lcom/sightcall/advancedannotations/domain/settings/Setting;Landroid/view/ViewGroup;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 16

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v8, :cond_0

    invoke-static {v2, v8, v0, v1}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->computeScale(Landroid/view/View;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/settings/Setting;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;-><init>(I)V

    :goto_0
    invoke-virtual {v3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static {v3, v4, v0}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->delete(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;Z)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    const/4 v5, 0x0

    if-eqz v8, :cond_2

    invoke-static {v2, v8, v0}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->computeRotation(Landroid/view/View;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;

    move-result-object v6

    move-object v11, v6

    goto :goto_1

    :cond_2
    move-object v11, v5

    :goto_1
    if-eqz v8, :cond_3

    invoke-static {v2, v8, v0, v1}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->computeScale(Landroid/view/View;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/settings/Setting;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    move-result-object v5

    :cond_3
    move-object v10, v5

    invoke-virtual/range {p4 .. p4}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->getResourceId()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    move-result-object v7

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    const/16 v14, 0x113a

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v1, v3

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v15}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;ZLcom/sightcall/advancedannotations/domain/drawer/AnnotationId;ZZLkotlin/jvm/functions/Function0;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2, v0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;-><init>(ZZLcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V

    return-object v1
.end method

.method private static final computeRotation(Landroid/view/View;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;
    .locals 3

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;

    invoke-static {p2, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->yFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F

    move-result v1

    invoke-static {p1, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->yFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {p2, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->xFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F

    move-result p2

    invoke-static {p1, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->xFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F

    move-result p0

    sub-float/2addr p2, p0

    float-to-double p0, p2

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/math/MathKt;->b(D)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;-><init>(I)V

    return-object v0
.end method

.method private static final computeScale(Landroid/view/View;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/settings/Setting;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;
    .locals 4

    invoke-static {p2, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->xFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F

    move-result v0

    invoke-static {p1, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->xFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {p2, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->yFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F

    move-result p2

    invoke-static {p1, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->yFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F

    move-result p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/settings/Setting;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/settings/Setting;->getHotPointX()F

    move-result p3

    sub-float/2addr v1, p3

    mul-float/2addr v1, v0

    sget-object p3, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->Companion:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale$Companion;

    float-to-double v0, v1

    div-double/2addr p1, v0

    double-to-float p1, p1

    invoke-virtual {p3, p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale$Companion;->fromView(Landroid/view/View;F)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    move-result-object p0

    return-object p0
.end method

.method public static final createDrivenDrop(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    invoke-virtual/range {p3 .. p3}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->getResourceId()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v13

    new-instance v11, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;-><init>(I)V

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

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v16}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;ZLcom/sightcall/advancedannotations/domain/drawer/AnnotationId;ZZLkotlin/jvm/functions/Function0;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;-><init>(ZZLcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V

    return-object v0
.end method

.method public static final createDrivenLine(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    new-instance v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    invoke-virtual/range {p3 .. p3}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

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

.method public static final createDrivenPointer(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    new-instance v4, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;-><init>(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;->getResourceId()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;->getScale()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    move-result-object v11

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

.method public static final delete(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;Z)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    new-instance v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    const/16 v15, 0x1ff2

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v16}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;ZLcom/sightcall/advancedannotations/domain/drawer/AnnotationId;ZZLkotlin/jvm/functions/Function0;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    move/from16 v3, p2

    invoke-direct {v0, v3, v2, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;-><init>(ZZLcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V

    return-object v0
.end method

.method public static final fadeOut(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;Lkotlin/jvm/functions/Function1;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    new-instance v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    new-instance v7, Ldt;

    const/4 v2, 0x6

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    invoke-direct {v7, v3, v4, v2}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v15, 0x1fca

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v16}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;ZLcom/sightcall/advancedannotations/domain/drawer/AnnotationId;ZZLkotlin/jvm/functions/Function0;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;-><init>(ZZLcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V

    return-object v0
.end method

.method private static final fadeOut$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;)Lkotlin/Unit;
    .locals 0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final moveDrivenDrop(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;Lcom/sightcall/advancedannotations/domain/settings/Setting;Landroid/view/ViewGroup;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->getResourceId()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    move-result-object v7

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v2, v0, v1}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->computeRotation(Landroid/view/View;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;

    move-result-object v4

    move-object v11, v4

    goto :goto_0

    :cond_0
    move-object v11, v3

    :goto_0
    if-eqz v0, :cond_1

    move-object/from16 v4, p5

    invoke-static {v2, v0, v1, v4}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->computeScale(Landroid/view/View;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/settings/Setting;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    move-result-object v3

    :cond_1
    move-object v10, v3

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    const/16 v14, 0x11ba

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v15}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;ZLcom/sightcall/advancedannotations/domain/drawer/AnnotationId;ZZLkotlin/jvm/functions/Function0;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;-><init>(ZZLcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V

    return-object v1
.end method

.method public static final moveDrivenPointer(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
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
