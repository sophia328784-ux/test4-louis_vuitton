.class public final synthetic Ln41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln41;->b:Ljava/util/List;

    iput p2, p0, Ln41;->c:I

    iput-wide p3, p0, Ln41;->d:J

    iput-wide p5, p0, Ln41;->e:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$TrackDetailTranscriptKt;->a:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$TrackDetailTranscriptKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$TrackDetailTranscriptKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v1, v0, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    new-instance v0, Le31;

    const/16 v3, 0x9

    invoke-direct {v0, v3}, Le31;-><init>(I)V

    iget-object v5, p0, Ln41;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    new-instance v11, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$1;

    invoke-direct {v11, v0, v5}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v0, v5}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$3;

    iget v6, p0, Ln41;->c:I

    iget-wide v7, p0, Ln41;->d:J

    iget-wide v9, p0, Ln41;->e:J

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;IJJ)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, 0x799532c4

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {p1, v3, v11, v0, p0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$TrackDetailTranscriptKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {p1, v1, p0, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
