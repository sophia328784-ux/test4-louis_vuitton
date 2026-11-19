package com.vuitton.android.presentation.ar.renderer;

import android.content.Context;
import android.opengl.Matrix;
import com.google.android.filament.TransformManager;
import com.google.android.filament.gltfio.FilamentAsset;
import com.google.ar.core.Frame;
import com.google.ar.core.HitResult;
import com.google.ar.core.Point;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.presentation.ar.M4;
import com.vuitton.android.presentation.ar.MatrixKt;
import com.vuitton.android.presentation.ar.V3;
import com.vuitton.android.presentation.ar.arcore.ArCore;
import com.vuitton.android.presentation.ar.arcore.ScreenPosition;
import com.vuitton.android.presentation.ar.filament.Filament;
import defpackage.md;
import defpackage.os;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.asn1.eac.EACTags;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0002\u000e\u000fB/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "Lcom/vuitton/android/presentation/ar/arcore/ArCore;", "arCore", "Lcom/vuitton/android/presentation/ar/filament/Filament;", "filament", "<init>", "(Landroid/content/Context;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Ljava/lang/String;Lcom/vuitton/android/presentation/ar/arcore/ArCore;Lcom/vuitton/android/presentation/ar/filament/Filament;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "ModelEvent", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ModelRenderer {
    public static final /* synthetic */ int o = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f50621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f50622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f50623c;
    public final ArCore d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Filament f50624e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SharedFlowImpl f50625f;
    public final SharedFlowImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f50626h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public V3 f50627i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f50628j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f50629k;
    public final ContextScope l;
    public FilamentAsset m;
    public boolean n;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.ar.renderer.ModelRenderer$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.ar.renderer.ModelRenderer$1", f = "ModelRenderer.kt", l = {EACTags.HISTORICAL_BYTES}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f50630b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f50631c;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.ar.renderer.ModelRenderer$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.ar.renderer.ModelRenderer$1$1", f = "ModelRenderer.kt", l = {CertificateBody.profileType}, m = "invokeSuspend", v = 2)
        final class C02541 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f50632b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ModelRenderer f50633c;
            public final /* synthetic */ FilamentAsset d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02541(ModelRenderer modelRenderer, FilamentAsset filamentAsset, Continuation continuation) {
                super(2, continuation);
                this.f50633c = modelRenderer;
                this.d = filamentAsset;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02541(this.f50633c, this.d, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02541) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f50632b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    final ModelRenderer modelRenderer = this.f50633c;
                    final SharedFlowImpl sharedFlowImpl = modelRenderer.f50625f;
                    Flow<V3> flow = new Flow<V3>() { // from class: com.vuitton.android.presentation.ar.renderer.ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.ar.renderer.ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        public final class AnonymousClass2<T> implements FlowCollector {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ FlowCollector f50638b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public final /* synthetic */ ModelRenderer f50639c;

                            /* JADX INFO: renamed from: com.vuitton.android.presentation.ar.renderer.ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                            @DebugMetadata(c = "com.vuitton.android.presentation.ar.renderer.ModelRenderer$1$1$invokeSuspend$$inlined$mapNotNull$1$2", f = "ModelRenderer.kt", l = {262}, m = "emit", v = 2)
                            public final class AnonymousClass1 extends ContinuationImpl {

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public /* synthetic */ Object f50640b;

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public int f50641c;

                                public AnonymousClass1(Continuation continuation) {
                                    super(continuation);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Object invokeSuspend(Object obj) {
                                    this.f50640b = obj;
                                    this.f50641c |= Integer.MIN_VALUE;
                                    return AnonymousClass2.this.emit(null, this);
                                }
                            }

                            public AnonymousClass2(FlowCollector flowCollector, ModelRenderer modelRenderer) {
                                this.f50638b = flowCollector;
                                this.f50639c = modelRenderer;
                            }

                            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r2v10 */
                            /* JADX WARN: Type inference failed for: r2v12 */
                            /* JADX WARN: Type inference failed for: r2v7, types: [boolean] */
                            /* JADX WARN: Type inference failed for: r2v8 */
                            /* JADX WARN: Type inference failed for: r2v9 */
                            /* JADX WARN: Type inference failed for: r6v5, types: [boolean] */
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object emit(Object obj, Continuation continuation) {
                                AnonymousClass1 anonymousClass1;
                                T next;
                                if (continuation instanceof AnonymousClass1) {
                                    anonymousClass1 = (AnonymousClass1) continuation;
                                    int i2 = anonymousClass1.f50641c;
                                    if ((i2 & Integer.MIN_VALUE) != 0) {
                                        anonymousClass1.f50641c = i2 - Integer.MIN_VALUE;
                                    } else {
                                        anonymousClass1 = new AnonymousClass1(continuation);
                                    }
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                                Object obj2 = anonymousClass1.f50640b;
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i3 = anonymousClass1.f50641c;
                                V3 v3 = null;
                                if (i3 == 0) {
                                    ResultKt.b(obj2);
                                    ModelRenderer.ModelEvent modelEvent = (ModelRenderer.ModelEvent) obj;
                                    if ((modelEvent instanceof ModelRenderer.ModelEvent.Move ? (ModelRenderer.ModelEvent.Move) modelEvent : null) != null) {
                                        ModelRenderer modelRenderer = this.f50639c;
                                        ArCore arCore = modelRenderer.d;
                                        Filament filament = modelRenderer.f50624e;
                                        Frame frame = arCore.w;
                                        if (frame == null) {
                                            Intrinsics.h("frame");
                                            throw null;
                                        }
                                        ModelRenderer.ModelEvent.Move move = (ModelRenderer.ModelEvent.Move) modelEvent;
                                        List<HitResult> listHitTest = frame.hitTest(filament.f50580a.getWidth() * move.f50651a.f50573a, filament.f50580a.getHeight() * move.f50651a.f50574b);
                                        listHitTest.getClass();
                                        Iterator<T> it = listHitTest.iterator();
                                        if (it.hasNext()) {
                                            next = it.next();
                                            if (it.hasNext()) {
                                                ?? r2 = ((HitResult) next).getTrackable() instanceof Point;
                                                do {
                                                    T next2 = it.next();
                                                    ?? r6 = ((HitResult) next2).getTrackable() instanceof Point;
                                                    r2 = r2;
                                                    if (r2 < r6) {
                                                        next = next2;
                                                        r2 = r6 == true ? 1 : 0;
                                                    }
                                                } while (it.hasNext());
                                            }
                                        } else {
                                            next = (T) null;
                                        }
                                        HitResult hitResult = next;
                                        if (hitResult != null) {
                                            float[] translation = hitResult.getHitPose().getTranslation();
                                            translation.getClass();
                                            float[] fArr = new V3(translation).f50557a;
                                            v3 = new V3(new float[]{fArr[0], fArr[1] - 0.1f, fArr[2]});
                                        }
                                    }
                                    if (v3 != null) {
                                        anonymousClass1.f50641c = 1;
                                        if (this.f50638b.emit(v3, anonymousClass1) == coroutineSingletons) {
                                            return coroutineSingletons;
                                        }
                                    }
                                } else {
                                    if (i3 != 1) {
                                        md.k("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                    ResultKt.b(obj2);
                                }
                                return Unit.f71739a;
                            }
                        }

                        @Override // kotlinx.coroutines.flow.Flow
                        public final Object f(FlowCollector flowCollector, Continuation continuation) {
                            Object objF = sharedFlowImpl.f(new AnonymousClass2(flowCollector, modelRenderer), continuation);
                            return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                        }
                    };
                    final FilamentAsset filamentAsset = this.d;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.ar.renderer.ModelRenderer.1.1.2
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            ModelRenderer modelRenderer2 = modelRenderer;
                            MutableStateFlow mutableStateFlow = modelRenderer2.f50626h;
                            Unit unit = Unit.f71739a;
                            mutableStateFlow.a(unit);
                            modelRenderer2.f50627i = (V3) obj2;
                            TransformManager transformManager = modelRenderer2.f50624e.f50582c.f28535b;
                            int iC = transformManager.c(filamentAsset.f());
                            M4 m4C = MatrixKt.c();
                            float[] fArr = modelRenderer2.f50627i.f50557a;
                            M4 m4F = MatrixKt.f(MatrixKt.j(m4C, fArr[0], fArr[1], fArr[2]), modelRenderer2.f50628j * 57.295776f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            float f2 = modelRenderer2.f50629k;
                            float[] fArr2 = new float[16];
                            Matrix.scaleM(fArr2, 0, m4F.f50551a, 0, f2, f2, f2);
                            transformManager.g(new M4(fArr2).f50551a, iC);
                            return unit;
                        }
                    };
                    this.f50632b = 1;
                    if (flow.f(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                }
                return Unit.f71739a;
            }
        }

        /* JADX INFO: renamed from: com.vuitton.android.presentation.ar.renderer.ModelRenderer$1$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.ar.renderer.ModelRenderer$1$2", f = "ModelRenderer.kt", l = {147}, m = "invokeSuspend", v = 2)
        final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f50642b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ModelRenderer f50643c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(ModelRenderer modelRenderer, Continuation continuation) {
                super(2, continuation);
                this.f50643c = modelRenderer;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass2(this.f50643c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f50642b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    final ModelRenderer modelRenderer = this.f50643c;
                    SharedFlowImpl sharedFlowImpl = modelRenderer.f50625f;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.ar.renderer.ModelRenderer.1.2.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            Pair pair;
                            ModelEvent modelEvent = (ModelEvent) obj2;
                            boolean z = modelEvent instanceof ModelEvent.Update;
                            ModelRenderer modelRenderer2 = modelRenderer;
                            float f2 = modelRenderer2.f50628j;
                            if (z) {
                                ModelEvent.Update update = (ModelEvent.Update) modelEvent;
                                float fFloor = f2 + update.f50652a;
                                if (fFloor < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    fFloor += ((float) Math.ceil((-fFloor) / 6.2831855f)) * 6.2831855f;
                                } else if (fFloor >= 6.2831855f) {
                                    fFloor -= ((float) Math.floor(fFloor / 6.2831855f)) * 6.2831855f;
                                }
                                pair = new Pair(new Float(fFloor), new Float(modelRenderer2.f50629k * update.f50653b));
                            } else {
                                pair = new Pair(new Float(f2), new Float(modelRenderer2.f50629k));
                            }
                            float fFloatValue = ((Number) pair.f71705b).floatValue();
                            float fFloatValue2 = ((Number) pair.f71706c).floatValue();
                            modelRenderer2.f50628j = fFloatValue;
                            modelRenderer2.f50629k = fFloatValue2;
                            return Unit.f71739a;
                        }
                    };
                    this.f50642b = 1;
                    sharedFlowImpl.getClass();
                    if (SharedFlowImpl.o(sharedFlowImpl, flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                }
                os.d();
                return null;
            }
        }

        /* JADX INFO: renamed from: com.vuitton.android.presentation.ar.renderer.ModelRenderer$1$3, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.ar.renderer.ModelRenderer$1$3", f = "ModelRenderer.kt", l = {163, 165}, m = "invokeSuspend", v = 2)
        final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f50645b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ModelRenderer f50646c;
            public final /* synthetic */ FilamentAsset d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(ModelRenderer modelRenderer, FilamentAsset filamentAsset, Continuation continuation) {
                super(2, continuation);
                this.f50646c = modelRenderer;
                this.d = filamentAsset;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass3(this.f50646c, this.d, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
            
                if (kotlinx.coroutines.flow.SharedFlowImpl.o(r7, r1, r6) == r0) goto L15;
             */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r7) {
                /*
                    r6 = this;
                    kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                    int r1 = r6.f50645b
                    r2 = 0
                    com.vuitton.android.presentation.ar.renderer.ModelRenderer r3 = r6.f50646c
                    r4 = 2
                    r5 = 1
                    if (r1 == 0) goto L1d
                    if (r1 == r5) goto L19
                    if (r1 == r4) goto L15
                    java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                    defpackage.md.k(r6)
                    return r2
                L15:
                    kotlin.ResultKt.b(r7)
                    goto L45
                L19:
                    kotlin.ResultKt.b(r7)
                    goto L30
                L1d:
                    kotlin.ResultKt.b(r7)
                    kotlinx.coroutines.flow.MutableStateFlow r7 = r3.f50626h
                    kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 r1 = new kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1
                    r1.<init>(r7)
                    r6.f50645b = r5
                    java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.p(r1, r6)
                    if (r7 != r0) goto L30
                    goto L44
                L30:
                    kotlinx.coroutines.flow.SharedFlowImpl r7 = r3.g
                    com.vuitton.android.presentation.ar.renderer.ModelRenderer$1$3$1 r1 = new com.vuitton.android.presentation.ar.renderer.ModelRenderer$1$3$1
                    com.google.android.filament.gltfio.FilamentAsset r5 = r6.d
                    r1.<init>()
                    r6.f50645b = r4
                    r7.getClass()
                    kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlinx.coroutines.flow.SharedFlowImpl.o(r7, r1, r6)
                    if (r6 != r0) goto L45
                L44:
                    return r0
                L45:
                    defpackage.os.d()
                    return r2
                */
                throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.ar.renderer.ModelRenderer.AnonymousClass1.AnonymousClass3.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = ModelRenderer.this.new AnonymousClass1(continuation);
            anonymousClass1.f50631c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            CoroutineScope coroutineScope = (CoroutineScope) this.f50631c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f50630b;
            ModelRenderer modelRenderer = ModelRenderer.this;
            if (i2 == 0) {
                ResultKt.b(obj);
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
                ModelRenderer$1$filamentAsset$1 modelRenderer$1$filamentAsset$1 = new ModelRenderer$1$filamentAsset$1(modelRenderer, null);
                this.f50631c = coroutineScope;
                this.f50630b = 1;
                obj = BuildersKt.f(defaultIoScheduler, modelRenderer$1$filamentAsset$1, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            FilamentAsset filamentAsset = (FilamentAsset) obj;
            if (filamentAsset == null) {
                return Unit.f71739a;
            }
            modelRenderer.f50624e.f50586i.g(filamentAsset);
            modelRenderer.m = filamentAsset;
            BuildersKt.c(coroutineScope, null, null, new C02541(modelRenderer, filamentAsset, null), 3);
            BuildersKt.c(coroutineScope, null, null, new AnonymousClass2(modelRenderer, null), 3);
            BuildersKt.c(coroutineScope, null, null, new AnonymousClass3(modelRenderer, filamentAsset, null), 3);
            return Unit.f71739a;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$Companion;", "", "", "CACHE_SUBDIRECTORY_NAME", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent;", "", "Move", "Update", "Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Move;", "Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Update;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class ModelEvent {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Move;", "Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent;", "Lcom/vuitton/android/presentation/ar/arcore/ScreenPosition;", "screenPosition", "<init>", "(Lcom/vuitton/android/presentation/ar/arcore/ScreenPosition;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Move extends ModelEvent {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final ScreenPosition f50651a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Move(ScreenPosition screenPosition) {
                super(null);
                screenPosition.getClass();
                this.f50651a = screenPosition;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Move) && Intrinsics.c(this.f50651a, ((Move) obj).f50651a);
            }

            public final int hashCode() {
                return this.f50651a.hashCode();
            }

            public final String toString() {
                return "Move(screenPosition=" + this.f50651a + ")";
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Update;", "Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent;", "", "rotate", "scale", "<init>", "(FF)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Update extends ModelEvent {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final float f50652a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final float f50653b;

            public Update(float f2, float f3) {
                super(null);
                this.f50652a = f2;
                this.f50653b = f3;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Update)) {
                    return false;
                }
                Update update = (Update) obj;
                return Float.compare(this.f50652a, update.f50652a) == 0 && Float.compare(this.f50653b, update.f50653b) == 0;
            }

            public final int hashCode() {
                return Float.hashCode(this.f50653b) + (Float.hashCode(this.f50652a) * 31);
            }

            public final String toString() {
                return "Update(rotate=" + this.f50652a + ", scale=" + this.f50653b + ")";
            }
        }

        public ModelEvent(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public ModelRenderer(Context context, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, String str, ArCore arCore, Filament filament, DefaultConstructorMarker defaultConstructorMarker) {
        context.getClass();
        requireCachedAppConfigUseCase.getClass();
        str.getClass();
        arCore.getClass();
        filament.getClass();
        this.f50621a = context;
        this.f50622b = requireCachedAppConfigUseCase;
        this.f50623c = str;
        this.d = arCore;
        this.f50624e = filament;
        BufferOverflow bufferOverflow = BufferOverflow.DROP_OLDEST;
        this.f50625f = SharedFlowKt.b(0, 1, bufferOverflow, 1);
        this.g = SharedFlowKt.b(0, 1, bufferOverflow, 1);
        this.f50626h = StateFlowKt.a(null);
        this.f50627i = MatrixKt.f50552a;
        this.f50629k = 1.0f;
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        ContextScope contextScopeA = CoroutineScopeKt.a(MainDispatcherLoader.f75131a);
        this.l = contextScopeA;
        BuildersKt.c(contextScopeA, null, null, new AnonymousClass1(null), 3);
    }
}
