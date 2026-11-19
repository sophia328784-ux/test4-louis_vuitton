.class public final Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u00b9\u0001\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008/\u00100\u00a8\u00061"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/domain/usecase/audioguide/GetAudioGuideUseCase;",
        "getAudioGuideUseCase",
        "Lcom/vuitton/android/domain/usecase/audioguide/GetTrackDetailUseCase;",
        "getTrackDetailUseCase",
        "Lcom/vuitton/android/domain/usecase/audioguide/GetCompletedTracksUseCase;",
        "getCompletedTracksUseCase",
        "Lcom/vuitton/android/domain/usecase/audioguide/SaveCompletedTrackUseCase;",
        "saveCompletedTrackUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;",
        "playMediaUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;",
        "pauseMediaUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;",
        "resumeMediaUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;",
        "seekToPositionUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;",
        "getCurrentPositionUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;",
        "setMediaControllerCallbackUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaSpeedUseCase;",
        "setMediaSpeedUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/StopMediaUseCase;",
        "stopMediaUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;",
        "destroyMediaControllerUseCase",
        "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;",
        "getAllAccessibilityValuesUseCase",
        "Lcom/vuitton/android/domain/usecase/audioguide/SaveAccessDataUseCase;",
        "saveAccessDataUseCase",
        "Lcom/vuitton/android/domain/usecase/audioguide/ClearAccessDataUseCase;",
        "clearAccessDataUseCase",
        "Lcom/vuitton/android/domain/usecase/audioguide/ClearCachedTracksUseCase;",
        "clearCachedTracksUseCase",
        "Lcom/vuitton/android/domain/usecase/audioplayer/SetPlaylistUseCase;",
        "setPlaylistUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/audioguide/GetAudioGuideUseCase;Lcom/vuitton/android/domain/usecase/audioguide/GetTrackDetailUseCase;Lcom/vuitton/android/domain/usecase/audioguide/GetCompletedTracksUseCase;Lcom/vuitton/android/domain/usecase/audioguide/SaveCompletedTrackUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaSpeedUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/StopMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/audioguide/SaveAccessDataUseCase;Lcom/vuitton/android/domain/usecase/audioguide/ClearAccessDataUseCase;Lcom/vuitton/android/domain/usecase/audioguide/ClearCachedTracksUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SetPlaylistUseCase;)V",
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
.field public final A:Lkotlinx/coroutines/channels/BufferedChannel;

.field public B:Lkotlinx/coroutines/Job;

.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final c:Lcom/vuitton/android/domain/usecase/audioguide/GetAudioGuideUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/audioguide/GetTrackDetailUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/audioguide/GetCompletedTracksUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/audioguide/SaveCompletedTrackUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaSpeedUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/audioplayer/StopMediaUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;

.field public final o:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;

.field public final p:Lcom/vuitton/android/domain/usecase/audioguide/SaveAccessDataUseCase;

.field public final q:Lcom/vuitton/android/domain/usecase/audioguide/ClearAccessDataUseCase;

.field public final r:Lcom/vuitton/android/domain/usecase/audioguide/ClearCachedTracksUseCase;

.field public final s:Lcom/vuitton/android/domain/usecase/audioplayer/SetPlaylistUseCase;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final w:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final x:Lkotlinx/coroutines/flow/StateFlow;

