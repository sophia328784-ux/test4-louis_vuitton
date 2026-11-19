package com.vuitton.android.presentation.screen.audioguide;

import com.batch.android.s.b;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.audioguide.AudioGuideMonitoring;
import com.vuitton.android.domain.usecase.audioguide.GetTrackDetailUseCase;
import com.vuitton.android.presentation.common.editorial.mapper.EditorialModuleUiModelMapperKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideBottomSheet;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState;
import com.vuitton.android.presentation.screen.audioguide.models.TrackDetailUiModel;
import com.vuitton.foundation.model.domain.model.audioguide.TrackDetail;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerState;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl$onTrackClicked$1", f = "AudioGuideViewModelImpl.kt", l = {305, 309}, m = "invokeSuspend", v = 2)
final class AudioGuideViewModelImpl$onTrackClicked$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f52998b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f52999c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AudioGuideViewModelImpl f53000e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f53001f;
    public final /* synthetic */ String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f53002h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideViewModelImpl$onTrackClicked$1(AudioGuideViewModelImpl audioGuideViewModelImpl, boolean z, String str, boolean z2, Continuation continuation) {
        super(2, continuation);
        this.f53000e = audioGuideViewModelImpl;
        this.f53001f = z;
        this.g = str;
        this.f53002h = z2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioGuideViewModelImpl$onTrackClicked$1(this.f53000e, this.f53001f, this.g, this.f53002h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideViewModelImpl$onTrackClicked$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:53:0x010c  */
    /* JADX WARN: Code duplicated, block: B:56:0x011a  */
    /* JADX WARN: Code duplicated, block: B:57:0x011f  */
    /* JADX WARN: Code duplicated, block: B:59:0x0122  */
    /* JADX WARN: Code duplicated, block: B:62:0x0144 A[LOOP:1: B:60:0x013e->B:62:0x0144, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x0169 A[LOOP:2: B:64:0x0163->B:66:0x0169, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:68:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:75:0x01ca A[LOOP:0: B:54:0x010f->B:75:0x01ca, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:76:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:79:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:83:0x01b0 A[EDGE_INSN: B:83:0x01b0->B:71:0x01b0 BREAK  A[LOOP:0: B:54:0x010f->B:75:0x01ca], SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:79:0x01d8, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i2;
        MonitorAction monitorActionA;
        Object next;
        Object objC;
        Object obj2;
        MonitorAction monitorAction;
        Object obj3;
        Throwable thA;
        TrackDetail trackDetail;
        Object value;
        Object objA;
        AudioGuideViewState.Success success;
        TrackDetail trackDetail2;
        MutableStateFlow mutableStateFlow;
        Object value2;
        ArrayList arrayList;
        Iterator it;
        ArrayList arrayList2;
        AudioGuideViewModelImpl audioGuideViewModelImpl = this.f53000e;
        MutableStateFlow mutableStateFlow2 = audioGuideViewModelImpl.w;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.d;
        String str = this.g;
        AudioGuideViewState.Success success2 = null;
        if (i3 == 0) {
            ResultKt.b(obj);
            AudioGuideViewState audioGuideViewState = (AudioGuideViewState) mutableStateFlow2.getValue();
            if (audioGuideViewState instanceof AudioGuideViewState.Success) {
                if (this.f53001f) {
                    audioGuideViewModelImpl.j7(AudioGuideBottomSheet.TrackDetail.f53158a);
                }
                AudioGuideViewState.Success success3 = (AudioGuideViewState.Success) audioGuideViewState;
                AudioGuideUiModel audioGuideUiModel = success3.f53225a;
                TrackDetailUiModel trackDetailUiModel = success3.f53226b;
                boolean zC = Intrinsics.c(trackDetailUiModel != null ? trackDetailUiModel.f53230a : null, str);
                i2 = !zC ? 1 : 0;
                if (!zC) {
                    monitorActionA = audioGuideViewModelImpl.f52979b.a(audioGuideViewModelImpl.v, AudioGuideMonitoring.Action.OpenTrackDetail.f48821a);
                    monitorActionA.c(str, b.a.f24015b);
                    Iterator it2 = audioGuideUiModel.m.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                    } while (!Intrinsics.c(((AudioGuideUiModel.TrackUiModel) next).f53218a, str));
                    AudioGuideUiModel.TrackUiModel trackUiModel = (AudioGuideUiModel.TrackUiModel) next;
                    if (trackUiModel != null) {
                        while (true) {
                            Object value3 = mutableStateFlow2.getValue();
                            Object objA2 = (AudioGuideViewState) value3;
                            AudioGuideViewState.Success success4 = objA2 instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) objA2 : success2;
                            if (success4 != null) {
                                String str2 = trackUiModel.f53218a;
                                String str3 = trackUiModel.f53219b;
                                String str4 = trackUiModel.f53220c;
                                EmptyList emptyList = EmptyList.f71768b;
                                objA2 = AudioGuideViewState.Success.a(success4, null, new TrackDetailUiModel(str2, str3, str4, emptyList, emptyList), PlayerState.STOPPED, 0L, null, null, 57);
                            }
                            if (mutableStateFlow2.i(value3, objA2)) {
                                break;
                            }
                            success2 = null;
                        }
                        audioGuideViewModelImpl.zc(trackUiModel, this.f53002h);
                    }
                    GetTrackDetailUseCase getTrackDetailUseCase = audioGuideViewModelImpl.d;
                    String str5 = audioGuideViewModelImpl.t;
                    if (str5 == null) {
                        return Unit.f71739a;
                    }
                    String str6 = audioGuideUiModel.f53201i.f53212a;
                    this.f52998b = monitorActionA;
                    this.f52999c = i2;
                    this.d = 1;
                    objC = getTrackDetailUseCase.f49314a.c(str5, str, str6);
                    if (objC != coroutineSingletons) {
                    }
                    return coroutineSingletons;
                }
            }
            return Unit.f71739a;
        }
        if (i3 == 1) {
            int i4 = this.f52999c;
            MonitorAction monitorAction2 = this.f52998b;
            ResultKt.b(obj);
            i2 = i4;
            monitorActionA = monitorAction2;
            objC = obj;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f52998b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (obj2 instanceof Result.Failure) {
            obj3 = obj2;
        } else {
            trackDetail = (TrackDetail) obj2;
            while (true) {
                value = mutableStateFlow2.getValue();
                objA = (AudioGuideViewState) value;
                if (objA instanceof AudioGuideViewState.Success) {
                    success = (AudioGuideViewState.Success) objA;
                } else {
                    success = null;
                }
                if (success != null) {
                    trackDetail.getClass();
                    String str7 = trackDetail.f66577a;
                    String str8 = trackDetail.f66578b;
                    String str9 = trackDetail.f66579c;
                    List list = trackDetail.d;
                    arrayList = new ArrayList(CollectionsKt.t(list, 10));
                    it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(EditorialModuleUiModelMapperKt.b((EditorialModule) it.next()));
                    }
                    List<TrackDetail.Cue> list2 = trackDetail.f66580e;
                    arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                    for (TrackDetail.Cue cue : list2) {
                        arrayList2.add(new TrackDetailUiModel.CueUiModel(cue.f66581a, cue.f66582b, cue.f66583c));
                        trackDetail = trackDetail;
                        obj2 = obj2;
                    }
                    obj3 = obj2;
                    trackDetail2 = trackDetail;
                    objA = AudioGuideViewState.Success.a(success, null, new TrackDetailUiModel(str7, str8, str9, arrayList, arrayList2), null, 0L, null, null, 61);
                } else {
                    obj3 = obj2;
                    trackDetail2 = trackDetail;
                }
                if (mutableStateFlow2.i(value, objA)) {
                    break;
                }
                trackDetail = trackDetail2;
                obj2 = obj3;
            }
            mutableStateFlow = audioGuideViewModelImpl.z;
            do {
                value2 = mutableStateFlow.getValue();
                ((Number) value2).longValue();
            } while (!mutableStateFlow.i(value2, new Long(0L)));
        }
        thA = Result.a(obj3);
        if (thA != null) {
            audioGuideViewModelImpl.f52978a.c("AudioGuideViewModelImpl", "Failed to load track detail for trackId: " + str, thA);
            monitorAction.d(new AudioGuideMonitoring.Error.OpenTrackDetailError(thA));
        }
        monitorAction.b();
        return Unit.f71739a;
        this.f52998b = monitorActionA;
        this.f52999c = i2;
        this.d = 2;
        Object objC2 = ((ResultStrategy) objC).c(this);
        if (objC2 != coroutineSingletons) {
            obj2 = objC2;
            monitorAction = monitorActionA;
            Result.Companion companion2 = Result.INSTANCE;
            if (obj2 instanceof Result.Failure) {
                trackDetail = (TrackDetail) obj2;
                while (true) {
                    value = mutableStateFlow2.getValue();
                    objA = (AudioGuideViewState) value;
                    if (objA instanceof AudioGuideViewState.Success) {
                        success = (AudioGuideViewState.Success) objA;
                    } else {
                        success = null;
                    }
                    if (success != null) {
                        trackDetail.getClass();
                        String str10 = trackDetail.f66577a;
                        String str11 = trackDetail.f66578b;
                        String str12 = trackDetail.f66579c;
                        List list3 = trackDetail.d;
                        arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                        it = list3.iterator();
                        while (it.hasNext()) {
                            arrayList.add(EditorialModuleUiModelMapperKt.b((EditorialModule) it.next()));
                        }
                        List<TrackDetail.Cue> list4 = trackDetail.f66580e;
                        arrayList2 = new ArrayList(CollectionsKt.t(list4, 10));
                        while (r6.hasNext()) {
                            arrayList2.add(new TrackDetailUiModel.CueUiModel(cue.f66581a, cue.f66582b, cue.f66583c));
                            trackDetail = trackDetail;
                            obj2 = obj2;
                        }
                        obj3 = obj2;
                        trackDetail2 = trackDetail;
                        objA = AudioGuideViewState.Success.a(success, null, new TrackDetailUiModel(str10, str11, str12, arrayList, arrayList2), null, 0L, null, null, 61);
                    } else {
                        obj3 = obj2;
                        trackDetail2 = trackDetail;
                    }
                    if (mutableStateFlow2.i(value, objA)) {
                        break;
                        break;
                    }
                    trackDetail = trackDetail2;
                    obj2 = obj3;
                }
                mutableStateFlow = audioGuideViewModelImpl.z;
                do {
                    value2 = mutableStateFlow.getValue();
                    ((Number) value2).longValue();
                } while (!mutableStateFlow.i(value2, new Long(0L)));
            } else {
                obj3 = obj2;
            }
            thA = Result.a(obj3);
            if (thA != null) {
                audioGuideViewModelImpl.f52978a.c("AudioGuideViewModelImpl", "Failed to load track detail for trackId: " + str, thA);
                monitorAction.d(new AudioGuideMonitoring.Error.OpenTrackDetailError(thA));
            }
            monitorAction.b();
            return Unit.f71739a;
        }
        return coroutineSingletons;
    }
}
