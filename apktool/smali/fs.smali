.class public final synthetic Lfs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:F

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lfs;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfs;->g:Ljava/lang/Object;

    iput-object p2, p0, Lfs;->h:Ljava/lang/Object;

    iput-wide p3, p0, Lfs;->c:J

    iput-wide p5, p0, Lfs;->d:J

    iput p7, p0, Lfs;->e:F

    iput-object p8, p0, Lfs;->i:Ljava/lang/Object;

    iput p9, p0, Lfs;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JJFLjava/lang/String;II)V
    .locals 0

    .line 21
    const/4 p9, 0x1

    iput p9, p0, Lfs;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfs;->g:Ljava/lang/Object;

    iput-object p2, p0, Lfs;->h:Ljava/lang/Object;

    iput-wide p3, p0, Lfs;->c:J

    iput-wide p5, p0, Lfs;->d:J

    iput p7, p0, Lfs;->e:F

    iput-object p8, p0, Lfs;->i:Ljava/lang/Object;

    iput p10, p0, Lfs;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJIFLkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 22
    const/4 p10, 0x2

    iput p10, p0, Lfs;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfs;->h:Ljava/lang/Object;

    iput-object p2, p0, Lfs;->g:Ljava/lang/Object;

    iput-wide p3, p0, Lfs;->c:J

    iput-wide p5, p0, Lfs;->d:J

    iput p7, p0, Lfs;->f:I

    iput p8, p0, Lfs;->e:F

    iput-object p9, p0, Lfs;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lfs;->b:I

    const/4 v2, 0x1

    iget-object v3, v0, Lfs;->i:Ljava/lang/Object;

    iget-object v4, v0, Lfs;->g:Ljava/lang/Object;

    iget-object v5, v0, Lfs;->h:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v7, v4

    check-cast v7, Landroidx/compose/ui/Modifier;

    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function1;

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x180001

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v16

    iget-wide v8, v0, Lfs;->c:J

    iget-wide v10, v0, Lfs;->d:J

    iget v12, v0, Lfs;->f:I

    iget v13, v0, Lfs;->e:F

    invoke-static/range {v6 .. v16}, Landroidx/compose/material3/ProgressIndicatorKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJIFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-wide v3, v0, Lfs;->c:J

    move-object v2, v5

    iget-wide v5, v0, Lfs;->d:J

    iget v7, v0, Lfs;->e:F

    iget v11, v0, Lfs;->f:I

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVTopBarCommonKt;->a(Ljava/lang/String;Ljava/lang/String;JJFLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object v1, v4

    check-cast v1, Landroidx/compose/ui/Modifier;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v8, v3

    check-cast v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v0, Lfs;->f:I

    or-int/2addr v2, v3

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-wide v3, v0, Lfs;->c:J

    move-object v2, v5

    iget-wide v5, v0, Lfs;->d:J

    iget v7, v0, Lfs;->e:F

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/DatePickerKt;->d(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
