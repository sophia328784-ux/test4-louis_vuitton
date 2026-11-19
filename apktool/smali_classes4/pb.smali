.class public final synthetic Lpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;JJZZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpb;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lpb;->c:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    iput-wide p3, p0, Lpb;->d:J

    iput-wide p5, p0, Lpb;->e:J

    iput-boolean p7, p0, Lpb;->f:Z

    iput-boolean p8, p0, Lpb;->g:Z

    iput-object p9, p0, Lpb;->h:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    iput-object p10, p0, Lpb;->i:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lpb;->j:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lpb;->k:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Lpb;->l:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Lpb;->m:Lkotlin/jvm/functions/Function0;

    iput-object p15, p0, Lpb;->n:Lkotlin/jvm/functions/Function0;

    move/from16 p1, p16

    iput p1, p0, Lpb;->o:I

    move/from16 p1, p17

    iput p1, p0, Lpb;->p:I

    move/from16 p1, p18

    iput p1, p0, Lpb;->q:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lpb;->o:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v16

    iget v1, v0, Lpb;->p:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v17

    iget-object v1, v0, Lpb;->b:Landroidx/compose/ui/Modifier;

    move-object v2, v1

    iget-object v1, v0, Lpb;->c:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    move-object v4, v2

    iget-wide v2, v0, Lpb;->d:J

    move-object v6, v4

    iget-wide v4, v0, Lpb;->e:J

    move-object v7, v6

    iget-boolean v6, v0, Lpb;->f:Z

    move-object v8, v7

    iget-boolean v7, v0, Lpb;->g:Z

    move-object v9, v8

    iget-object v8, v0, Lpb;->h:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    move-object v10, v9

    iget-object v9, v0, Lpb;->i:Lkotlin/jvm/functions/Function0;

    move-object v11, v10

    iget-object v10, v0, Lpb;->j:Lkotlin/jvm/functions/Function1;

    move-object v12, v11

    iget-object v11, v0, Lpb;->k:Lkotlin/jvm/functions/Function0;

    move-object v13, v12

    iget-object v12, v0, Lpb;->l:Lkotlin/jvm/functions/Function0;

    move-object v14, v13

    iget-object v13, v0, Lpb;->m:Lkotlin/jvm/functions/Function0;

    move-object/from16 v18, v14

    iget-object v14, v0, Lpb;->n:Lkotlin/jvm/functions/Function0;

    iget v0, v0, Lpb;->q:I

    move-object/from16 v19, v18

    move/from16 v18, v0

    move-object/from16 v0, v19

    invoke-static/range {v0 .. v18}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;JJZZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