.field public final y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final z:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/audioguide/GetAudioGuideUseCase;Lcom/vuitton/android/domain/usecase/audioguide/GetTrackDetailUseCase;Lcom/vuitton/android/domain/usecase/audioguide/GetCompletedTracksUseCase;Lcom/vuitton/android/domain/usecase/audioguide/SaveCompletedTrackUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaSpeedUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/StopMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/audioguide/SaveAccessDataUseCase;Lcom/vuitton/android/domain/usecase/audioguide/ClearAccessDataUseCase;Lcom/vuitton/android/domain/usecase/audioguide/ClearCachedTracksUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SetPlaylistUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/audioguide/GetAudioGuideUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/audioguide/GetTrackDetailUseCase;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/audioguide/GetCompletedTracksUseCase;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/audioguide/SaveCompletedTrackUseCase;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;

    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaSpeedUseCase;

    move-object/from16 p3, p16

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/audioplayer/StopMediaUseCase;

    move-object/from16 p3, p17

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;

    move-object/from16 p3, p18

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;

    move-object/from16 p3, p19

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/audioguide/SaveAccessDataUseCase;

    move-object/from16 p3, p20

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/audioguide/ClearAccessDataUseCase;

    move-object/from16 p3, p21

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/audioguide/ClearCachedTracksUseCase;

    move-object/from16 p3, p22

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/audioplayer/SetPlaylistUseCase;

    const-string p3, "audioGuideId"

    invoke-virtual {p2, p3}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->t:Ljava/lang/String;

    const-string p3, "trackId"

    invoke-virtual {p2, p3}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->u:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->v:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Loading;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->x:Lkotlinx/coroutines/flow/StateFlow;

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p2, 0x0

    const/4 p3, 0x7

    invoke-static {p2, p3, p1}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->A:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->Rb()V

    new-instance p1, Lcom/vuitton/android/presentation/screen/audioguide/a;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/audioguide/a;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;)V

    iget-object p0, p14, Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0, p1}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->d(Lkotlin/jvm/functions/Function5;)V

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;

    iget v4, v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;

    invoke-direct {v3, v1, v0}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;->c:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;->e:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_5

    if-eq v5, v9, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;->b:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_2
    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;->b:Ljava/lang/Object;

    check-cast v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_5

    :cond_3
    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;->b:Ljava/lang/Object;

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/audioguide/GetAudioGuideUseCase;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->t:Ljava/lang/String;

    if-nez v5, :cond_6

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioGuideId is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_6
    iput v9, v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;->e:I

    move-object/from16 v9, p1

    invoke-virtual {v0, v5, v9, v3}, Lcom/vuitton/android/domain/usecase/audioguide/GetAudioGuideUseCase;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_7

    goto/16 :goto_9

    :cond_7
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v5, v0

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;

    iget-object v12, v5, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->a:Ljava/lang/String;

    sget-object v0, Lkotlin/time/InstantJvmKt;->a:Lkotlin/time/Clock;

    invoke-interface {v0}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/time/Instant;->a()J

    move-result-wide v13

    iget v0, v5, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->g:I

    const v9, 0x36ee80

    mul-int/2addr v0, v9

    move-object/from16 p1, v11

    int-to-long v10, v0

    add-long/2addr v13, v10

    iget-object v15, v5, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->e:Ljava/lang/String;

    iget-object v0, v5, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->f:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    iget-object v9, v5, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->b:Ljava/lang/String;

    iget-object v10, v5, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->d:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    move-object/from16 v11, p1

    move-object/from16 v16, v0

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/audioguide/SaveAccessDataUseCase;

    iput-object v5, v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;->b:Ljava/lang/Object;

    iput v8, v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;->e:I

    invoke-virtual {v0, v11, v3}, Lcom/vuitton/android/domain/usecase/audioguide/SaveAccessDataUseCase;->a(Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_8

    goto/16 :goto_9

    :cond_8
    :goto_2
    sget-object v8, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v8, v0, Lkotlin/Result$Failure;

    if-nez v8, :cond_a

    check-cast v0, Lkotlin/Unit;

    move-object v0, v5

    goto :goto_3

    :cond_9
    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v5}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    instance-of v5, v0, Lkotlin/Result$Failure;

    if-nez v5, :cond_b

    :try_start_0
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v5, Lkotlin/Result$Failure;

    invoke-direct {v5, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    :cond_b
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_d

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v5, v0

    check-cast v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/audioguide/GetCompletedTracksUseCase;

    iput-object v5, v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;->b:Ljava/lang/Object;

    iput v7, v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;->e:I

    invoke-virtual {v0, v3}, Lcom/vuitton/android/domain/usecase/audioguide/GetCompletedTracksUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_c

    goto/16 :goto_9

    :cond_c
    :goto_5
    sget-object v7, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v7, v0, Lkotlin/Result$Failure;

    if-nez v7, :cond_e

    check-cast v0, Ljava/util/List;

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v7

    goto :goto_6

    :cond_d
    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v5}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_e
    :goto_6
    instance-of v5, v0, Lkotlin/Result$Failure;

    if-nez v5, :cond_12

    check-cast v0, Lkotlin/Pair;

    iget-object v5, v0, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-object v0, v0, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v7, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    iget-object v10, v9, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    sget-object v10, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;->DONE:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;

    invoke-static {v9, v10}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    move-result-object v9

    :cond_f
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    invoke-static {v5, v8}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;Ljava/util/ArrayList;)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    move-result-object v11

    new-instance v10, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    const/16 v18, 0x3e

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;JLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lcom/vuitton/android/presentation/model/common/A11ySettings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->A:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    const/4 v7, 0x0

    iput-object v7, v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;->b:Ljava/lang/Object;

    iput v6, v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$getAudioGuide$1;->e:I

    invoke-interface {v0, v5, v3}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_11

    goto :goto_9

    :cond_11
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_12
    move-object v4, v0

    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_13

    sget-object v3, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Error;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Error;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "AudioGuideViewModelImpl"

    const-string v3, "Failed to load audio guide"

    invoke-interface {v1, v2, v3, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_9
    return-object v4
.end method


# virtual methods
.method public final Ac(I)V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, -0x1

    :goto_2
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    add-int/2addr v4, p1

    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v3}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->m6(Ljava/lang/String;ZZ)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final Fb()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLeaveAudioGuide$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLeaveAudioGuide$1;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Ja()V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {v0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0, v0, v1}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->seekTo(J)V

    return-void
