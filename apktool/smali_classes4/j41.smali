.class public final synthetic Lj41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;JLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj41;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lj41;->c:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    iput-wide p3, p0, Lj41;->d:J

    iput-object p5, p0, Lj41;->e:Ljava/lang/String;

    iput-object p6, p0, Lj41;->f:Ljava/lang/String;

    iput-object p7, p0, Lj41;->g:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    iput-object p8, p0, Lj41;->h:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lj41;->i:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lj41;->j:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lj41;->k:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lj41;->l:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Lj41;->m:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Lj41;->n:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v15

    iget-object v1, v0, Lj41;->b:Landroidx/compose/ui/Modifier;

    move-object v2, v1

    iget-object v1, v0, Lj41;->c:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-object v4, v2

    iget-wide v2, v0, Lj41;->d:J

    move-object v5, v4

    iget-object v4, v0, Lj41;->e:Ljava/lang/String;

    move-object v6, v5

    iget-object v5, v0, Lj41;->f:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v0, Lj41;->g:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;

    move-object v8, v7

    iget-object v7, v0, Lj41;->h:Lkotlin/jvm/functions/Function0;

    move-object v9, v8

    iget-object v8, v0, Lj41;->i:Lkotlin/jvm/functions/Function0;

    move-object v10, v9

    iget-object v9, v0, Lj41;->j:Lkotlin/jvm/functions/Function0;

    move-object v11, v10

    iget-object v10, v0, Lj41;->k:Lkotlin/jvm/functions/Function1;

    move-object v12, v11

    iget-object v11, v0, Lj41;->l:Lkotlin/jvm/functions/Function0;

    move-object v13, v12

    iget-object v12, v0, Lj41;->m:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lj41;->n:Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v13

    move-object v13, v0

    move-object/from16 v0, v16

    invoke-static/range {v0 .. v15}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailPlayerKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;JLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/TrackDetailSubMode;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
