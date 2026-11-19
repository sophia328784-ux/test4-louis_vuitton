.class public final synthetic Lso0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

.field public final synthetic d:J

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lso0;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lso0;->c:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    iput-wide p3, p0, Lso0;->d:J

    iput-object p5, p0, Lso0;->e:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lso0;->f:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lso0;->g:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x7

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v0, p0, Lso0;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lso0;->c:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    iget-wide v2, p0, Lso0;->d:J

    iget-object v4, p0, Lso0;->e:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lso0;->f:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Lso0;->g:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastPlayerKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