.end method

.method public final O2()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->A:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final Rb()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$initAudioGuide$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$initAudioGuide$1;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final T5()V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {v1}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->getCurrentPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->d:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    move-wide v1, v3

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0, v1, v2}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->seekTo(J)V

    return-void
.end method

.method public final X3()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->c:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->PLAYING:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->pause()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->x:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final c3()V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->c:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    sget-object v3, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_9

    const/4 v3, 0x2

    if-eq v1, v3, :cond_8

    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v5, v2

    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    :cond_4
    check-cast v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;Z)V

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-lez v1, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0, v3, v4}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->seekTo(J)V

    :cond_5
    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->c()V

    return-void

    :cond_6
    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->c()V

    return-void

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_8
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->resume()V

    return-void

    :cond_9
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->pause()V

    return-void
.end method

.method public final cb()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public final e()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public final j7(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final k9()V
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    goto :goto_4

    :cond_1
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->e:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    sget-object v2, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$WhenMappings;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->SPEED_1X:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    :goto_1
    move-object v10, v1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->SPEED_2X:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->SPEED_1_5X:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    goto :goto_1

    :goto_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaSpeedUseCase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaSpeedUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0, v10}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->e(Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;)V

    :cond_4
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-object v4, v2

    goto :goto_3

    :cond_5
    move-object v4, v3

    :goto_3
    if-eqz v4, :cond_6

    const/4 v11, 0x0

    const/16 v12, 0x2f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v4 .. v12}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;JLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lcom/vuitton/android/presentation/model/common/A11ySettings;I)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-result-object v1

    :cond_6
    invoke-interface {v0, p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :goto_4
    return-void
.end method

.method public final kc(J)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->seekTo(J)V

    return-void
.end method

.method public final l8(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onLanguageSelected$1;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final m6(Ljava/lang/String;ZZ)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl$onTrackClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;ZLjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onCleared()V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/audioplayer/StopMediaUseCase;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/audioplayer/StopMediaUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {v0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->stop()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->destroy()V

    return-void
.end method

.method public final p9()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->Ac(I)V

    return-void
.end method

.method public final r1()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->Ac(I)V

    return-void
.end method

.method public final zc(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;Z)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    move-object/from16 v6, p1

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    :goto_2
    if-gez v4, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->b:Ljava/lang/String;

    iget-object v5, v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->f:Lcom/vuitton/android/presentation/model/common/SoundUiModel;

    iget-object v11, v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->c:Ljava/lang/String;

    iget-object v8, v5, Lcom/vuitton/android/presentation/model/common/SoundUiModel;->b:Ljava/lang/String;

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v13, v4, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    const/16 v17, 0xe

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v9

    invoke-direct/range {v12 .. v18}, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Scale;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-wide v6, v5, Lcom/vuitton/android/presentation/model/common/SoundUiModel;->c:J

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;

    invoke-direct/range {v5 .. v11}, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;-><init>(JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/audioplayer/SetPlaylistUseCase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/audioplayer/SetPlaylistUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {v1, v3, v2}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->b(ILjava/util/ArrayList;)V

    if-eqz p2, :cond_6

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {v0}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->c()V

    :cond_6
    :goto_5
    return-void
.end method
