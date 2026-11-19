.class public final Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002BA\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModel;",
        "Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;",
        "setMediaControllerCallbackUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;",
        "getCurrentPositionUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;",
        "destroyMediaControllerUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;",
        "playMediaUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;",
        "pauseMediaUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;",
        "resumeMediaUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;",
        "seekToPositionUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;)V",
        "presentation"
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
.field public final a:Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;

.field public final g:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;)V
    .locals 9
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;

    move-object/from16 p2, p7

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;

    new-instance v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;-><init>(ZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;JLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance p2, Lub;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lub;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p1, Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0, p2}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->d(Lkotlin/jvm/functions/Function5;)V

    return-void
.end method


# virtual methods
.method public final Jb(Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;)V
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Play;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Play;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->c()V

    return-void

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Pause;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Pause;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;

    if-eqz v0, :cond_1

    iget-object p0, v1, Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->pause()V

    return-void

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Resume;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Resume;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->resume()V

    return-void

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$GoAhead;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$GoAhead;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;

    const-wide/16 v3, 0x3a98

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;

    if-eqz v0, :cond_3

    iget-object p0, v5, Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->getCurrentPosition()J

    move-result-wide p0

    add-long/2addr p0, v3

    iget-object v0, v2, Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {v0, p0, p1}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->seekTo(J)V

    return-void

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$GoBack;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$GoBack;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, v5, Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->getCurrentPosition()J

    move-result-wide p0

    sub-long/2addr p0, v3

    iget-object v0, v2, Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {v0, p0, p1}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->seekTo(J)V

    return-void

    :cond_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$PlayerUiChange;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$PlayerUiChange;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    iget-object v2, v5, Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {v2}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->getCurrentPosition()J

    move-result-wide v10

    iget-boolean v7, v1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->a:Z

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->b:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->c:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->e:Ljava/lang/Long;

    new-instance v6, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    invoke-direct/range {v6 .. v12}, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;-><init>(ZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;JLjava/lang/Long;)V

    invoke-interface {p1, v0, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_6
    sget-object p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Reset;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Reset;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, v1, Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->pause()V

    const-wide/16 p0, 0x0

    iget-object v0, v2, Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {v0, p0, p1}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->seekTo(J)V

    return-void

    :cond_7
    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$SeekTo;

    if-eqz p0, :cond_8

    check-cast p1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$SeekTo;

    iget-wide p0, p1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$SeekTo;->a:J

    iget-object v0, v2, Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {v0, p0, p1}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->seekTo(J)V

    return-void

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final L3()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->destroy()V

    return-void
.end method

.method public final d7()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method
